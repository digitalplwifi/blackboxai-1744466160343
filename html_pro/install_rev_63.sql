-- MySQL dump 10.16  Distrib 10.1.45-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Mikrowisp6
-- ------------------------------------------------------
-- Server version	10.1.45-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `afip`
--

DROP TABLE IF EXISTS `afip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` int(6) unsigned zerofill NOT NULL,
  `pdf` text NOT NULL,
  `invoice_num` varchar(50) NOT NULL,
  `cae` varchar(150) NOT NULL,
  `vto` date NOT NULL,
  `barcode` varchar(150) NOT NULL,
  `idfactura` int(8) unsigned zerofill NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `emitido` date NOT NULL,
  `idcredito` int(11) NOT NULL,
  `moneda` int(5) NOT NULL DEFAULT '1',
  `idempresa` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cliente` (`cliente`),
  KEY `idfactura` (`idcredito`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `afip`
--

LOCK TABLES `afip` WRITE;
/*!40000 ALTER TABLE `afip` DISABLE KEYS */;
/*!40000 ALTER TABLE `afip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `afipaccounts`
--

DROP TABLE IF EXISTS `afipaccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afipaccounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `punto_venta` varchar(11) NOT NULL,
  `monotributo` int(1) NOT NULL DEFAULT '0',
  `padron_a5` int(1) NOT NULL DEFAULT '0',
  `demo` int(1) NOT NULL DEFAULT '0',
  `crt` text NOT NULL,
  `llave` text NOT NULL,
  `cuit` varchar(50) NOT NULL,
  `razon` varchar(120) NOT NULL,
  `direccion` text NOT NULL,
  `brutos` bigint(20) NOT NULL,
  `actividad` date NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `afipaccounts`
--

LOCK TABLES `afipaccounts` WRITE;
/*!40000 ALTER TABLE `afipaccounts` DISABLE KEYS */;
INSERT INTO `afipaccounts` VALUES (1,'0001',0,0,0,'','','999991','Empresa 1','Av Empresa 1',100000,'2023-01-01',0),(2,'0002',0,0,0,'','','999992','Empresa 2','Av Empresa 2',200000,'2023-01-01',0),(3,'0003',0,0,0,'','','999993','Empresa 3','Av Empresa 3',300000,'2023-01-01',0),(4,'0004',0,0,0,'','','999994','Empresa 4','Av Empresa 4',400000,'2023-01-01',0),(5,'0005',0,0,0,'','','999995','Empresa 5','Av Empresa 5',500000,'2023-01-01',0);
/*!40000 ALTER TABLE `afipaccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `afiptmp`
--

DROP TABLE IF EXISTS `afiptmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afiptmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factura` int(8) unsigned zerofill NOT NULL,
  `idcliente` int(11) NOT NULL,
  `mail` int(11) NOT NULL,
  `contador` int(3) NOT NULL,
  `logafip` text NOT NULL,
  `idoperacion` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `afiptmp`
--

LOCK TABLES `afiptmp` WRITE;
/*!40000 ALTER TABLE `afiptmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `afiptmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `almacen`
--

DROP TABLE IF EXISTS `almacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `almacen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(6) unsigned zerofill NOT NULL,
  `productoid` int(11) NOT NULL,
  `serial_producto` varchar(30) NOT NULL,
  `mac_producto` varchar(25) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `estado` varchar(14) NOT NULL DEFAULT 'disponible',
  `cantidad` int(11) NOT NULL DEFAULT '1',
  `catid` varchar(20) NOT NULL DEFAULT 'producto',
  `costo` decimal(12,2) NOT NULL,
  `idproveedor` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen`
--

LOCK TABLES `almacen` WRITE;
/*!40000 ALTER TABLE `almacen` DISABLE KEYS */;
/*!40000 ALTER TABLE `almacen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alquileres`
--

DROP TABLE IF EXISTS `alquileres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alquileres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(6) unsigned zerofill NOT NULL,
  `fechaingreso` date NOT NULL,
  `fechaproxima` date NOT NULL,
  `productoid` int(11) NOT NULL,
  `ciclo` int(11) NOT NULL,
  `tipoa` varchar(15) NOT NULL,
  `totalcuota` int(3) NOT NULL,
  `ncuota` int(3) NOT NULL,
  `monto` decimal(12,2) NOT NULL,
  `state` varchar(8) NOT NULL DEFAULT 'activo',
  `idinstall` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `alquiler_cliente` (`tipoa`,`state`,`totalcuota`,`userid`,`monto`,`productoid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alquileres`
--

LOCK TABLES `alquileres` WRITE;
/*!40000 ALTER TABLE `alquileres` DISABLE KEYS */;
/*!40000 ALTER TABLE `alquileres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(150) NOT NULL,
  `url` text NOT NULL,
  `modal` varchar(10) NOT NULL,
  `orden` int(3) NOT NULL,
  `time` int(7) NOT NULL DEFAULT '1500',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (1,'banner-sample.png','https://mikrowisp.net','',1,1500);
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklist`
--

DROP TABLE IF EXISTS `blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `ip` text NOT NULL,
  `fecha` datetime NOT NULL,
  `contador` int(11) NOT NULL,
  `detalles` text NOT NULL,
  `monitor_id` text NOT NULL,
  `report_id` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist`
--

LOCK TABLES `blacklist` WRITE;
/*!40000 ALTER TABLE `blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `botwhatsapp`
--

DROP TABLE IF EXISTS `botwhatsapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `botwhatsapp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` text NOT NULL,
  `tipo` int(11) NOT NULL,
  `accion` int(11) NOT NULL,
  `items` text NOT NULL,
  `disparador` int(11) NOT NULL,
  `mensaje_disparador` text NOT NULL,
  `mensajebody` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `botwhatsapp`
--

LOCK TABLES `botwhatsapp` WRITE;
/*!40000 ALTER TABLE `botwhatsapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `botwhatsapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campos_personalizados`
--

DROP TABLE IF EXISTS `campos_personalizados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campos_personalizados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orden` int(3) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `descripcion` text NOT NULL,
  `combo` text NOT NULL,
  `requerido` varchar(8) NOT NULL,
  `name_mysql` varchar(120) NOT NULL,
  `ancho` varchar(10) NOT NULL,
  `defecto` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campos_personalizados`
--

LOCK TABLES `campos_personalizados` WRITE;
/*!40000 ALTER TABLE `campos_personalizados` DISABLE KEYS */;
INSERT INTO `campos_personalizados` VALUES (1,1,'Asunto','','TÃ­tulo del mensaje','','','asunto','col-sm-6','si'),(2,2,'Fecha del pago','','Cuando realizÃ³ el Pago','','on','fecha','col-sm-6','si'),(3,4,'DescripciÃ³n de pago','','Donde realizÃ³ el Pago','','on','lugar','col-sm-6','si'),(4,3,'Tipo de pago','','Como realizÃ³ el Pago','','on','tipo','col-sm-6','si'),(5,5,'NÂº TransacciÃ³n','','NÃºmero de referencia','','on','transaccion','col-sm-6','si'),(6,6,'Comprobante a Pagar','','Seleccionar comprobante','','','nfactura','col-sm-6','si'),(7,7,'Total Pagado','','monto Pagado','','on','total','col-sm-6','si'),(8,8,'Adjunto','','Adjuntar archivo','','on','adjunto','col-sm-6','si'),(9,100,'Mensaje','','Ingrese un Mensaje','','','mensaje','col-sm-6','si');
/*!40000 ALTER TABLE `campos_personalizados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chats_telegram`
--

DROP TABLE IF EXISTS `chats_telegram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chats_telegram` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `unread` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `tiempos` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats_telegram`
--

LOCK TABLES `chats_telegram` WRITE;
/*!40000 ALTER TABLE `chats_telegram` DISABLE KEYS */;
/*!40000 ALTER TABLE `chats_telegram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cloud`
--

DROP TABLE IF EXISTS `cloud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cloud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(20) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `token` text NOT NULL,
  `upbackup` varchar(2) NOT NULL,
  `uplog` varchar(2) NOT NULL,
  `upvisitadas` varchar(2) NOT NULL,
  `idcarpeta` text NOT NULL,
  `tokenupdate` text NOT NULL,
  `clienteid` varchar(150) NOT NULL,
  `clientesecret` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloud`
--

LOCK TABLES `cloud` WRITE;
/*!40000 ALTER TABLE `cloud` DISABLE KEYS */;
INSERT INTO `cloud` VALUES (1,'dropbox','','','','','','','','',''),(2,'box','','','','','','23573299345,23573218720,23573256565','','',''),(3,'google_drive','','','','','','','','','');
/*!40000 ALTER TABLE `cloud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conexiones`
--

DROP TABLE IF EXISTS `conexiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conexiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) DEFAULT NULL,
  `src` varchar(16) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` varchar(64) NOT NULL,
  `router` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`),
  KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conexiones`
--

LOCK TABLES `conexiones` WRITE;
/*!40000 ALTER TABLE `conexiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `conexiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contratos`
--

DROP TABLE IF EXISTS `contratos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contratos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) unsigned DEFAULT NULL,
  `titulo` varchar(100) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `inicio` date NOT NULL,
  `fin` date NOT NULL,
  `meses` int(2) NOT NULL,
  `html` mediumtext NOT NULL,
  `portal` varchar(2) NOT NULL,
  `operador` int(3) NOT NULL,
  `estado` int(1) NOT NULL,
  `plantilla` int(3) NOT NULL,
  `firmado` date NOT NULL,
  `numero_externo` varchar(30) NOT NULL,
  `logo_contrato` varchar(5) NOT NULL DEFAULT 'on',
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idcliente`),
  KEY `fecha` (`fecha`),
  KEY `inicio` (`inicio`),
  KEY `fin` (`fin`),
  KEY `operador` (`operador`),
  KEY `estado` (`estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contratos`
--

LOCK TABLES `contratos` WRITE;
/*!40000 ALTER TABLE `contratos` DISABLE KEYS */;
/*!40000 ALTER TABLE `contratos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credito`
--

DROP TABLE IF EXISTS `credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(6) unsigned zerofill NOT NULL,
  `idfactura` int(8) unsigned zerofill NOT NULL,
  `fechaingreso` date NOT NULL,
  `fecha_limite` date NOT NULL,
  `operador` int(11) NOT NULL,
  `descripcion` mediumtext NOT NULL,
  `estado` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credito`
--

LOCK TABLES `credito` WRITE;
/*!40000 ALTER TABLE `credito` DISABLE KEYS */;
/*!40000 ALTER TABLE `credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronfactura`
--

DROP TABLE IF EXISTS `cronfactura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cronfactura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `impuesto` varchar(20) NOT NULL,
  `fecha` date NOT NULL,
  `datauser` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronfactura`
--

LOCK TABLES `cronfactura` WRITE;
/*!40000 ALTER TABLE `cronfactura` DISABLE KEYS */;
/*!40000 ALTER TABLE `cronfactura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuponcd`
--

DROP TABLE IF EXISTS `cuponcd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuponcd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `cupon` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuponcd`
--

LOCK TABLES `cuponcd` WRITE;
/*!40000 ALTER TABLE `cuponcd` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuponcd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dp` text NOT NULL,
  `dsp` text NOT NULL,
  `maildp` text NOT NULL,
  `color` varchar(20) NOT NULL,
  `portal` varchar(3) NOT NULL,
  `asuntos` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Soporte tÃ©cnico','Solicite Ayuda tÃ©cnica para solucionar cualquier problema\n\n<ul><li>Lunes a sÃ¡bado:  <b>9am a 6pm</b></li><li>Domingo: <b>Cerrado</b</li></ul>','soporte@miempresa.com','#0099ff','on','Disponibilidad del servicio por falla tÃ©cnica\nLentitud o baja velocidad del servicio\nProblemas con la antena o baja seÃ±al de equipo CPE\nProblemas del servicio por ausencia o falla en potencia Ã³ptica\nProblemas con el router o seÃ±al WIFI\nCambio de clave WIFI\nBloqueo de servicios o accesos a internet\nFalla masiva\nCongelamiento temporal del servicio\nTraslado del servicio\nCambio de condiciones del servicio\nSuspensiÃ³n Injustificada\nCesiÃ³n de contrato\nServicios adicionales\nEquipos en comodato\nTerminaciÃ³n de contrato\nCertificaciones y paz y salvo\nFidelizaciÃ³n\nReclamo sobre reporte a centrales de riesgos\nCambio de periodos de facturaciÃ³n\nReclamo sobre facturaciÃ³n\nDescuento o compensaciÃ³n\nRecurso de reposiciÃ³n\nRecurso de reposiciÃ³n y en subsidio de apelaciÃ³n\nCumplimiento de una orden de la SIC\nSugerencias\nOtras PQ'),(2,'Ventas','Solicite nuevos servicios o cambios en su plan.\n\n<ul><li>Lunes a sÃ¡bado:  <b>9am a 6pm</b></li><li>Domingo: <b>Cerrado</b</li></ul>','ventas@miempresa.com','#10ccac','on','Disponibilidad del servicio por falla tÃ©cnica\nLentitud o baja velocidad del servicio\nProblemas con la antena o baja seÃ±al de equipo CPE\nProblemas del servicio por ausencia o falla en potencia Ã³ptica\nProblemas con el router o seÃ±al WIFI\nCambio de clave WIFI\nBloqueo de servicios o accesos a internet\nFalla masiva\nCongelamiento temporal del servicio\nTraslado del servicio\nCambio de condiciones del servicio\nSuspensiÃ³n Injustificada\nCesiÃ³n de contrato\nServicios adicionales\nEquipos en comodato\nTerminaciÃ³n de contrato\nCertificaciones y paz y salvo\nFidelizaciÃ³n\nReclamo sobre reporte a centrales de riesgos\nCambio de periodos de facturaciÃ³n\nReclamo sobre facturaciÃ³n\nDescuento o compensaciÃ³n\nRecurso de reposiciÃ³n\nRecurso de reposiciÃ³n y en subsidio de apelaciÃ³n\nCumplimiento de una orden de la SIC\nSugerencias\nOtras PQ'),(3,'Quejas y Sugerencias','Texto mostrado para Quejas y Sugerencias','quejas@miempresa.com','#00e6ac','on','Disponibilidad del servicio por falla tÃ©cnica\nLentitud o baja velocidad del servicio\nProblemas con la antena o baja seÃ±al de equipo CPE\nProblemas del servicio por ausencia o falla en potencia Ã³ptica\nProblemas con el router o seÃ±al WIFI\nCambio de clave WIFI\nBloqueo de servicios o accesos a internet\nFalla masiva\nCongelamiento temporal del servicio\nTraslado del servicio\nCambio de condiciones del servicio\nSuspensiÃ³n Injustificada\nCesiÃ³n de contrato\nServicios adicionales\nEquipos en comodato\nTerminaciÃ³n de contrato\nCertificaciones y paz y salvo\nFidelizaciÃ³n\nReclamo sobre reporte a centrales de riesgos\nCambio de periodos de facturaciÃ³n\nReclamo sobre facturaciÃ³n\nDescuento o compensaciÃ³n\nRecurso de reposiciÃ³n\nRecurso de reposiciÃ³n y en subsidio de apelaciÃ³n\nCumplimiento de una orden de la SIC\nSugerencias\nOtras PQ');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dte`
--

DROP TABLE IF EXISTS `dte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `idfactura` int(11) NOT NULL,
  `tipodoc` int(1) NOT NULL,
  `neto` decimal(12,2) NOT NULL,
  `iva` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `token` text NOT NULL,
  `rut` varchar(20) NOT NULL,
  `razon` varchar(150) NOT NULL,
  `folio` int(11) NOT NULL,
  `folio_credito` int(11) NOT NULL,
  `data` text NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idcliente`),
  KEY `idfactura` (`idfactura`),
  KEY `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dte`
--

LOCK TABLES `dte` WRITE;
/*!40000 ALTER TABLE `dte` DISABLE KEYS */;
/*!40000 ALTER TABLE `dte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electronicatmp`
--

DROP TABLE IF EXISTS `electronicatmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `electronicatmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factura` int(8) unsigned zerofill NOT NULL,
  `idcliente` int(11) NOT NULL,
  `mail` int(11) NOT NULL,
  `contador` int(11) NOT NULL,
  `idoperacion` int(11) NOT NULL,
  `api` varchar(20) NOT NULL,
  `tipodoc` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electronicatmp`
--

LOCK TABLES `electronicatmp` WRITE;
/*!40000 ALTER TABLE `electronicatmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `electronicatmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emisores`
--

DROP TABLE IF EXISTS `emisores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emisores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(350) NOT NULL,
  `equipo` varchar(350) NOT NULL,
  `ip` varchar(350) NOT NULL,
  `estado` int(1) NOT NULL,
  `user` text NOT NULL,
  `password` text NOT NULL,
  `access` varchar(3) NOT NULL,
  `alert` varchar(3) NOT NULL DEFAULT 'on',
  `lglt` varchar(350) NOT NULL,
  `alert2` varchar(2) NOT NULL,
  `snmp` int(1) NOT NULL,
  `snmp_comunidad` varchar(50) NOT NULL DEFAULT 'public',
  `snmp_version` int(1) NOT NULL DEFAULT '1',
  `port_web` varchar(8) NOT NULL DEFAULT '80',
  `fabricante` int(1) NOT NULL,
  `correos` text NOT NULL,
  `telefonos` text NOT NULL,
  `state_snmp` int(1) NOT NULL,
  `oid` text NOT NULL,
  `debug` int(1) NOT NULL,
  `personalizados` mediumtext NOT NULL,
  `direccion` text NOT NULL,
  `retraso` int(2) NOT NULL,
  `counterping` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`),
  KEY `emisores_idx_id_nombre` (`id`,`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emisores`
--

LOCK TABLES `emisores` WRITE;
/*!40000 ALTER TABLE `emisores` DISABLE KEYS */;
/*!40000 ALTER TABLE `emisores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricantes`
--

DROP TABLE IF EXISTS `fabricantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabricantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `identificador` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `api` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricantes`
--

LOCK TABLES `fabricantes` WRITE;
/*!40000 ALTER TABLE `fabricantes` DISABLE KEYS */;
INSERT INTO `fabricantes` VALUES (1,'Mikrotik',0,0,1),(2,'Ubiquiti Serie M',1,0,1),(3,'Ubiquiti Serie AC',2,0,1),(4,'Cambium Networks',3,0,1),(5,'Tplink',4,0,0),(6,'Mimosa',5,0,1),(7,'Otro',10,0,0);
/*!40000 ALTER TABLE `fabricantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_electronica_chile`
--

DROP TABLE IF EXISTS `factura_electronica_chile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_electronica_chile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `idfactura` int(11) NOT NULL,
  `tipodoc` int(1) NOT NULL,
  `datasent` text NOT NULL,
  `data` text NOT NULL,
  `neto` decimal(12,2) NOT NULL,
  `iva` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `rut` varchar(20) NOT NULL,
  `razon` varchar(150) NOT NULL,
  `fecha` date NOT NULL,
  `api` varchar(30) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `folio_credito` varchar(100) NOT NULL DEFAULT '0',
  `folio` text NOT NULL,
  `token` text NOT NULL,
  `xml` text NOT NULL,
  `pdf` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idcliente`),
  KEY `idfactura` (`idfactura`),
  KEY `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_electronica_chile`
--

LOCK TABLES `factura_electronica_chile` WRITE;
/*!40000 ALTER TABLE `factura_electronica_chile` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura_electronica_chile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_electronica_colombia`
--

DROP TABLE IF EXISTS `factura_electronica_colombia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_electronica_colombia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `idfactura` int(11) NOT NULL,
  `tipodoc` int(1) NOT NULL,
  `neto` decimal(15,2) NOT NULL,
  `iva` decimal(15,2) NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `nit` varchar(20) NOT NULL,
  `razon` varchar(150) NOT NULL,
  `data` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `api` varchar(30) NOT NULL,
  `estado_anulado` text NOT NULL,
  `datasent` text NOT NULL,
  `cufe` text NOT NULL,
  `estado` varchar(10) NOT NULL,
  `prefijo` varchar(10) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `secuencial` text NOT NULL,
  `mail` int(1) NOT NULL,
  `adjunto` int(1) NOT NULL,
  `debug` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idcliente`),
  KEY `idfactura` (`idfactura`),
  KEY `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_electronica_colombia`
--

LOCK TABLES `factura_electronica_colombia` WRITE;
/*!40000 ALTER TABLE `factura_electronica_colombia` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura_electronica_colombia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_electronica_dominicana`
--

DROP TABLE IF EXISTS `factura_electronica_dominicana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_electronica_dominicana` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `idfactura` int(11) NOT NULL,
  `tipodoc` int(1) NOT NULL,
  `neto` decimal(15,2) NOT NULL,
  `iva` decimal(15,2) NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `rnc` varchar(20) NOT NULL,
  `razon` varchar(150) NOT NULL,
  `data` text NOT NULL,
  `datasent` text NOT NULL,
  `fecha` date NOT NULL,
  `api` varchar(30) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `estado_anulado` varchar(100) NOT NULL,
  `authdoc` varchar(20) NOT NULL,
  `xml` text NOT NULL,
  `pdf` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idcliente`),
  KEY `idfactura` (`idfactura`),
  KEY `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_electronica_dominicana`
--

LOCK TABLES `factura_electronica_dominicana` WRITE;
/*!40000 ALTER TABLE `factura_electronica_dominicana` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura_electronica_dominicana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_electronica_ecuador`
--

DROP TABLE IF EXISTS `factura_electronica_ecuador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_electronica_ecuador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `idfactura` int(11) NOT NULL,
  `neto` decimal(12,2) NOT NULL,
  `iva` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `token` text NOT NULL,
  `ruc` varchar(20) NOT NULL,
  `razon` varchar(150) NOT NULL,
  `nfactura` text NOT NULL,
  `data` text NOT NULL,
  `fecha` date NOT NULL,
  `api` varchar(30) NOT NULL,
  `nfactura_credito` text NOT NULL,
  `data_credito` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idcliente`),
  KEY `idfactura` (`idfactura`),
  KEY `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_electronica_ecuador`
--

LOCK TABLES `factura_electronica_ecuador` WRITE;
/*!40000 ALTER TABLE `factura_electronica_ecuador` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura_electronica_ecuador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_electronica_guatemala`
--

DROP TABLE IF EXISTS `factura_electronica_guatemala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_electronica_guatemala` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `idfactura` int(11) NOT NULL,
  `iva` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `uuid` text NOT NULL,
  `nit` varchar(20) NOT NULL,
  `razon` varchar(150) NOT NULL,
  `nfactura` text NOT NULL,
  `data` text NOT NULL,
  `fecha` date NOT NULL,
  `api` varchar(30) NOT NULL,
  `nfactura_credito` text NOT NULL,
  `data_credito` text NOT NULL,
  `sandbox` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_electronica_guatemala`
--

LOCK TABLES `factura_electronica_guatemala` WRITE;
/*!40000 ALTER TABLE `factura_electronica_guatemala` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura_electronica_guatemala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_electronica_mexico`
--

DROP TABLE IF EXISTS `factura_electronica_mexico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_electronica_mexico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `idfactura` int(11) NOT NULL,
  `tipodoc` int(1) NOT NULL,
  `neto` decimal(12,2) NOT NULL,
  `iva` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `token` text NOT NULL,
  `rut` varchar(20) NOT NULL,
  `razon` varchar(150) NOT NULL,
  `folio` text NOT NULL,
  `folio_credito` text NOT NULL,
  `data` text NOT NULL,
  `fecha` date NOT NULL,
  `api` varchar(30) NOT NULL,
  `estado_anulado` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idcliente`),
  KEY `idfactura` (`idfactura`),
  KEY `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_electronica_mexico`
--

LOCK TABLES `factura_electronica_mexico` WRITE;
/*!40000 ALTER TABLE `factura_electronica_mexico` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura_electronica_mexico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_electronica_panama`
--

DROP TABLE IF EXISTS `factura_electronica_panama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_electronica_panama` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `idfactura` int(11) NOT NULL,
  `tipodoc` int(1) NOT NULL,
  `neto` decimal(15,2) NOT NULL,
  `iva` decimal(15,2) NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `ruc` varchar(20) NOT NULL,
  `razon` varchar(150) NOT NULL,
  `data` text NOT NULL,
  `fecha` date NOT NULL,
  `api` varchar(30) NOT NULL,
  `estado_anulado` text NOT NULL,
  `datasent` text NOT NULL,
  `estado` varchar(50) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `mail` int(1) NOT NULL,
  `debug` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idcliente`),
  KEY `idfactura` (`idfactura`),
  KEY `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_electronica_panama`
--

LOCK TABLES `factura_electronica_panama` WRITE;
/*!40000 ALTER TABLE `factura_electronica_panama` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura_electronica_panama` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_electronica_paraguay`
--

DROP TABLE IF EXISTS `factura_electronica_paraguay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_electronica_paraguay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `idfactura` int(11) NOT NULL,
  `tipodoc` int(1) NOT NULL,
  `datasent` text NOT NULL,
  `data` text NOT NULL,
  `neto` decimal(15,3) NOT NULL,
  `iva` decimal(15,3) NOT NULL,
  `total` decimal(15,3) NOT NULL,
  `ruc` varchar(20) NOT NULL,
  `razon` varchar(150) NOT NULL,
  `fecha` date NOT NULL,
  `api` varchar(30) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `estado_anulado` varchar(100) NOT NULL,
  `numero` text NOT NULL,
  `cdc` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idcliente`),
  KEY `idfactura` (`idfactura`),
  KEY `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_electronica_paraguay`
--

LOCK TABLES `factura_electronica_paraguay` WRITE;
/*!40000 ALTER TABLE `factura_electronica_paraguay` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura_electronica_paraguay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_electronica_peru`
--

DROP TABLE IF EXISTS `factura_electronica_peru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_electronica_peru` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `idfactura` int(11) NOT NULL,
  `tipodoc` int(1) NOT NULL,
  `neto` decimal(12,2) NOT NULL,
  `iva` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `total_inafecta` decimal(12,2) NOT NULL,
  `total_descuento` decimal(12,2) NOT NULL,
  `sunat_description` text NOT NULL,
  `ruc` varchar(20) NOT NULL,
  `razon` varchar(150) NOT NULL,
  `data` text NOT NULL,
  `fecha` date NOT NULL,
  `api` varchar(30) NOT NULL,
  `estado_anulado` text NOT NULL,
  `sunat_note` text NOT NULL,
  `sunat_responsecode` text NOT NULL,
  `sunat_soap_error` text NOT NULL,
  `aceptada_por_sunat` int(1) NOT NULL,
  `send_data` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idcliente`),
  KEY `idfactura` (`idfactura`),
  KEY `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_electronica_peru`
--

LOCK TABLES `factura_electronica_peru` WRITE;
/*!40000 ALTER TABLE `factura_electronica_peru` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura_electronica_peru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturaitems`
--

DROP TABLE IF EXISTS `facturaitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturaitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfactura` int(8) unsigned zerofill NOT NULL,
  `descripcion` text NOT NULL,
  `cantidad` decimal(12,2) NOT NULL DEFAULT '0.00',
  `idalmacen` int(11) NOT NULL,
  `unidades` int(11) NOT NULL DEFAULT '1',
  `impuesto` decimal(4,2) NOT NULL,
  `block` int(1) NOT NULL,
  `impuesto911` decimal(12,2) NOT NULL,
  `clave_invoice` varchar(30) NOT NULL,
  `tipoitem` int(1) NOT NULL,
  `montodescuento` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idfactura` (`idfactura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturaitems`
--

LOCK TABLES `facturaitems` WRITE;
/*!40000 ALTER TABLE `facturaitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturaitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `legal` int(11) NOT NULL,
  `idcliente` int(6) unsigned zerofill NOT NULL,
  `emitido` date NOT NULL,
  `vencimiento` date NOT NULL,
  `pago` date NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `forma` varchar(50) NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'No pagado',
  `tipo` int(1) NOT NULL DEFAULT '1',
  `cobrado` decimal(12,2) NOT NULL,
  `iva_igv` decimal(12,2) NOT NULL,
  `sub_total` decimal(12,2) NOT NULL,
  `impuesto` varchar(5) NOT NULL DEFAULT 'NO',
  `mp_id` varchar(80) NOT NULL,
  `mp_estado` varchar(50) NOT NULL,
  `payu_id` varchar(50) NOT NULL,
  `payu_pdf` mediumtext NOT NULL,
  `payu_tipo` varchar(20) NOT NULL,
  `payu_urlpdf` mediumtext NOT NULL,
  `oxxo_id` varchar(50) NOT NULL,
  `oxxo_referencia` varchar(20) NOT NULL,
  `total_khipu` decimal(12,2) NOT NULL,
  `id_khipu` varchar(30) NOT NULL,
  `url_khipu` text NOT NULL,
  `barcode_cobro_digital` varchar(100) NOT NULL,
  `data_cobro_digital` text NOT NULL,
  `otros_impuestos` text NOT NULL,
  `siro` int(1) NOT NULL,
  `hashsiro` text NOT NULL,
  `siroconcepto` int(1) NOT NULL,
  `barcode_siro` varchar(60) NOT NULL,
  `percepcion_afip` decimal(12,2) NOT NULL,
  `saldo` decimal(12,2) NOT NULL,
  `moneda` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `facturas_idx_estado_idclien_id_cobrado` (`id`,`cobrado`),
  KEY `facturas_idx_estado_idcliente` (`estado`,`idcliente`),
  KEY `facturas_vencimiento` (`vencimiento`),
  KEY `totales_facturas` (`moneda`,`estado`,`vencimiento`),
  KEY `cliente_total` (`estado`,`idcliente`,`total`),
  KEY `buscar_fc_mes` (`tipo`,`idcliente`,`vencimiento`),
  KEY `clientes_vencimiento` (`estado`,`idcliente`,`vencimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firewall`
--

DROP TABLE IF EXISTS `firewall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `firewall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(150) NOT NULL,
  `valor` text NOT NULL,
  `estado` varchar(13) NOT NULL DEFAULT 'activo',
  `nodo` int(11) NOT NULL,
  `tipo` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`),
  KEY `nodo` (`nodo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firewall`
--

LOCK TABLES `firewall` WRITE;
/*!40000 ALTER TABLE `firewall` DISABLE KEYS */;
/*!40000 ALTER TABLE `firewall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formatos`
--

DROP TABLE IF EXISTS `formatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formatos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` mediumtext NOT NULL,
  `tipoaviso` varchar(15) NOT NULL,
  `asuntofactura` varchar(120) NOT NULL,
  `tamano` varchar(10) NOT NULL DEFAULT 'A4',
  `ancho` int(11) NOT NULL DEFAULT '80',
  `alto` int(11) NOT NULL DEFAULT '200',
  `posicion` varchar(5) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tipoaviso` (`tipoaviso`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formatos`
--

LOCK TABLES `formatos` WRITE;
/*!40000 ALTER TABLE `formatos` DISABLE KEYS */;
INSERT INTO `formatos` VALUES (1,'&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Transitional//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd&quot;&gt;\n&lt;html&gt;\n&lt;head&gt;\n	&lt;title&gt;&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;div style=&quot;background-color: #f6f6f6;-webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none;-webkit-text-size-adjust: none;width: 100% !important;height: 100%;line-height: 1.6;margin: 0; padding: 0;font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;box-sizing: border-box;font-size: 14px;&quot;&gt;\n&lt;table class=&quot;body-wrap&quot; style=&quot;background-color: #f6f6f6;width: 100%;&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n			&lt;td style=&quot;display: block !important; max-width: 600px !important;margin: 0 auto !important;clear: both !important;&quot; width=&quot;600&quot;&gt;\n			&lt;div style=&quot;max-width: 600px;margin: 0 auto;display: block;padding: 20px;&quot;&gt;\n			&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot; background: #fff;border: 1px solid #e9e9e9;border-radius: 3px;&quot; width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: middle;font-size: 16px;color: #fff;font-weight: 500;padding: 15px;border-radius: 3px 3px 0 0;border-bottom: 1px solid #e9e9e9;&quot;&gt;&lt;img alt=&quot;Mostrar Logo&quot; src=&quot;{url_logo}&quot; style=&quot;max-height:65px;&quot; /&gt;\n						&lt;div style=&quot;width: 160px;color: #348eda;font-weight: 600;float: right;margin: 10px auto;&quot;&gt;&lt;span style=&quot;color:#339999;&quot;&gt;AVISO FACTURA&lt;/span&gt;&lt;/div&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: top;padding: 25px;&quot;&gt;\n						&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n							&lt;tbody&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0px;&quot;&gt;Querido(a) &amp;nbsp;&lt;strong&gt;{nombre_cliente},&lt;/strong&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 10px;&quot;&gt;\n									&lt;p&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Se trata de un aviso de cobro de la factura&amp;nbsp;N&amp;deg; {nfactura}&amp;nbsp;que fue generada el&amp;nbsp;&amp;nbsp;{emitido}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Factura N&amp;ordm;:&lt;/strong&gt; {nfactura}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Monto a Pagar:&lt;/strong&gt; {total}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Fecha de Vencimiento:&lt;/strong&gt; {vencimiento}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Fecha vencimiento:&lt;/strong&gt; {corte}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Lugares de Pago:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n\n									&lt;ul&gt;\n										&lt;li&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Oficinas de Recaudo o Pago Presencial:&amp;nbsp;&lt;/strong&gt;Para ver&amp;nbsp;un listado actualizado de nuestras&amp;nbsp;oficinas o puntos de recaudo auturizados, visite nuestra web.&lt;/span&gt;&lt;/li&gt;\n										&lt;li&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Transferencia o por&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;Banco:&lt;/strong&gt;&amp;nbsp;Recordamos enviar colilla de transferencia o consignaci&amp;oacute;n al correo&amp;nbsp;facturacion@empresa.net&amp;nbsp;o enviarlo desde area de clientes. Cuenta de&amp;nbsp;Ahorros banco No.&amp;nbsp;&lt;strong&gt;1234556678&lt;/strong&gt;, Cuenta de Ahorros.&lt;/span&gt;&lt;/li&gt;\n										&lt;li&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Para ingresar al &amp;Aacute;rea de Clientes desde nuestra red y ver&amp;nbsp;su estado de cuenta&amp;nbsp;click en el Bot&amp;oacute;n &lt;strong&gt;&amp;quot;Ingresar a Mi cuenta&amp;quot;&lt;/strong&gt;.&lt;/span&gt;&lt;/li&gt;\n										&lt;li&gt;\n										&lt;p&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Si&amp;nbsp;el ingreso no es autom&amp;aacute;tico puede usar sus datos de acceso:&lt;/span&gt;&lt;/p&gt;\n										&lt;/li&gt;\n									&lt;/ul&gt;\n\n									&lt;div style=&quot;width: 100%;border: 1px solid #348eda;border-radius: 5px;&quot;&gt;\n									&lt;div style=&quot;width: 100%;text-align:center;background: #348eda;color: #FFF;font-weight: bold;border-radius: 3px 3px 0 0px;height: 25px;vertical-align: middle;&quot;&gt;Datos de Acceso &amp;aacute;rea clientes&lt;/div&gt;\n\n									&lt;p style=&quot;line-height: 8px;margin-left: 20px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Usuario:&lt;/strong&gt; {id_cliente}&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;margin-left: 20px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Contrase&amp;ntilde;a:&lt;/strong&gt; {codigo_cliente}&lt;/span&gt;&lt;/p&gt;\n									&lt;/div&gt;\n									&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 20px;text-align: center;&quot;&gt;&lt;a href=&quot;http://{url_portal}&quot; style=&quot;text-decoration: none; color: #FFF;background-color: #348eda;  border: solid #348eda;border-width: 8px 15px;line-height: 1.5;font-weight: bold; text-align: center;cursor: pointer;display: inline-block;border-radius: 5px;text-transform: capitalize;&quot; target=&quot;_blank&quot;&gt;Ingresar A mi cuenta&lt;/a&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 20px;&quot;&gt;&lt;span style=&quot;color:#808080;&quot;&gt;&lt;em&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;El ingreso debe hacerse autom&amp;aacute;tico desde el bot&amp;oacute;n &amp;quot;Mi cuenta&amp;quot; si est&amp;aacute; dentro de nuestra red.&lt;/span&gt;&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n							&lt;/tbody&gt;\n						&lt;/table&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n\n			&lt;div style=&quot;width: 100%;clear: both;color: #999;padding: 20px;&quot;&gt;\n			&lt;table width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td class=&quot;aligncenter&quot; style=&quot;vertical-align: top; padding: 0px 0px 20px; font-size: 12px;&quot;&gt;&lt;strong&gt;Nota:&lt;/strong&gt;&amp;nbsp;No responda este correo, Cualquier consulta debe hacerlo &amp;nbsp;ingresando a su cuenta.&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n			&lt;/div&gt;\n			&lt;/div&gt;\n			&lt;/td&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;\n&lt;/body&gt;\n&lt;/html&gt;\n','newfactura','Nueva Factura Generada','',0,0,'',''),(2,'<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html>\n<head>\n	<title></title>\n</head>\n<body>\n<div style=\"background-color: #f6f6f6;-webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none;-webkit-text-size-adjust: none;width: 100% !important;height: 100%;line-height: 1.6;margin: 0; padding: 0;font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;box-sizing: border-box;font-size: 14px;\">\n<table class=\"body-wrap\" style=\"background-color: #f6f6f6;width: 100%;\">\n	<tbody>\n		<tr>\n			<td>&nbsp;</td>\n			<td style=\"display: block !important; max-width: 600px !important;margin: 0 auto !important;clear: both !important;\" width=\"600\">\n			<div style=\"max-width: 600px;margin: 0 auto;display: block;padding: 20px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" style=\" background: #fff;border: 1px solid #e9e9e9;border-radius: 3px;\" width=\"100%\">\n				<tbody>\n					<tr>\n						<td style=\"vertical-align: middle;font-size: 16px;color: #fff;font-weight: 500;padding: 15px;border-radius: 3px 3px 0 0;border-bottom: 1px solid #e9e9e9;\"><img alt=\"Mostrar Logo\" src=\"{url_logo}\" style=\"max-height:65px;\" />\n						<div style=\"width: auto;color: #348eda;font-weight: 600;float: right;margin: 10px auto;\"><span style=\"font-size:14px;\"><span style=\"color:#66cccc;\">Bienvenido a {nombre_empresa}</span></span></div>\n						</td>\n					</tr>\n					<tr>\n						<td style=\"vertical-align: top;padding: 25px;\">\n						<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n							<tbody>\n								<tr>\n									<td style=\"vertical-align: top;padding: 0px;\">Querido(a) &nbsp;<strong>{nombre_cliente}</strong></td>\n								</tr>\n								<tr>\n									<td style=\"vertical-align: top;padding: 0 0 10px;\">\n									<p><span style=\"font-size:12px;\">Perm&iacute;tame saludarlo(a) por este medio y de la misma forma agradecerle de manera muy especial&nbsp;su amable preferencia, en&nbsp;<strong>{nombre_empresa}</strong>&nbsp;queremos brindarle la mejor de las atenciones y darle la&nbsp;mas cordial bienvenida a nuestros Servicios.&nbsp;</span></p>\n\n									<p><span style=\"font-size:12px;\">Para su comodidad contamos con portal para el cliente, donde puede revisar sus facturas, solicitar soporte, actualizar sus datos de contacto entre otras operaciones.</span></p>\n\n									<div style=\"width: 100%;border: 1px solid #348eda;border-radius: 5px;\">\n									<div style=\"width: 100%;text-align:center;background: #348eda;color: #FFF;font-weight: bold;border-radius: 3px 3px 0 0px;height: 25px;vertical-align: middle;\">Datos de Acceso &aacute;rea clientes</div>\n\n									<p style=\"line-height: 8px;margin-left: 20px;\"><span style=\"font-size:12px;\"><strong>Usuario:</strong> {id_cliente}</span></p>\n\n									<p style=\"line-height: 8px;margin-left: 20px;\"><span style=\"font-size:12px;\"><strong>Contrase&ntilde;a:</strong> {codigo_cliente}</span></p>\n									</div>\n									</td>\n								</tr>\n								<tr>\n									<td style=\"vertical-align: top;padding: 0 0 20px;text-align: center;\"><a href=\"http://{url_portal}\" style=\"text-decoration: none; color: #FFF;background-color: #348eda;  border: solid #348eda;border-width: 8px 15px;line-height: 1.5;font-weight: bold; text-align: center;cursor: pointer;display: inline-block;border-radius: 5px;text-transform: capitalize;\" target=\"_blank\">Ingresar A mi cuenta</a></td>\n								</tr>\n								<tr>\n									<td style=\"vertical-align: top;padding: 0 0 20px;\"><span style=\"color:#808080;\"><em><span style=\"font-size:12px;\">El ingreso debe hacerse autom&aacute;tico desde el bot&oacute;n &quot;Mi cuenta&quot; si est&aacute; dentro de nuestra red.</span></em></span></td>\n								</tr>\n							</tbody>\n						</table>\n						</td>\n					</tr>\n				</tbody>\n			</table>\n\n			<div style=\"width: 100%;clear: both;color: #999;padding: 20px;\">\n			<table width=\"100%\">\n				<tbody>\n					<tr>\n						<td class=\"aligncenter\" style=\"vertical-align: top; padding: 0px 0px 20px; font-size: 12px;\"><strong>Nota:</strong>&nbsp;No responda este correo, Cualquier consulta debe hacerlo &nbsp;ingresando a su cuenta.</td>\n					</tr>\n				</tbody>\n			</table>\n			</div>\n			</div>\n			</td>\n			<td>&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n</div>\n</body>\n</html>\n','newuser','Bienvenidos a ISP','A4',80,200,'',''),(3,'<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html>\n<head>\n	<title></title>\n</head>\n<body>\n<div style=\"background-color: #f6f6f6;-webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none;-webkit-text-size-adjust: none;width: 100% !important;height: 100%;line-height: 1.6;margin: 0; padding: 0;font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;box-sizing: border-box;font-size: 14px;\">\n<table class=\"body-wrap\" style=\"background-color: #f6f6f6;width: 100%;\">\n	<tbody>\n		<tr>\n			<td>&nbsp;</td>\n			<td style=\"display: block !important; max-width: 600px !important;margin: 0 auto !important;clear: both !important;\" width=\"600\">\n			<div style=\"max-width: 600px;margin: 0 auto;display: block;padding: 20px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" style=\" background: #fff;border: 1px solid #e9e9e9;border-radius: 3px;\" width=\"100%\">\n				<tbody>\n					<tr>\n						<td style=\"vertical-align: middle;font-size: 16px;color: #fff;font-weight: 500;padding: 15px;border-radius: 3px 3px 0 0;border-bottom: 1px solid #e9e9e9;\"><img alt=\"Mostrar Logo\" src=\"{url_logo}\" style=\"max-height:65px;\" />\n						<div style=\"width: 160px;color: #348eda;font-weight: 600;float: right;margin: 10px auto;\">TICKET SOPORTE</div>\n						</td>\n					</tr>\n					<tr>\n						<td style=\"vertical-align: top;padding: 25px;\">\n						<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n							<tbody>\n								<tr>\n									<td style=\"vertical-align: top;padding: 0px;\">Hola&nbsp;<strong>{nombre_cliente},</strong></td>\n								</tr>\n								<tr>\n									<td style=\"vertical-align: top;padding: 0 0 10px;\">\n									<p><span style=\"font-size:12px;\">Gracias por contactar con nuestro equipo de soporte. Un Ticket de ayuda se ha abierto para su solicitud. Se le notificar&aacute; &nbsp;la respuesta por correo electr&oacute;nico. Los detalles de su ticket se muestran abajo.</span></p>\n\n									<p style=\"line-height: 8px;\"><span style=\"font-size:12px;\"><strong>Asunto:</strong> {asunto_ticket}.</span></p>\n\n									<p style=\"line-height: 8px;\"><span style=\"font-size:12px;\"><strong>N&ordm; Ticket:</strong> {id_ticket}.</span></p>\n\n									<p style=\"line-height: 8px;\"><span style=\"font-size:12px;\"><strong>Mensaje:</strong></span></p>\n									<span style=\"color:#444444;\"><span style=\"font-size:12px;\">{mensaje_ticket}</span></span></td>\n								</tr>\n								<tr>\n									<td style=\"vertical-align: top;padding: 0 0 20px;\"><a href=\"http://{url_portal}\" style=\"text-decoration: none; color: #FFF;background-color: #348eda;  border: solid #348eda;border-width: 8px 15px;line-height: 1.5;font-weight: bold; text-align: center;cursor: pointer;display: inline-block;border-radius: 5px;text-transform: capitalize;\" target=\"_blank\">Ingresar A mi cuenta</a></td>\n								</tr>\n								<tr>\n									<td style=\"vertical-align: top;padding: 0 0 20px;\"><span style=\"color:#808080;\"><em><span style=\"font-size:12px;\">El ingreso debe hacerse autom&aacute;tico desde el bot&oacute;n &quot;Mi cuenta&quot; si est&aacute; dentro de nuestra red.</span></em></span></td>\n								</tr>\n							</tbody>\n						</table>\n						</td>\n					</tr>\n				</tbody>\n			</table>\n\n			<div style=\"width: 100%;clear: both;color: #999;padding: 20px;\">\n			<table width=\"100%\">\n				<tbody>\n					<tr>\n						<td class=\"aligncenter\" style=\"vertical-align: top; padding: 0px 0px 20px; font-size: 12px;\"><strong>Nota:</strong>&nbsp;No responda este correo, puede responder el ticket &nbsp;ingresando a su cuenta.</td>\n					</tr>\n				</tbody>\n			</table>\n			</div>\n			</div>\n			</td>\n			<td>&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n</div>\n</body>\n</html>\n','newsoporte','[Ticket ID: #{id_ticket} - Nuevo Ticket de soporte]','A4',80,200,'',''),(4,'<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html>\n<head>\n	<title></title>\n</head>\n<body>\n<div style=\"background-color: #f6f6f6;-webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none;-webkit-text-size-adjust: none;width: 100% !important;height: 100%;line-height: 1.6;margin: 0; padding: 0;font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;box-sizing: border-box;font-size: 14px;\">\n<table class=\"body-wrap\" style=\"background-color: #f6f6f6;width: 100%;\">\n	<tbody>\n		<tr>\n			<td>&nbsp;</td>\n			<td style=\"display: block !important; max-width: 600px !important;margin: 0 auto !important;clear: both !important;\" width=\"600\">\n			<div style=\"max-width: 600px;margin: 0 auto;display: block;padding: 20px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" style=\" background: #fff;border: 1px solid #e9e9e9;border-radius: 3px;\" width=\"100%\">\n				<tbody>\n					<tr>\n						<td style=\"vertical-align: middle;font-size: 16px;color: #fff;font-weight: 500;padding: 15px;border-radius: 3px 3px 0 0;border-bottom: 1px solid #e9e9e9;\"><img alt=\"Mostrar Logo\" src=\"{url_logo}\" style=\"max-height:65px;\" />\n						<div style=\"width: 160px;color: #348eda;font-weight: 600;float: right;margin: 10px auto;\">TICKET SOPORTE</div>\n						</td>\n					</tr>\n					<tr>\n						<td style=\"vertical-align: top;padding: 25px;\">\n						<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n							<tbody>\n								<tr>\n									<td style=\"vertical-align: top;padding: 0px;\">Hola&nbsp;<strong>{nombre_cliente},</strong></td>\n								</tr>\n								<tr>\n									<td style=\"vertical-align: top;padding: 0 0 10px;\">\n									<p><span style=\"font-size:12px;\">Gracias por contactar con nuestro equipo de soporte. Hemos enviado una respuesta a su tciket, los detalles de su ticket se muestran abajo.</span></p>\n\n									<p style=\"line-height: 8px;\"><span style=\"font-size:12px;\"><strong>Asunto:</strong> {asunto_ticket}.</span></p>\n\n									<p style=\"line-height: 8px;\"><span style=\"font-size:12px;\"><strong>N&ordm; Ticket:</strong> {id_ticket}.</span></p>\n\n									<p style=\"line-height: 8px;\"><span style=\"font-size:12px;\"><strong>Respuesta:</strong></span></p>\n									<span style=\"color:#444444;\"><span style=\"font-size:12px;\">{mensaje_ticket}</span></span></td>\n								</tr>\n								<tr>\n									<td style=\"vertical-align: top;padding: 0 0 20px;\"><a href=\"http://{url_portal}\" style=\"text-decoration: none; color: #FFF;background-color: #348eda;  border: solid #348eda;border-width: 8px 15px;line-height: 1.5;font-weight: bold; text-align: center;cursor: pointer;display: inline-block;border-radius: 5px;text-transform: capitalize;\" target=\"_blank\">Ingresar A mi cuenta</a></td>\n								</tr>\n								<tr>\n									<td style=\"vertical-align: top;padding: 0 0 20px;\"><span style=\"color:#808080;\"><em><span style=\"font-size:12px;\">El ingreso debe hacerse autom&aacute;tico desde el bot&oacute;n &quot;Mi cuenta&quot; si est&aacute; dentro de nuestra red.</span></em></span></td>\n								</tr>\n							</tbody>\n						</table>\n						</td>\n					</tr>\n				</tbody>\n			</table>\n\n			<div style=\"width: 100%;clear: both;color: #999;padding: 20px;\">\n			<table width=\"100%\">\n				<tbody>\n					<tr>\n						<td class=\"aligncenter\" style=\"vertical-align: top; padding: 0px 0px 20px; font-size: 12px;\"><strong>Nota:</strong>&nbsp;No responda este correo, puede responder el ticket &nbsp;ingresando a su cuenta.</td>\n					</tr>\n				</tbody>\n			</table>\n			</div>\n			</div>\n			</td>\n			<td>&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n</div>\n</body>\n</html>\n','replysoporte','[Ticket ID: #{id_ticket} - Respuesta Ticket de soporte]','A4',80,200,'',''),(5,'&lt;!DOCTYPE html&gt;\n&lt;html lang=&quot;en&quot;&gt;&lt;!--&lt;![endif]--&gt;\n&lt;head&gt;&lt;meta charset=&quot;utf-8&quot; /&gt;\n	&lt;title&gt;Servicio Suspendido&lt;/title&gt;\n	&lt;meta content=&quot;width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no&quot; name=&quot;viewport&quot; /&gt;&lt;meta content=&quot;&quot; name=&quot;description&quot; /&gt;&lt;meta content=&quot;&quot; name=&quot;author&quot; /&gt;&lt;!-- ================== BEGIN BASE CSS STYLE ================== --&gt;\n	&lt;link href=&quot;../avisos/assets/plugins/bootstrap/css/bootstrap.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/plugins/font-awesome/css/font-awesome.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/css/animate.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/css/style.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/css/style-responsive.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/css/theme/default.css&quot; id=&quot;theme&quot; rel=&quot;stylesheet&quot; /&gt;&lt;!-- ================== END BASE CSS STYLE ================== --&gt;&lt;!-- ================== BEGIN BASE JS ================== --&gt;&lt;script src=&quot;../avisos/assets/plugins/pace/pace.min.js&quot;&gt;&lt;/script&gt;&lt;!-- ================== END BASE JS ================== --&gt;\n&lt;/head&gt;\n&lt;body data-offset=&quot;51&quot; data-spy=&quot;scroll&quot; data-target=&quot;#header-navbar&quot;&gt;&lt;!-- begin #page-container --&gt;\n&lt;div class=&quot;fade in&quot; id=&quot;page-container&quot;&gt;&lt;!-- begin #header --&gt;\n&lt;div class=&quot;header navbar navbar-default navbar-fixed-top&quot; id=&quot;header&quot;&gt;&lt;!-- begin container --&gt;\n&lt;div class=&quot;container&quot;&gt;&lt;!-- begin navbar-header --&gt;\n&lt;div class=&quot;navbar-header&quot;&gt;&lt;button class=&quot;navbar-toggle collapsed&quot; data-target=&quot;#header-navbar&quot; data-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;&lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt; &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt; &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt;&lt;/button&gt;&lt;a class=&quot;navbar-brand&quot; style=&quot;padding: 5px;&quot;&gt;&lt;img class=&quot;logo-admin&quot; src=&quot;images/logo.png&quot; style=&quot;height:40px; width:auto&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\n&lt;!-- end navbar-header --&gt;&lt;!-- begin navbar-collapse --&gt;\n\n&lt;div class=&quot;collapse navbar-collapse&quot; id=&quot;header-navbar&quot;&gt;\n&lt;ul class=&quot;nav navbar-nav navbar-right&quot;&gt;\n	&lt;li&gt;&lt;a data-click=&quot;scroll-to-target&quot; href=&quot;#home&quot;&gt;&lt;i class=&quot;fa fa-bell-o fa-lg&quot;&gt;&lt;/i&gt; AVISO&lt;/a&gt;&lt;/li&gt;\n	&lt;li&gt;&lt;a data-click=&quot;scroll-to-target&quot; href=&quot;#facturas&quot;&gt;&lt;i class=&quot;fa fa-file-text-o fa-lg&quot;&gt;&lt;/i&gt; MIS FACTURAS&lt;/a&gt;&lt;/li&gt;\n	&lt;li&gt;&lt;a data-click=&quot;scroll-to-target&quot; href=&quot;#dondepagar&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart fa-lg&quot;&gt;&lt;/i&gt; &amp;iquest;DONDE PAGAR?&lt;/a&gt;&lt;/li&gt;\n&lt;/ul&gt;\n&lt;/div&gt;\n&lt;!-- end navbar-collapse --&gt;&lt;/div&gt;\n&lt;!-- end container --&gt;&lt;/div&gt;\n&lt;!-- end #header --&gt;&lt;!-- begin #aviso --&gt;\n\n&lt;div class=&quot;content has-bg home&quot; id=&quot;home&quot; style=&quot;height:500px&quot;&gt;&lt;!-- begin content-bg --&gt;\n&lt;div class=&quot;content-bg&quot;&gt;&lt;img alt=&quot;aviso&quot; src=&quot;../avisos/assets/img/home-bg.jpg&quot; /&gt;&lt;/div&gt;\n&lt;!-- end content-bg --&gt;&lt;!-- begin container --&gt;\n\n&lt;div class=&quot;container home-content&quot; style=&quot;max-width: 750px;&quot;&gt;\n&lt;h1 style=&quot;color: #ff6969;&quot;&gt;&lt;i aria-hidden=&quot;true&quot; class=&quot;fa fa-lock&quot;&gt;&lt;/i&gt; Servicio Suspendido&lt;/h1&gt;\n\n&lt;h4 style=&quot;color: #14bfbf;&quot;&gt;Estimado cliente &lt;b&gt;{nombre_cliente},&lt;/b&gt;&lt;/h4&gt;\n\n&lt;h5 style=&quot;font-size: 16px;font-weight: 400;&quot;&gt;Disculpe las molestias que esto le pueda ocacionar, su conexion a Internet se encuentra suspendida porque en nuestro sistema aun no se ha registrado su pago&lt;br /&gt;\nAgradecemos su comprensi&amp;oacute;n, si tiene alg&amp;uacute;n inconveniente con su pago no dude en informarnos.&lt;br /&gt;\nPor favor notificarnos su pago a trav&amp;eacute;s de nuestros tel&amp;eacute;fonos: 99999999 - 88888888 para reactivar su servicio inmediatamente.&lt;/h5&gt;\n&lt;a class=&quot;btn btn-theme&quot; data-click=&quot;scroll-to-target&quot; href=&quot;#facturas&quot;&gt;&lt;i class=&quot;fa fa-file-text-o fa-lg&quot;&gt;&lt;/i&gt; Mis Facturas&lt;/a&gt; &lt;a class=&quot;btn btn-outline&quot; data-click=&quot;scroll-to-target&quot; href=&quot;#dondepagar&quot;&gt;&lt;i class=&quot;fa fa-street-view fa-lg&quot;&gt;&lt;/i&gt; Luagres de pago&lt;/a&gt;&lt;/div&gt;\n&lt;!-- end container --&gt;&lt;/div&gt;\n&lt;!-- end #aviso --&gt;&lt;!-- beign #facturas --&gt;\n\n&lt;div class=&quot;content&quot; data-scrollview=&quot;true&quot; id=&quot;facturas&quot;&gt;&lt;!-- begin container --&gt;\n&lt;div class=&quot;container&quot; style=&quot;min-height: 200px&quot;&gt;\n&lt;h2 class=&quot;content-title&quot;&gt;Mis Facturas&lt;/h2&gt;\n\n&lt;p class=&quot;content-desc&quot;&gt;A continuaci&amp;oacute;n detallamos todas las facturas no pagadas.&lt;/p&gt;\n&lt;!-- begin row --&gt;\n\n&lt;div class=&quot;row&quot;&gt;{facturas}&lt;/div&gt;\n&lt;!-- end row --&gt;&lt;/div&gt;\n&lt;!-- end container --&gt;&lt;/div&gt;\n&lt;!-- end #aviso --&gt;&lt;!-- beign #dondepagar --&gt;\n\n&lt;div class=&quot;content&quot; data-scrollview=&quot;true&quot; id=&quot;dondepagar&quot;&gt;&lt;!-- begin container --&gt;\n&lt;div class=&quot;container&quot; style=&quot;min-height: 400px&quot;&gt;\n&lt;h2 class=&quot;content-title&quot;&gt;&amp;iquest;D&amp;oacute;nde pagar?&lt;/h2&gt;\n\n&lt;p class=&quot;content-desc&quot;&gt;A continuaci&amp;oacute;n detallamos todas las formas y lugares donde pueda pagar sus facturas.&lt;/p&gt;\n&lt;!-- begin row --&gt;\n\n&lt;div class=&quot;row&quot;&gt;&lt;!-- begin col-4 --&gt;\n&lt;div class=&quot;col-md-4 col-sm-4&quot;&gt;\n&lt;div class=&quot;service&quot;&gt;\n&lt;div class=&quot;icon bg-theme&quot; data-animation=&quot;true&quot; data-animation-type=&quot;bounceIn&quot;&gt;&lt;i class=&quot;fa fa-paypal&quot;&gt;&lt;/i&gt;&lt;/div&gt;\n\n&lt;div class=&quot;info&quot;&gt;\n&lt;h4 class=&quot;title&quot;&gt;Paypal&lt;/h4&gt;\n\n&lt;p class=&quot;desc&quot;&gt;Puede realizar el pago con su tarjeta de cr&amp;eacute;dito/debito y se activar&amp;aacute; su servicio al finalizar la transacci&amp;oacute;n.&lt;/p&gt;\n&lt;a class=&quot;btn btn-sm btn-success&quot; href=&quot;{url_portal}&quot;&gt;pagar ahora&lt;/a&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- end col-4 --&gt;&lt;!-- begin col-4 --&gt;\n\n&lt;div class=&quot;col-md-4 col-sm-4&quot;&gt;\n&lt;div class=&quot;service&quot;&gt;\n&lt;div class=&quot;icon bg-theme&quot; data-animation=&quot;true&quot; data-animation-type=&quot;bounceIn&quot;&gt;&lt;i class=&quot;fa fa-cc-visa&quot;&gt;&lt;/i&gt;&lt;/div&gt;\n\n&lt;div class=&quot;info&quot;&gt;\n&lt;h4 class=&quot;title&quot;&gt;MercadoPago&lt;/h4&gt;\n\n&lt;p class=&quot;desc&quot;&gt;Puede realizar el pago con su tarjeta de cr&amp;eacute;dito/debito,depositos en banco y se activar&amp;aacute; su servicio al finalizar la transacci&amp;oacute;n.&lt;/p&gt;\n&lt;a class=&quot;btn btn-sm btn-success&quot; href=&quot;{url_portal}&quot;&gt;pagar ahora&lt;/a&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- end col-4 --&gt;&lt;!-- begin col-4 --&gt;\n\n&lt;div class=&quot;col-md-4 col-sm-4&quot;&gt;\n&lt;div class=&quot;service&quot;&gt;\n&lt;div class=&quot;icon bg-theme&quot; data-animation=&quot;true&quot; data-animation-type=&quot;bounceIn&quot;&gt;&lt;i class=&quot;fa fa-barcode&quot;&gt;&lt;/i&gt;&lt;/div&gt;\n\n&lt;div class=&quot;info&quot;&gt;\n&lt;h4 class=&quot;title&quot;&gt;Oxxo&lt;/h4&gt;\n\n&lt;p class=&quot;desc&quot;&gt;Puede pagar su servicio en cualquier tienda oxxo del pa&amp;iacute;s y se activar&amp;aacute; su servicio al finalizar la transacci&amp;oacute;n.&lt;/p&gt;\n&lt;a class=&quot;btn btn-sm btn-success&quot; href=&quot;{url_portal}&quot;&gt;pagar ahora&lt;/a&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- end col-4 --&gt;&lt;/div&gt;\n&lt;!-- end row --&gt;&lt;/div&gt;\n&lt;!-- end container --&gt;&lt;/div&gt;\n&lt;!-- end #dondepgar --&gt;&lt;/div&gt;\n&lt;!-- end #page-container --&gt;&lt;!-- ================== BEGIN BASE JS ================== --&gt;&lt;script src=&quot;../avisos/assets/plugins/jquery/jquery-1.9.1.min.js&quot;&gt;&lt;/script&gt;&lt;script src=&quot;../avisos/assets/plugins/jquery/jquery-migrate-1.1.0.min.js&quot;&gt;&lt;/script&gt;&lt;script src=&quot;../avisos/assets/plugins/bootstrap/js/bootstrap.min.js&quot;&gt;&lt;/script&gt;&lt;!--[if lt IE 9]&gt;\n		&lt;script src=&quot;../avisos/assets/crossbrowserjs/html5shiv.js&quot;&gt;&lt;/script&gt;\n		&lt;script src=&quot;../avisos/assets/crossbrowserjs/respond.min.js&quot;&gt;&lt;/script&gt;\n		&lt;script src=&quot;../avisos/assets/crossbrowserjs/excanvas.min.js&quot;&gt;&lt;/script&gt;\n	&lt;![endif]--&gt;&lt;script src=&quot;../avisos/assets/plugins/jquery-cookie/jquery.cookie.js&quot;&gt;&lt;/script&gt;&lt;script src=&quot;../avisos/assets/plugins/scrollMonitor/scrollMonitor.js&quot;&gt;&lt;/script&gt;&lt;script src=&quot;../avisos/assets/js/apps.min.js&quot;&gt;&lt;/script&gt;&lt;!-- ================== END BASE JS ================== --&gt;&lt;script&gt;    \n	    $(document).ready(function() {\nApp.init();\n	    });\n	&lt;/script&gt;&lt;/body&gt;\n&lt;/html&gt;\n','avisocorte','Aviso de Corte','A4',0,0,'',''),(6,'&lt;!DOCTYPE html&gt;\n&lt;html lang=&quot;es&quot;&gt;&lt;!--&lt;![endif]--&gt;\n&lt;head&gt;&lt;meta charset=&quot;utf-8&quot; /&gt;\n	&lt;title&gt;:-:-: AVISO :-:-:&lt;/title&gt;\n	&lt;meta content=&quot;width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no&quot; name=&quot;viewport&quot; /&gt;&lt;meta content=&quot;&quot; name=&quot;description&quot; /&gt;&lt;meta content=&quot;&quot; name=&quot;author&quot; /&gt;&lt;!-- ================== BEGIN BASE CSS STYLE ================== --&gt;\n	&lt;link href=&quot;../avisos/assets/plugins/bootstrap/css/bootstrap.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/plugins/font-awesome/css/font-awesome.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/css/animate.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/css/style.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/css/style-responsive.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/css/theme/default.css&quot; id=&quot;theme&quot; rel=&quot;stylesheet&quot; /&gt;&lt;!-- ================== END BASE CSS STYLE ================== --&gt;&lt;!-- ================== BEGIN BASE JS ================== --&gt;&lt;script src=&quot;../avisos/assets/plugins/pace/pace.min.js&quot;&gt;&lt;/script&gt;&lt;!-- ================== END BASE JS ================== --&gt;&lt;!-- end #page-container --&gt;&lt;!-- ================== BEGIN BASE JS ================== --&gt;&lt;script src=&quot;../avisos/assets/plugins/jquery/jquery-1.9.1.min.js&quot;&gt;&lt;/script&gt;&lt;script src=&quot;../avisos/assets/plugins/jquery/jquery-migrate-1.1.0.min.js&quot;&gt;&lt;/script&gt;&lt;script src=&quot;../avisos/assets/plugins/bootstrap/js/bootstrap.min.js&quot;&gt;&lt;/script&gt;&lt;!--[if lt IE 9]&gt;\n		&lt;script src=&quot;../avisos/assets/crossbrowserjs/html5shiv.js&quot;&gt;&lt;/script&gt;\n		&lt;script src=&quot;../avisos/assets/crossbrowserjs/respond.min.js&quot;&gt;&lt;/script&gt;\n		&lt;script src=&quot;../avisos/assets/crossbrowserjs/excanvas.min.js&quot;&gt;&lt;/script&gt;\n	&lt;![endif]--&gt;&lt;script src=&quot;../avisos/assets/plugins/jquery-cookie/jquery.cookie.js&quot;&gt;&lt;/script&gt;&lt;script src=&quot;../avisos/assets/plugins/scrollMonitor/scrollMonitor.js&quot;&gt;&lt;/script&gt;&lt;script src=&quot;../avisos/assets/js/apps.min.js&quot;&gt;&lt;/script&gt;&lt;!-- ================== END BASE JS ================== --&gt;\n&lt;/head&gt;\n&lt;body class=&quot;page-navbar-fixed-top-sm&quot; data-target=&quot;#header-navbar&quot;&gt;&lt;!-- begin #page-container --&gt;\n&lt;div class=&quot;in&quot; id=&quot;page-container&quot;&gt;&lt;!-- begin #header --&gt;\n&lt;div class=&quot;header navbar navbar-default navbar-fixed-top navbar-small&quot; id=&quot;header&quot; style=&quot;border-bottom: 1px solid #e7e7e7;&quot;&gt;&lt;!-- begin container --&gt;\n&lt;div class=&quot;container&quot;&gt;&lt;!-- begin navbar-header --&gt;\n&lt;div class=&quot;navbar-header&quot;&gt;&lt;button class=&quot;navbar-toggle collapsed&quot; data-target=&quot;#header-navbar&quot; data-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;&lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt; &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt; &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt;&lt;/button&gt;&lt;a class=&quot;navbar-brand&quot; style=&quot;padding: 5px;&quot;&gt;&lt;img class=&quot;logo-admin&quot; src=&quot;images/logo.png&quot; style=&quot;height:38px; width:auto&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\n&lt;!-- end navbar-header --&gt;&lt;!-- begin navbar-collapse --&gt;\n\n&lt;div class=&quot;collapse navbar-collapse&quot; id=&quot;header-navbar&quot;&gt;\n&lt;ul class=&quot;nav navbar-nav navbar-right&quot;&gt;\n	&lt;li&gt;&lt;a data-click=&quot;scroll-to-target&quot; href=&quot;#home&quot;&gt;&lt;i class=&quot;fa fa-bell-o fa-lg&quot;&gt;&lt;/i&gt; AVISO&lt;/a&gt;&lt;/li&gt;\n	&lt;li&gt;&lt;a data-click=&quot;scroll-to-target&quot; href=&quot;#facturas&quot;&gt;&lt;i class=&quot;fa fa-file-text-o fa-lg&quot;&gt;&lt;/i&gt; MIS FACTURAS&lt;/a&gt;&lt;/li&gt;\n	&lt;li&gt;&lt;a data-click=&quot;scroll-to-target&quot; href=&quot;#dondepagar&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart fa-lg&quot;&gt;&lt;/i&gt; &amp;iquest;DONDE PAGAR?&lt;/a&gt;&lt;/li&gt;\n&lt;/ul&gt;\n&lt;/div&gt;\n&lt;!-- end navbar-collapse --&gt;&lt;/div&gt;\n&lt;!-- end container --&gt;&lt;/div&gt;\n&lt;!-- end #header --&gt;&lt;!-- begin #aviso --&gt;\n\n&lt;div class=&quot;content&quot; id=&quot;home&quot; style=&quot;min-height: 400px;background: #232323;&quot;&gt;&lt;!-- begin content-bg --&gt;&lt;!-- end content-bg --&gt;&lt;!-- begin container --&gt;\n&lt;div class=&quot;container home-content&quot; style=&quot;max-width: 600px;&quot;&gt;\n&lt;h1 style=&quot;color: #d1de39;&quot;&gt;&lt;i class=&quot;fa fa-bell-o&quot;&gt;&lt;/i&gt; Aviso de pago&lt;/h1&gt;\n\n&lt;h4 style=&quot;color: #14bfbf;&quot;&gt;Estimado cliente &lt;b&gt;{nombre_cliente},&lt;/b&gt;&lt;/h4&gt;\n\n&lt;h5 style=&quot;line-height: 25px;&quot;&gt;&lt;span style=&quot;color:#FFFFFF;font-size: 16px;font-weight: 400;&quot;&gt;Le recordamos que se acerca la fecha de vencimiento de su per&amp;iacute;odo de Internet, por favor realizar el pago antes de esa fecha para evitar el corte de su servicio y cargos por reconexi&amp;oacute;n.&lt;br /&gt;\nSu fecha de corte programdo es el &lt;strong&gt;{fecha_corte}&lt;/strong&gt;&lt;/span&gt;&lt;/h5&gt;\n&lt;a class=&quot;btn btn-info&quot; data-click=&quot;scroll-to-target&quot; href=&quot;#facturas&quot;&gt;&lt;span style=&quot;color:#FFFFFF;&quot;&gt;&lt;i class=&quot;fa fa-file-text-o fa-lg&quot;&gt;&lt;/i&gt;&lt;/span&gt; Ver factura&lt;/a&gt; &lt;a class=&quot;btn btn-info&quot; data-click=&quot;scroll-to-target&quot; href=&quot;#dondepagar&quot;&gt;&lt;i class=&quot;fa fa-street-view fa-lg&quot;&gt;&lt;/i&gt; Luagres de pago&lt;/a&gt;&lt;/div&gt;\n&lt;!-- end container --&gt;&lt;/div&gt;\n&lt;!-- end #aviso --&gt;&lt;!-- beign #facturas --&gt;\n\n&lt;div class=&quot;content&quot; data-scrollview=&quot;true&quot; id=&quot;facturas&quot;&gt;&lt;!-- begin container --&gt;\n&lt;div class=&quot;container&quot; style=&quot;min-height: 200px&quot;&gt;\n&lt;h2 class=&quot;content-title&quot;&gt;Mis Facturas&lt;/h2&gt;\n\n&lt;p class=&quot;content-desc&quot;&gt;A continuaci&amp;oacute;n detallamos todas las facturas no pagadas.&lt;/p&gt;\n&lt;!-- begin row --&gt;\n\n&lt;div class=&quot;row&quot;&gt;{facturas}&lt;/div&gt;\n&lt;!-- end row --&gt;&lt;/div&gt;\n&lt;!-- end container --&gt;&lt;/div&gt;\n&lt;!-- end #aviso --&gt;&lt;!-- beign #dondepagar --&gt;\n\n&lt;div class=&quot;content&quot; data-scrollview=&quot;true&quot; id=&quot;dondepagar&quot;&gt;&lt;!-- begin container --&gt;\n&lt;div class=&quot;container&quot; style=&quot;min-height: 400px&quot;&gt;\n&lt;h2 class=&quot;content-title&quot;&gt;&amp;iquest;D&amp;oacute;nde pagar?&lt;/h2&gt;\n\n&lt;p class=&quot;content-desc&quot;&gt;A continuaci&amp;oacute;n detallamos todas las formas y lugares donde pueda pagar sus facturas.&lt;/p&gt;\n&lt;!-- begin row --&gt;\n\n&lt;div class=&quot;row&quot;&gt;&lt;!-- begin col-4 --&gt;\n&lt;div class=&quot;col-md-4 col-sm-4&quot;&gt;\n&lt;div class=&quot;service&quot;&gt;\n&lt;div class=&quot;icon bg-theme&quot; data-animation=&quot;true&quot; data-animation-type=&quot;bounceIn&quot;&gt;&lt;i class=&quot;fa fa-paypal&quot; style=&quot;padding-top:14px;&quot;&gt;&lt;/i&gt;&lt;/div&gt;\n\n&lt;div class=&quot;info&quot;&gt;\n&lt;h4 class=&quot;title&quot;&gt;Paypal&lt;/h4&gt;\n\n&lt;p class=&quot;desc&quot;&gt;Puede realizar el pago con su tarjeta de cr&amp;eacute;dito/debito y se activar&amp;aacute; su servicio al finalizar la transacci&amp;oacute;n.&lt;/p&gt;\n&lt;a class=&quot;btn btn-sm btn-success&quot; href=&quot;{url_portal}&quot;&gt;pagar ahora&lt;/a&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- end col-4 --&gt;&lt;!-- begin col-4 --&gt;\n\n&lt;div class=&quot;col-md-4 col-sm-4&quot;&gt;\n&lt;div class=&quot;service&quot;&gt;\n&lt;div class=&quot;icon bg-theme&quot; data-animation=&quot;true&quot; data-animation-type=&quot;bounceIn&quot;&gt;&lt;i class=&quot;fa fa-cc-visa&quot; style=&quot;padding-top:14px;&quot;&gt;&lt;/i&gt;&lt;/div&gt;\n\n&lt;div class=&quot;info&quot;&gt;\n&lt;h4 class=&quot;title&quot;&gt;MercadoPago&lt;/h4&gt;\n\n&lt;p class=&quot;desc&quot;&gt;Puede realizar el pago con su tarjeta de cr&amp;eacute;dito/debito,depositos en banco y se activar&amp;aacute; su servicio al finalizar la transacci&amp;oacute;n.&lt;/p&gt;\n&lt;a class=&quot;btn btn-sm btn-success&quot; href=&quot;{url_portal}&quot;&gt;pagar ahora&lt;/a&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- end col-4 --&gt;&lt;!-- begin col-4 --&gt;\n\n&lt;div class=&quot;col-md-4 col-sm-4&quot;&gt;\n&lt;div class=&quot;service&quot;&gt;\n&lt;div class=&quot;icon bg-theme&quot; data-animation=&quot;true&quot; data-animation-type=&quot;bounceIn&quot;&gt;&lt;i class=&quot;fa fa-barcode&quot; style=&quot;padding-top:14px;&quot;&gt;&lt;/i&gt;&lt;/div&gt;\n\n&lt;div class=&quot;info&quot;&gt;\n&lt;h4 class=&quot;title&quot;&gt;Oxxo&lt;/h4&gt;\n\n&lt;p class=&quot;desc&quot;&gt;Puede pagar su servicio en cualquier tienda oxxo del pa&amp;iacute;s y se activar&amp;aacute; su servicio al finalizar la transacci&amp;oacute;n.&lt;/p&gt;\n&lt;a class=&quot;btn btn-sm btn-success&quot; href=&quot;{url_portal}&quot;&gt;pagar ahora&lt;/a&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- end col-4 --&gt;&lt;/div&gt;\n&lt;!-- end row --&gt;&lt;/div&gt;\n&lt;!-- end container --&gt;&lt;/div&gt;\n&lt;!-- end #dondepgar --&gt;&lt;/div&gt;\n&lt;script&gt;    \n	    $(document).ready(function() {\nApp.init();\n	    });\n	&lt;/script&gt;&lt;/body&gt;\n&lt;/html&gt;\n','avisopantalla','Aviso de pago en pantalla','A4',0,0,'',''),(7,'&lt;title&gt;&lt;/title&gt;\n&lt;div style=&quot;background-color: #f6f6f6;-webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none;-webkit-text-size-adjust: none;width: 100% !important;height: 100%;line-height: 1.6;margin: 0; padding: 0;font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;box-sizing: border-box;font-size: 14px;&quot;&gt;\n&lt;table class=&quot;body-wrap&quot; style=&quot;background-color: #f6f6f6;width: 100%;&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n			&lt;td style=&quot;display: block !important; max-width: 600px !important;margin: 0 auto !important;clear: both !important;&quot; width=&quot;600&quot;&gt;\n			&lt;div style=&quot;max-width: 600px;margin: 0 auto;display: block;padding: 20px;&quot;&gt;\n			&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot; background: #fff;border: 1px solid #e9e9e9;border-radius: 3px;&quot; width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: middle;font-size: 16px;color: #fff;font-weight: 500;padding: 15px;border-radius: 3px 3px 0 0;border-bottom: 1px solid #e9e9e9;&quot;&gt;&lt;img alt=&quot;Mostrar Logo&quot; src=&quot;{url_logo}&quot; style=&quot;max-height:65px;&quot; /&gt;\n						&lt;div style=&quot;width: auto;color: #348eda;font-weight: 600;float: right;margin: 10px auto;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;span style=&quot;color:#66cccc;&quot;&gt;RECIBO DE PAGO&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: top;padding: 25px;&quot;&gt;\n						&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n							&lt;tbody&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0px;&quot;&gt;Querido(a) &amp;nbsp;&lt;strong&gt;{nombre_cliente},&lt;/strong&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 10px;&quot;&gt;\n									&lt;p&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Se trata de un recibo de pago de la factura&amp;nbsp;&lt;strong&gt;{nfactura}&lt;/strong&gt;&amp;nbsp;registrado&amp;nbsp;el&amp;nbsp;&lt;strong&gt;{fecha_pagado}.&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Cantidad:&lt;/strong&gt; {total}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Transacci&amp;oacute;n #:&lt;/strong&gt; {transaccion}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Total pagado:&lt;/strong&gt; {total_pagado}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Usted puede revisar su historial de facturas en cualquier momento accediendo a su &amp;aacute;rea de cliente.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Nota:&lt;/strong&gt; Este correo electr&amp;oacute;nico servir&amp;aacute; como un recibo oficial para este pago.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;div style=&quot;width: 100%;border: 1px solid #348eda;border-radius: 5px;&quot;&gt;\n									&lt;div style=&quot;width: 100%;text-align:center;background: #348eda;color: #FFF;font-weight: bold;border-radius: 3px 3px 0 0px;height: 25px;vertical-align: middle;&quot;&gt;Datos de Acceso &amp;aacute;rea clientes&lt;/div&gt;\n\n									&lt;p style=&quot;line-height: 8px;margin-left: 20px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Usuario:&lt;/strong&gt; {id_cliente}&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;margin-left: 20px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Contrase&amp;ntilde;a:&lt;/strong&gt; {codigo_cliente}&lt;/span&gt;&lt;/p&gt;\n									&lt;/div&gt;\n									&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 20px;text-align: center;&quot;&gt;&lt;a href=&quot;http://{url_portal}&quot; style=&quot;text-decoration: none; color: #FFF;background-color: #348eda;  border: solid #348eda;border-width: 8px 15px;line-height: 1.5;font-weight: bold; text-align: center;cursor: pointer;display: inline-block;border-radius: 5px;text-transform: capitalize;&quot; target=&quot;_blank&quot;&gt;Ingresar A mi cuenta&lt;/a&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 20px;&quot;&gt;&lt;span style=&quot;color:#808080;&quot;&gt;&lt;em&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;El ingreso debe hacerse autom&amp;aacute;tico desde el bot&amp;oacute;n &amp;quot;Mi cuenta&amp;quot; si est&amp;aacute; dentro de nuestra red.&lt;/span&gt;&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n							&lt;/tbody&gt;\n						&lt;/table&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n\n			&lt;div style=&quot;width: 100%;clear: both;color: #999;padding: 20px;&quot;&gt;\n			&lt;table width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td class=&quot;aligncenter&quot; style=&quot;vertical-align: top; padding: 0px 0px 20px; font-size: 12px;&quot;&gt;&lt;strong&gt;Nota:&lt;/strong&gt;&amp;nbsp;No responda este correo, Cualquier consulta debe hacerlo &amp;nbsp;ingresando a su cuenta.&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n			&lt;/div&gt;\n			&lt;/div&gt;\n			&lt;/td&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;\n','confirmacion','ConfirmaciÃ³n de Pago','',0,0,'',''),(8,'<html>\n<head>\n	<title></title>\n</head>\n<body>\n<style type=\"text/css\">*\n{\n	border: 0;\n	box-sizing: content-box;\n	color: inherit;\n	font-family: inherit;\n	font-size: inherit;\n	font-style: inherit;\n	font-weight: inherit;\n	line-height: inherit;\n	list-style: none;\n	margin: 0;\n	text-decoration: none;\n}\n\nh3{\nfont-size:16px;\nfont-weight:bold;\n}\n\n\nbody{\nwidth:100%;\nheight:100%;\n}\n\nbody,td,th {\nfont-family: Arial;\nfont-size: 12px;\n}\n\n\n.table-invoice { \nfont-size: 85%;\ntable-layout: fixed;\nborder-collapse: collapse;\nwidth:100%;\n}\n\n.border{\nborder-right: 1px solid #d9e8ed ;\n}\n\n.table-invoice td {\npadding:7px 4px;\nborder-bottom: 1px solid #d9e8ed;\n}\n\n.table-invoice th {\n	background:#eef2f3;\n	font-weight:bold;\n	height:30px;\n	vertical-align:middle;\n}\n.invoice-content{\nborder:1px solid #d9e8ed;\nmargin:5px 10px;\nmin-height:100px;\ndisplay:inline-block;\n}\n\n.monto-letras{\nfont-weight:bold;\npadding:10px;\npadding-top:20px;\nbackground: #eef2f3;\n}\n\n.table-total{\nfont-size: 85%;\ntable-layout: fixed;\nborder-collapse: collapse;\nwidth:100%;\n}\n\n.table-total td {\npadding:5px 5px;\nborder-bottom: 1px solid #d9e8ed;\n}\n\n.content-total{\nmargin:0px 10px;	\n}\n.bold,b{\n	font-weight:bold;\n}\n.header{\nmargin:10px;		\n}\n.nopagado,.estadocss{\nbackground: #ff5356;\n    font-size: 18px;\n    font-weight: bold;\n    text-transform: uppercase;\n   width: 100%;\n    padding: 3px;\n    color: #fff;\n    right: 10px;\n    text-align: center;\n    margin-bottom: 5px;\n}\n\n.pagado{\nbackground: #06C393;\n    font-size: 18px;\n    font-weight: bold;;\n    text-transform: uppercase;\n    width: 100%;\n    padding: 3px;\n    color: #fff;\n    right: 10px;\n    text-align: center;\n    margin-bottom: 5px;\n}\n\n\n.anulado{\nbackground: #e4b932;\n    font-size: 18px;\n    font-weight: bold;\n    text-transform: uppercase;\n    width: 100%;\n    padding: 3px;\n    color: #fff;\n    right: 10px;\n    text-align: center;\n    margin-bottom: 5px;\n}\n\n.col{\nmin-height:30px;\nwidth: 46%;\nfloat:left;\npadding:10px;\nmargin-top:5px;\n}\n\n.mayu{\ntext-transform:uppercase;\n}\n.table-invoice .pad{\npadding:5px 30px 5px 10px !important;\n}\n\n.text{\ncolor:#565656;\nline-height:inherit;\n}\np{\nmargin: 0px;\nmargin-bottom: 2px;\n}\n</style>\n<div class=\"header\">\n<div class=\"estadocss\">{estado}</div>\n\n<table autosize=\"2\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-bottom:1px solid #d9e8ed;\" width=\"100%\">\n	<tbody>\n		<tr>\n			<td align=\"left\" valign=\"middle\" width=\"60%\"><img src=\"images/logofactura.png\" style=\"width:auto;height:70px\" /></td>\n			<td style=\"padding-right:5px;\" width=\"50%\">\n			<table border=\"0\" width=\"100%\">\n				<tbody>\n					<tr>\n						<td align=\"right\">\n						<h3>FACTURA # {nfactura}</h3>\n						</td>\n					</tr>\n					<tr>\n						<td align=\"right\">Fecha emisiÃ³n <b>{emitido}</b></td>\n					</tr>\n					<tr>\n						<td align=\"right\">Fecha vencimiento <b>{vencimiento}</b></td>\n					</tr>\n				</tbody>\n			</table>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<div class=\"col border\"><b>De</b>\n\n<p class=\"text mayu\">{nombre_empresa}</p>\n\n<p class=\"text\">Ruc {ruc_empresa}</p>\n\n<p class=\"text\">{direccion_empresa}</p>\n\n<p class=\"text\">TelÃ©fono {telefono_empresa}</p>\n</div>\n\n<div class=\"col\"><b>Para</b>\n\n<p class=\"text mayu\">{nombre_cliente}</p>\n\n<p class=\"text\">{cedula_cliente}</p>\n\n<p class=\"text\">{direccion_principal_cliente}</p>\n\n<p class=\"text\">TelÃ©fono {telefono_cliente} / {movil_cliente}</p>\n</div>\n</div>\n\n<div class=\"invoice-content\">\n<table autosize=\"2\" class=\"table-invoice\">\n	<thead>\n		<tr>\n			<th>DescripciÃ³n</th>\n			<th width=\"100px\">Precio</th>\n			<th width=\"45px\">Imp%</th>\n			<th width=\"25px\">Cant.</th>\n			<th width=\"100px\">Total</th>\n		</tr>\n	</thead>\n	<tbody><!-- TAG PAR MOSTRAR CONTENIDO FACTURA--><!-- \ntag: {items} ->Muestra todas las columnas (descripcion,precio,impuesto,cantidad y total)\ntag: {items2} ->Muetra la colunmas descripcion y total\ntag: {items3} ->Muestra solo la descripcion\n<tr>\n<td>{items}</td>\n</tr>\n-->\n		<tr>\n			<td>{items}</td>\n		</tr>\n		<!-- FIN TAG-->\n	</tbody>\n</table>\n\n<div class=\"monto-letras\">SON: {total_letras}</div>\n</div>\n\n<div class=\"content-total\">\n<table autosize=\"2.4\" class=\"table-total\">\n	<tbody>\n		<tr>\n			<td align=\"center\"><barcode code=\"{barcode}\" height=\"3\" size=\"0.75\" type=\"EAN128A\"></barcode>\n\n			<div style=\"font-family: ocrb;font-size:14px\">{barcode}</div>\n			</td>\n			<td align=\"right\" width=\"215px\">\n			<table>\n				<tbody>\n					<tr>\n						<td align=\"right\" class=\"bold\" width=\"105px\">SUBTOTAL :</td>\n						<td align=\"left\" width=\"100px\">{subtotal}</td>\n					</tr>\n					<tr>\n						<td align=\"right\" class=\"bold\" width=\"95px\">IMPUESTO :</td>\n						<td align=\"left\" width=\"100px\">{impuesto}</td>\n					</tr>\n					<tr class=\"otrosimpuestos1\">\n						<td align=\"right\" class=\"bold\" width=\"95px\">OTRO IMP. 1 :</td>\n						<td align=\"left\" width=\"100px\">{otro_impuesto_1}</td>\n					</tr>\n					<tr class=\"otrosimpuestos2\">\n						<td align=\"right\" class=\"bold\" width=\"95px\">OTRO IMP. 2 :</td>\n						<td align=\"left\" width=\"100px\">{otro_impuesto_2}</td>\n					</tr>\n					<tr class=\"otrosimpuestos3\">\n						<td align=\"right\" class=\"bold\" width=\"95px\">OTRO IMP. 3 :</td>\n						<td align=\"left\" width=\"100px\">{otro_impuesto_3}</td>\n					</tr>\n					<tr>\n						<td align=\"right\" class=\"bold\" width=\"95px\">DESCUENTO :</td>\n						<td align=\"left\" width=\"100px\">{descuento}</td>\n					</tr>\n					<tr>\n						<td align=\"right\" class=\"bold\" width=\"95px\">TOTAL :</td>\n						<td align=\"left\" width=\"100px\">{total}</td>\n					</tr>\n				</tbody>\n			</table>\n			</td>\n		</tr>\n	</tbody>\n</table></div>\n\n<p>{operaciones}</p>\n</body>\n</html>\n','factura','Fomato Factura PDF','A4',0,0,'',''),(9,'<html>\n<head>\n	<title></title>\n</head>\n<body>\n<style type=\"text/css\">*\n{\n	border: 0;\n	box-sizing: content-box;\n	color: inherit;\n	font-family: inherit;\n	font-size: inherit;\n	font-style: inherit;\n	font-weight: inherit;\n	line-height: inherit;\n	list-style: none;\n	margin: 0;\n	text-decoration: none;\n}\n\nh3{\nfont-size:16px;\nfont-weight:bold;\n}\n\n\nbody{\nwidth:100%;\nheight:100%;\n}\n\nbody,td,th {\nfont-family: Arial;\nfont-size: 12px;\n}\n\n\n.table-invoice { \nfont-size: 85%;\ntable-layout: fixed;\nborder-collapse: collapse;\nwidth:100%;\n}\n\n.border{\nborder-right: 1px solid #d9e8ed ;\n}\n\n.table-invoice td {\npadding:7px 4px;\nborder-bottom: 1px solid #d9e8ed;\n}\n\n.table-invoice th {\n	background:#eef2f3;\n	font-weight:bold;\n	height:30px;\n	vertical-align:middle;\n}\n.invoice-content{\nborder:1px solid #d9e8ed;\nmargin:5px 10px;\nmin-height:100px;\ndisplay:inline-block;\n}\n\n.monto-letras{\nfont-weight:bold;\npadding:10px;\npadding-top:20px;\nbackground: #eef2f3;\n}\n\n.table-total{\nfont-size: 85%;\ntable-layout: fixed;\nborder-collapse: collapse;\nwidth:100%;\n}\n\n.table-total td {\npadding:5px 5px;\nborder-bottom: 1px solid #d9e8ed;\n}\n\n.content-total{\nmargin:0px 10px;	\n}\n.bold,b{\n	font-weight:bold;\n}\n.header{\nmargin:10px;		\n}\n\n.col{\nmin-height:30px;\nwidth: 46%;\nfloat:left;\npadding:10px;\nmargin-top:5px;\n}\n\n.mayu{\ntext-transform:uppercase;\n}\n.table-invoice .pad{\npadding:5px 30px 5px 10px !important;\n}\n\n.text{\ncolor:#565656;\nline-height:inherit;\n}\np{\nmargin: 0px;\nmargin-bottom: 2px;\n}\n</style>\n<div class=\"header\">Â \n<table autosize=\"2\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-bottom:1px solid #d9e8ed;\" width=\"100%\">\n	<tbody>\n		<tr>\n			<td align=\"left\" valign=\"middle\" width=\"60%\"><img src=\"images/logofactura.png\" style=\"width:auto;height:100%;max-height:70px\" /></td>\n			<td style=\"padding-right:5px;\" width=\"50%\">\n			<table border=\"0\" width=\"100%\">\n				<tbody>\n					<tr>\n						<td align=\"right\">\n						<h3>RECIBO # {nrecibo}</h3>\n						</td>\n					</tr>\n					<tr>\n						<td align=\"right\">Fecha <b>{fecha}</b></td>\n					</tr>\n					<tr>\n						<td align=\"right\">ImpresiÃ³nÂ <b>{fecha_impresion}</b></td>\n					</tr>\n				</tbody>\n			</table>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<div class=\"col border\"><b>De</b>\n\n<p class=\"text mayu\">{nombre_empresa}</p>\n\n<p class=\"text\">{ruc_empresa}</p>\n\n<p class=\"text\">{direccion_empresa}</p>\n\n<p class=\"text\">TelÃ©fono {telefono_empresa}</p>\n</div>\n\n<div class=\"col\"><b>Para</b>\n\n<p class=\"text mayu\">{nombre_cliente}</p>\n\n<p class=\"text\">{cedula_cliente}</p>\n\n<p class=\"text\">{direccion_principal_cliente}</p>\n\n<p class=\"text\">TelÃ©fono {telefono_cliente} / {movil_cliente}</p>\n</div>\n</div>\n\n<div class=\"invoice-content\">\n<table autosize=\"2\" class=\"table-invoice\">\n	<thead>\n		<tr>\n			<th>DescripciÃ³n</th>\n			<th width=\"100px\">Precio</th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td>{items}</td>\n		</tr>\n	</tbody>\n</table>\n\n<div class=\"monto-letras\">SON: {total_letras}</div>\n</div>\n\n<div class=\"content-total\">\n<table autosize=\"2.4\" class=\"table-total\">\n	<tbody>\n		<tr>\n			<td align=\"center\" rowspan=\"5\"><barcode code=\"{barcode}\" height=\"2\" size=\"0.75\" type=\"EAN128A\"></barcode>\n\n			<div style=\"font-family: ocrb;font-size:14px\">{nrecibo}</div>\n			</td>\n			<td align=\"right\" class=\"bold\" width=\"120px\">DESCUENTO :</td>\n			<td width=\"100px\">{descuento}</td>\n		</tr>\n		<tr>\n			<td align=\"right\" class=\"bold\" width=\"120px\">TOTAL :</td>\n			<td width=\"100px\">{total}</td>\n		</tr>\n		<tr>\n			<td align=\"right\" class=\"bold\" width=\"120px\">TOTAL PAGADO:</td>\n			<td width=\"100px\">{cobrado}</td>\n		</tr>\n		<tr>\n			<td align=\"right\" class=\"bold\">SALDO :</td>\n			<td>{saldo}</td>\n		</tr>\n	</tbody>\n</table></div>\n</body>\n</html>\n','recibo','Fomato Recibo PDF','A5',0,0,'-L',''),(10,'&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Transitional//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd&quot;&gt;\n&lt;html&gt;\n&lt;head&gt;\n	&lt;title&gt;&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;div style=&quot;background-color: #f6f6f6;-webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none;-webkit-text-size-adjust: none;width: 100% !important;height: 100%;line-height: 1.6;margin: 0; padding: 0;font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;box-sizing: border-box;font-size: 14px;&quot;&gt;\n&lt;table class=&quot;body-wrap&quot; style=&quot;background-color: #f6f6f6;width: 100%;&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n			&lt;td style=&quot;display: block !important; max-width: 600px !important;margin: 0 auto !important;clear: both !important;&quot; width=&quot;600&quot;&gt;\n			&lt;div style=&quot;max-width: 600px;margin: 0 auto;display: block;padding: 20px;&quot;&gt;\n			&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot; background: #fff;border: 1px solid #e9e9e9;border-radius: 3px;&quot; width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: middle;font-size: 16px;color: #fff;font-weight: 500;padding: 15px;border-radius: 3px 3px 0 0;border-bottom: 1px solid #e9e9e9;&quot;&gt;&lt;img alt=&quot;Mostrar Logo&quot; src=&quot;{url_logo}&quot; style=&quot;max-height:65px;&quot; /&gt;\n						&lt;div style=&quot;width: auto;color: #348eda;font-weight: 600;float: right;margin: 10px auto;&quot;&gt;&lt;span style=&quot;color:#FF0000;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;ROUTER CA&amp;Iacute;DO&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: top;padding: 25px;&quot;&gt;\n						&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n							&lt;tbody&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0px;&quot;&gt;&amp;nbsp;&lt;strong&gt;Hola Administrador,&lt;/strong&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 10px;&quot;&gt;\n									&lt;p&gt;Se reporta un Router&amp;nbsp;Ca&amp;iacute;do, a continuaci&amp;oacute;n se muestran los detalles:&lt;/p&gt;\n\n									&lt;ul&gt;\n										&lt;li&gt;&lt;strong&gt;IP :&lt;/strong&gt; {ip_nodo}&lt;/li&gt;\n										&lt;li&gt;&lt;strong&gt;Nombre:&lt;/strong&gt; {nombre_nodo}&lt;/li&gt;\n										&lt;li&gt;&lt;strong&gt;Fecha &amp;amp; Hora&lt;/strong&gt;:&amp;nbsp;{fecha}&lt;/li&gt;\n									&lt;/ul&gt;\n									&lt;/td&gt;\n								&lt;/tr&gt;\n							&lt;/tbody&gt;\n						&lt;/table&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n\n			&lt;div style=&quot;width: 100%;clear: both;color: #999;padding: 20px;&quot;&gt;\n			&lt;table width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td class=&quot;aligncenter&quot; style=&quot;vertical-align: top; padding: 0px 0px 20px; font-size: 12px; text-align: center;&quot;&gt;Email generado por Mikrowisp Manager.&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n			&lt;/div&gt;\n			&lt;/div&gt;\n			&lt;/td&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;\n&lt;/body&gt;\n&lt;/html&gt;\n','downnodo','Â¡Alerta! Nodo Desconectado','',0,0,'',''),(11,'&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Transitional//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd&quot;&gt;\n&lt;html&gt;\n&lt;head&gt;\n	&lt;title&gt;&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;div style=&quot;background-color: #f6f6f6;-webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none;-webkit-text-size-adjust: none;width: 100% !important;height: 100%;line-height: 1.6;margin: 0; padding: 0;font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;box-sizing: border-box;font-size: 14px;&quot;&gt;\n&lt;table class=&quot;body-wrap&quot; style=&quot;background-color: #f6f6f6;width: 100%;&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n			&lt;td style=&quot;display: block !important; max-width: 600px !important;margin: 0 auto !important;clear: both !important;&quot; width=&quot;600&quot;&gt;\n			&lt;div style=&quot;max-width: 600px;margin: 0 auto;display: block;padding: 20px;&quot;&gt;\n			&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot; background: #fff;border: 1px solid #e9e9e9;border-radius: 3px;&quot; width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: middle;font-size: 16px;color: #fff;font-weight: 500;padding: 15px;border-radius: 3px 3px 0 0;border-bottom: 1px solid #e9e9e9;&quot;&gt;&lt;img alt=&quot;Mostrar Logo&quot; src=&quot;{url_logo}&quot; style=&quot;max-height:65px;&quot; /&gt;\n						&lt;div style=&quot;width: auto;color: #348eda;font-weight: 600;float: right;margin: 10px auto;&quot;&gt;&lt;span style=&quot;color:#33cc66;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;ROUTER CONECTADO&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: top;padding: 25px;&quot;&gt;\n						&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n							&lt;tbody&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0px;&quot;&gt;&amp;nbsp;&lt;strong&gt;Hola Administrador,&lt;/strong&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 10px;&quot;&gt;\n									&lt;p&gt;Tenemos un Nodo en L&amp;iacute;nea, a continuaci&amp;oacute;n los detalles:&lt;/p&gt;\n\n									&lt;ul&gt;\n										&lt;li&gt;&lt;strong&gt;IP :&lt;/strong&gt; {ip_nodo}&lt;/li&gt;\n										&lt;li&gt;&lt;strong&gt;Nombre:&lt;/strong&gt; {nombre_nodo}&lt;/li&gt;\n										&lt;li&gt;&lt;strong&gt;Fecha &amp;amp; Hora&lt;/strong&gt;:&amp;nbsp;{fecha}&lt;/li&gt;\n									&lt;/ul&gt;\n									&lt;/td&gt;\n								&lt;/tr&gt;\n							&lt;/tbody&gt;\n						&lt;/table&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n\n			&lt;div style=&quot;width: 100%;clear: both;color: #999;padding: 20px;&quot;&gt;\n			&lt;table width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td class=&quot;aligncenter&quot; style=&quot;vertical-align: top; padding: 0px 0px 20px; font-size: 12px; text-align: center;&quot;&gt;Email generado por Mikrowisp Manager.&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n			&lt;/div&gt;\n			&lt;/div&gt;\n			&lt;/td&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;\n&lt;/body&gt;\n&lt;/html&gt;\n','upnodo','Â¡Noticia! Nodo Conectado','',0,0,'',''),(12,'&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Transitional//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd&quot;&gt;\n&lt;html&gt;\n&lt;head&gt;\n	&lt;title&gt;&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;div style=&quot;background-color: #f6f6f6;-webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none;-webkit-text-size-adjust: none;width: 100% !important;height: 100%;line-height: 1.6;margin: 0; padding: 0;font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;box-sizing: border-box;font-size: 14px;&quot;&gt;\n&lt;table class=&quot;body-wrap&quot; style=&quot;background-color: #f6f6f6;width: 100%;&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n			&lt;td style=&quot;display: block !important; max-width: 600px !important;margin: 0 auto !important;clear: both !important;&quot; width=&quot;600&quot;&gt;\n			&lt;div style=&quot;max-width: 600px;margin: 0 auto;display: block;padding: 20px;&quot;&gt;\n			&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot; background: #fff;border: 1px solid #e9e9e9;border-radius: 3px;&quot; width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: middle;font-size: 16px;color: #fff;font-weight: 500;padding: 15px;border-radius: 3px 3px 0 0;border-bottom: 1px solid #e9e9e9;&quot;&gt;&lt;img alt=&quot;Mostrar Logo&quot; src=&quot;{url_logo}&quot; style=&quot;max-height:65px;&quot; /&gt;\n						&lt;div style=&quot;width: auto;color: #348eda;font-weight: 600;float: right;margin: 10px auto;&quot;&gt;&lt;span style=&quot;color:#339933;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;EMISOR CONECTADO&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: top;padding: 25px;&quot;&gt;\n						&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n							&lt;tbody&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0px;&quot;&gt;&amp;nbsp;&lt;strong&gt;Hola Administrador,&lt;/strong&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 10px;&quot;&gt;\n									&lt;p&gt;Tenemos un emisor en L&amp;iacute;nea, a continuaci&amp;oacute;n los detalles:&lt;/p&gt;\n\n									&lt;ul&gt;\n										&lt;li&gt;&lt;strong&gt;IP :&lt;/strong&gt; {ip_emisor}&lt;/li&gt;\n										&lt;li&gt;&lt;strong&gt;Nombre:&lt;/strong&gt; {nombre_emisor}&lt;/li&gt;\n										&lt;li&gt;&lt;strong&gt;Fecha &amp;amp; Hora&lt;/strong&gt;:&amp;nbsp;{fecha}&lt;/li&gt;\n									&lt;/ul&gt;\n									&lt;/td&gt;\n								&lt;/tr&gt;\n							&lt;/tbody&gt;\n						&lt;/table&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n\n			&lt;div style=&quot;width: 100%;clear: both;color: #999;padding: 20px;&quot;&gt;\n			&lt;table width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td class=&quot;aligncenter&quot; style=&quot;vertical-align: top; padding: 0px 0px 20px; font-size: 12px; text-align: center;&quot;&gt;Email generado por Mikrowisp Manager.&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n			&lt;/div&gt;\n			&lt;/div&gt;\n			&lt;/td&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;\n&lt;/body&gt;\n&lt;/html&gt;\n','upemisor','Â¡Noticia! Emisor en LÃ­nea','',0,0,'',''),(13,'&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Transitional//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd&quot;&gt;\n&lt;html&gt;\n&lt;head&gt;\n	&lt;title&gt;&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;div style=&quot;background-color: #f6f6f6;-webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none;-webkit-text-size-adjust: none;width: 100% !important;height: 100%;line-height: 1.6;margin: 0; padding: 0;font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;box-sizing: border-box;font-size: 14px;&quot;&gt;\n&lt;table class=&quot;body-wrap&quot; style=&quot;background-color: #f6f6f6;width: 100%;&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n			&lt;td style=&quot;display: block !important; max-width: 600px !important;margin: 0 auto !important;clear: both !important;&quot; width=&quot;600&quot;&gt;\n			&lt;div style=&quot;max-width: 600px;margin: 0 auto;display: block;padding: 20px;&quot;&gt;\n			&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot; background: #fff;border: 1px solid #e9e9e9;border-radius: 3px;&quot; width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: middle;font-size: 16px;color: #fff;font-weight: 500;padding: 15px;border-radius: 3px 3px 0 0;border-bottom: 1px solid #e9e9e9;&quot;&gt;&lt;img alt=&quot;Mostrar Logo&quot; src=&quot;{url_logo}&quot; style=&quot;max-height:65px;&quot; /&gt;\n						&lt;div style=&quot;width: auto;color: #348eda;font-weight: 600;float: right;margin: 10px auto;&quot;&gt;&lt;span style=&quot;color:#FF0000;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;EMISOR CA&amp;Iacute;DO&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: top;padding: 25px;&quot;&gt;\n						&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n							&lt;tbody&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0px;&quot;&gt;&amp;nbsp;&lt;strong&gt;Hola Administrador,&lt;/strong&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 10px;&quot;&gt;\n									&lt;p&gt;Se reporta un Emisor Ca&amp;iacute;do, a continuaci&amp;oacute;n se muestran los detalles:&lt;/p&gt;\n\n									&lt;ul&gt;\n										&lt;li&gt;&lt;strong&gt;IP :&lt;/strong&gt; {ip_emisor}&lt;/li&gt;\n										&lt;li&gt;&lt;strong&gt;Nombre:&lt;/strong&gt; {nombre_emisor}&lt;/li&gt;\n										&lt;li&gt;&lt;strong&gt;Fecha &amp;amp; Hora&lt;/strong&gt;:&amp;nbsp;{fecha}&lt;/li&gt;\n									&lt;/ul&gt;\n									&lt;/td&gt;\n								&lt;/tr&gt;\n							&lt;/tbody&gt;\n						&lt;/table&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n\n			&lt;div style=&quot;width: 100%;clear: both;color: #999;padding: 20px;&quot;&gt;\n			&lt;table width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td class=&quot;aligncenter&quot; style=&quot;vertical-align: top; padding: 0px 0px 20px; font-size: 12px; text-align: center;&quot;&gt;Email generado por Mikrowisp Manager.&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n			&lt;/div&gt;\n			&lt;/div&gt;\n			&lt;/td&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;\n&lt;/body&gt;\n&lt;/html&gt;\n','downemisor','Â¡Alerta! Emisor caÃ­do','',0,0,'',''),(14,'&lt;html&gt;\n&lt;head&gt;\n	&lt;title&gt;&lt;/title&gt;\n	&lt;meta charset=&quot;utf-8&quot; /&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;style type=&quot;text/css&quot;&gt;body,td,th {\n	font-family: Segoe, &quot;Segoe UI&quot;, &quot;DejaVu Sans&quot;, &quot;Trebuchet MS&quot;, Verdana, sans-serif;\n	font-style: normal;\n	font-size: 11px;\n}\nbody {\nmargin-top: 20px;\n}\n.table {\nfont-family: Segoe, &quot;Segoe UI&quot;, &quot;DejaVu Sans&quot;, &quot;Trebuchet MS&quot;, Verdana, sans-serif;\nborder-collapse: collapse;\nwidth: 100%;\nborder: 1px solid #bdbdbd;\nfont-size: 11px;\n}\n\n.table th {\n    border: 1px solid #bdbdbd;\n    padding: 4px;\n}\n.table td {\nborder: 1px solid #bdbdbd;\n    padding: 2px;\n	font-size: 11px;\n}\n\n.table th {\n    padding-top: 6px;\n    padding-bottom: 6px;\n    text-align: left;\n    background-image: -webkit-linear-gradient(top,#f5f5f5 0,#e8e8e8 100%);\n    background-image: -o-linear-gradient(top,#f5f5f5 0,#e8e8e8 100%);\n    background-image: -webkit-gradient(linear,left top,left bottom,from(#f5f5f5),to(#e8e8e8));\n    background-image: linear-gradient(to bottom,#f5f5f5 0,#e8e8e8 100%);\n    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=\'#fff5f5f5\', endColorstr=\'#ffe8e8e8\', GradientType=0);\n    background-repeat: repeat-x;\n}\n&lt;/style&gt;\n&lt;div style=&quot;height:90%&quot;&gt;\n&lt;table cellspacing=&quot;3&quot; width=&quot;100%&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td valign=&quot;top&quot; width=&quot;24%&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;images/logofactura.png&quot; style=&quot;max-width: 180px; height: auto;&quot; /&gt;&lt;/td&gt;\n			&lt;td align=&quot;center&quot; valign=&quot;top&quot; width=&quot;37%&quot;&gt;\n			&lt;p&gt;&lt;barcode code=&quot;{barcode}&quot; height=&quot;2.1&quot; size=&quot;0.6&quot; type=&quot;C128A&quot;&gt; &lt;/barcode&gt;&lt;/p&gt;\n\n			&lt;h3 style=&quot;font-family: ocrb; padding-left: 50px; width: 100px; text-align: right;&quot;&gt;&lt;span style=&quot;color:#FCF8F8&quot;&gt;--&lt;/span&gt;{barcode}&lt;/h3&gt;\n			&lt;/td&gt;\n			&lt;td valign=&quot;top&quot; width=&quot;39%&quot;&gt;\n			&lt;p&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;b&gt;{nombre_empresa}&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;\n\n			&lt;p&gt;{ruc_empresa}&lt;/p&gt;\n\n			&lt;p&gt;{direccion_empresa}&lt;/p&gt;\n\n			&lt;p&gt;{telefono_empresa}&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n\n&lt;h1 style=&quot;width:100%; text-align:center&quot;&gt;&lt;b&gt;HOJA DE INSTALACI&amp;Oacute;N&lt;/b&gt;&lt;/h1&gt;\n\n&lt;table class=&quot;table&quot; width=&quot;100%&quot;&gt;\n	&lt;thead&gt;\n		&lt;tr&gt;\n			&lt;th align=&quot;center&quot; colspan=&quot;2&quot; valign=&quot;middle&quot;&gt;&lt;strong&gt;DATOS DEL CLIENTE&lt;/strong&gt;&lt;/th&gt;\n		&lt;/tr&gt;\n	&lt;/thead&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td align=&quot;right&quot; width=&quot;24%&quot;&gt;&lt;b&gt;Nombre y Apellidos:&lt;/b&gt;&lt;/td&gt;\n			&lt;td width=&quot;76%&quot;&gt;{nombre_cliente}&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td align=&quot;right&quot;&gt;&lt;b&gt;N&amp;ordm; Cedula:&lt;/b&gt;&lt;/td&gt;\n			&lt;td&gt;{cedula_cliente}&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td align=&quot;right&quot;&gt;&lt;b&gt;N&amp;ordm; Tel&amp;eacute;fono Fijo:&lt;/b&gt;&lt;/td&gt;\n			&lt;td&gt;{telefono_cliente}&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td align=&quot;right&quot;&gt;&lt;b&gt;N&amp;ordm; Tel&amp;eacute;fono m&amp;oacute;vil: &lt;/b&gt;&lt;/td&gt;\n			&lt;td&gt;{movil_cliente}&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td align=&quot;right&quot;&gt;&lt;b&gt;Direcci&amp;oacute;n: &lt;/b&gt;&lt;/td&gt;\n			&lt;td&gt;{direccion_principal_cliente}&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n\n&lt;h4&gt;&lt;b&gt;SERVICIOS CONTRATADOS&lt;/b&gt;&lt;/h4&gt;\n\n&lt;table class=&quot;table&quot; width=&quot;100%&quot;&gt;\n	&lt;thead&gt;\n		&lt;tr&gt;\n			&lt;th align=&quot;center&quot;&gt;&lt;b&gt;Plan&lt;/b&gt;&lt;/th&gt;\n			&lt;th align=&quot;center&quot;&gt;&lt;b&gt;N&amp;ordm; IP&lt;/b&gt;&lt;/th&gt;\n			&lt;th align=&quot;center&quot;&gt;&lt;b&gt;AP&lt;/b&gt;&lt;/th&gt;\n			&lt;th align=&quot;center&quot;&gt;&lt;b&gt;Usuario&lt;/b&gt;&lt;/th&gt;\n		&lt;/tr&gt;\n	&lt;/thead&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td colspan=&quot;4&quot;&gt;servicios&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n\n&lt;h4&gt;&lt;b&gt;EQUIPOS INSTALADOS&lt;/b&gt;&lt;/h4&gt;\n\n&lt;table class=&quot;table&quot; width=&quot;100%&quot;&gt;\n	&lt;thead&gt;\n		&lt;tr&gt;\n			&lt;th align=&quot;center&quot;&gt;&lt;b&gt;Equipo&lt;/b&gt;&lt;/th&gt;\n			&lt;th align=&quot;center&quot;&gt;&lt;b&gt;Descripci&amp;oacute;n&lt;/b&gt;&lt;/th&gt;\n			&lt;th align=&quot;center&quot;&gt;&lt;b&gt;N&amp;ordm; Mac&lt;/b&gt;&lt;/th&gt;\n			&lt;th align=&quot;center&quot;&gt;&lt;b&gt;N&amp;ordm; Serie&lt;/b&gt;&lt;/th&gt;\n		&lt;/tr&gt;\n	&lt;/thead&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td colspan=&quot;4&quot;&gt;productos&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n\n&lt;h4&gt;&lt;b&gt;ACCESORIOS INSTALADOS&lt;/b&gt;&lt;/h4&gt;\n\n&lt;table class=&quot;table&quot;&gt;\n	&lt;thead&gt;\n		&lt;tr&gt;\n			&lt;th align=&quot;center&quot;&gt;&lt;b&gt;Materiales&lt;/b&gt;&lt;/th&gt;\n			&lt;th align=&quot;center&quot;&gt;&lt;b&gt;Cantidad&lt;/b&gt;&lt;/th&gt;\n		&lt;/tr&gt;\n	&lt;/thead&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td colspan=&quot;2&quot;&gt;materiales&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n\n&lt;table class=&quot;table&quot; style=&quot;margin-top:20px&quot; width=&quot;100%&quot;&gt;\n	&lt;thead&gt;\n		&lt;tr&gt;\n			&lt;th align=&quot;left&quot;&gt;\n			&lt;h4&gt;&lt;b&gt;Observaciones&lt;/b&gt;&lt;/h4&gt;\n			&lt;/th&gt;\n		&lt;/tr&gt;\n	&lt;/thead&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;120&quot; valign=&quot;top&quot;&gt;{observaciones}&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;\n\n&lt;div style=&quot;width:100%; height:7%&quot;&gt;\n&lt;table width=&quot;100%&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td align=&quot;center&quot;&gt;.................................................................&lt;/td&gt;\n			&lt;td align=&quot;center&quot;&gt;.................................................................&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td align=&quot;center&quot; style=&quot;font-style: normal; font-weight: bold;&quot;&gt;\n			&lt;p&gt;{nombre_cliente}&lt;/p&gt;\n\n			&lt;p&gt;Cliente&lt;/p&gt;\n			&lt;/td&gt;\n			&lt;td align=&quot;center&quot; style=&quot;font-style: normal; font-weight: bold;&quot;&gt;\n			&lt;p&gt;{nombre_tecnico}&lt;/p&gt;\n\n			&lt;p&gt;T&amp;eacute;cnico&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;\n&lt;/body&gt;\n&lt;/html&gt;\n','instalacion','Hoja de InstalaciÃ³n','A4',0,0,'',''),(15,'&lt;!DOCTYPE html&gt;\n&lt;html lang=&quot;en&quot;&gt;&lt;!--&lt;![endif]--&gt;\n&lt;head&gt;&lt;meta charset=&quot;utf-8&quot; /&gt;\n	&lt;title&gt;Anuncio&lt;/title&gt;\n	&lt;meta content=&quot;width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no&quot; name=&quot;viewport&quot; /&gt;&lt;meta content=&quot;&quot; name=&quot;description&quot; /&gt;&lt;meta content=&quot;&quot; name=&quot;author&quot; /&gt;&lt;!-- ================== BEGIN BASE CSS STYLE ================== --&gt;\n	&lt;link href=&quot;../avisos/assets/plugins/bootstrap/css/bootstrap.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/plugins/font-awesome/css/font-awesome.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/css/animate.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/css/style.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/css/style-responsive.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/css/theme/default.css&quot; id=&quot;theme&quot; rel=&quot;stylesheet&quot; /&gt;&lt;!-- ================== END BASE CSS STYLE ================== --&gt;&lt;!-- ================== BEGIN BASE JS ================== --&gt;&lt;script src=&quot;../avisos/assets/plugins/pace/pace.min.js&quot;&gt;&lt;/script&gt;&lt;!-- ================== END BASE JS ================== --&gt;\n&lt;/head&gt;\n&lt;body class=&quot;active pace-done&quot; style=&quot;background: #e7d9d9&quot;&gt;\n&lt;div class=&quot;fade in&quot; id=&quot;page-container&quot;&gt;\n&lt;div class=&quot;col-md-8&quot; style=&quot;float: none;margin: 10% auto;&quot;&gt;\n&lt;div class=&quot;panel panel-danger&quot;&gt;\n&lt;div class=&quot;panel-heading&quot;&gt;\n&lt;h4 class=&quot;panel-title&quot;&gt;&lt;b&gt;&lt;i class=&quot;fa fa-bell-o fa-2x&quot;&gt;&lt;/i&gt; ANUNCIO IMPORTANTE&lt;/b&gt;&lt;/h4&gt;\n&lt;/div&gt;\n\n&lt;div class=&quot;panel-body row&quot;&gt;\n&lt;div class=&quot;col-lg-3 text-center&quot; style=&quot;margin-bottom: 30px;margin-top: 30px&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;images/logo.png&quot; style=&quot;width: 100%;max-width: 250px;&quot; /&gt;&lt;/div&gt;\n\n&lt;div class=&quot;col-lg-9&quot;&gt;\n&lt;h4 class=&quot;media-heading&quot; style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;color:#FF0000;&quot;&gt;&lt;strong&gt;MANTENIMIENTO PROGRAMADO&lt;/strong&gt;&lt;/span&gt;&lt;/h4&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Estimado &lt;strong&gt;{nombre_cliente}&lt;/strong&gt;,&lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Queremos tomar esta oportunidad para informarles que nuestra red estar&amp;aacute; fuera de l&amp;iacute;nea este 3 de Diciembre&amp;nbsp;del 2018 desde las 00:01am hasta las 8:00am , Les pedimos disculpa por cualquier inconveniente que esto les pueda crear.&lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Atentamente,&lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;MiEmPREsa.NET.&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- end panel-body --&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- end #page-container --&gt;&lt;!-- ================== BEGIN BASE JS ================== --&gt;&lt;script src=&quot;../avisos/assets/plugins/jquery/jquery-1.9.1.min.js&quot;&gt;&lt;/script&gt;&lt;script src=&quot;../avisos/assets/plugins/jquery/jquery-migrate-1.1.0.min.js&quot;&gt;&lt;/script&gt;&lt;script src=&quot;../avisos/assets/plugins/bootstrap/js/bootstrap.min.js&quot;&gt;&lt;/script&gt;&lt;!--[if lt IE 9]&gt;\n		&lt;script src=&quot;../avisos/assets/crossbrowserjs/html5shiv.js&quot;&gt;&lt;/script&gt;\n		&lt;script src=&quot;../avisos/assets/crossbrowserjs/respond.min.js&quot;&gt;&lt;/script&gt;\n		&lt;script src=&quot;../avisos/assets/crossbrowserjs/excanvas.min.js&quot;&gt;&lt;/script&gt;\n	&lt;![endif]--&gt;&lt;script src=&quot;../avisos/assets/plugins/jquery-cookie/jquery.cookie.js&quot;&gt;&lt;/script&gt;&lt;script src=&quot;../avisos/assets/plugins/scrollMonitor/scrollMonitor.js&quot;&gt;&lt;/script&gt;&lt;script src=&quot;../avisos/assets/js/apps.min.js&quot;&gt;&lt;/script&gt;&lt;!-- ================== END BASE JS ================== --&gt;&lt;script&gt;    \n	    $(document).ready(function() {\nApp.init();\n	    });\n	&lt;/script&gt;&lt;/body&gt;\n&lt;/html&gt;\n','publicidad','Anuncio muestra','A4',80,200,'',''),(17,'&lt;html&gt;\n&lt;head&gt;\n	&lt;title&gt;&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;table class=&quot;tablahead&quot; width=&quot;100%&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;145&quot; style=&quot;border-right:1px solid #000000;&quot; valign=&quot;top&quot; width=&quot;50%&quot;&gt;\n			&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; class=&quot;tabladataemisor&quot; width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td height=&quot;91&quot; valign=&quot;middle&quot;&gt;&lt;img alt=&quot;&quot; height=&quot;70&quot; src=&quot;images/logofactura.png&quot; width=&quot;auto&quot; /&gt;&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td align=&quot;center&quot; class=&quot;emisor&quot;&gt;&lt;strong&gt;{razon_social}&lt;/strong&gt;&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td valign=&quot;top&quot;&gt;{domicilio_emisor}&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td valign=&quot;top&quot;&gt;99999999999 - Soporte@miweb.com&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n			&lt;/td&gt;\n			&lt;td valign=&quot;top&quot; width=&quot;50%&quot;&gt;\n			&lt;table border=&quot;0&quot; cellpadding=&quot;3&quot; cellspacing=&quot;0&quot; class=&quot;tabladatoemisor&quot; width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td align=&quot;center&quot;&gt;\n						&lt;h1&gt;&lt;strong&gt;FACTURA&lt;/strong&gt;&lt;/h1&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td align=&quot;center&quot;&gt;&lt;strong&gt;N&amp;ordm; {n_afip}&lt;/strong&gt;&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td align=&quot;center&quot;&gt;&lt;b&gt;Fecha:&lt;/b&gt;&amp;nbsp;{fecha_emision}&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td align=&quot;center&quot;&gt;&lt;strong&gt;CUIT:&lt;/strong&gt; {cuit_emisor}&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td align=&quot;center&quot;&gt;&lt;strong&gt;Nro. Ing. Brutos:&lt;/strong&gt; 0000000000&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td align=&quot;center&quot;&gt;&lt;strong&gt;Inic. Act.:&lt;/strong&gt;&amp;nbsp;00/00/0000&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n\n&lt;table class=&quot;tablacliente&quot; width=&quot;100%&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td colspan=&quot;2&quot;&gt;{cuit_cliente} &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;strong&gt;Apellido y Nombre / Raz&amp;oacute;n Social:&lt;/strong&gt; {cliente}&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td colspan=&quot;2&quot;&gt;&lt;strong&gt;Domicilio Comercial:&lt;/strong&gt; {domicilio_comercial}&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;&lt;strong&gt;Condici&amp;oacute;n frente al IVA: &lt;/strong&gt;{tipo_iva}&lt;/td&gt;\n			&lt;td width=&quot;250&quot;&gt;&lt;strong&gt;Condici&amp;oacute;n de venta:&lt;/strong&gt; {condicion_venta}&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n\n&lt;div class=&quot;dvitem&quot;&gt;\n&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; class=&quot;tablaitems&quot; style=&quot;height:100%;&quot; width=&quot;100%&quot;&gt;\n	&lt;thead&gt;\n		&lt;tr&gt;\n			&lt;th height=&quot;32&quot;&gt;Producto /Servicio&lt;/th&gt;\n			&lt;th width=&quot;70&quot;&gt;Cantidad&lt;/th&gt;\n			&lt;th width=&quot;80&quot;&gt;Precio Unit.&lt;/th&gt;\n			&lt;th width=&quot;80&quot;&gt;Subtotal&lt;/th&gt;\n		&lt;/tr&gt;\n	&lt;/thead&gt;\n	&lt;tbody class=&quot;itmfc&quot;&gt;\n		&lt;tr&gt;\n			&lt;td valign=&quot;top&quot;&gt;&amp;nbsp;&lt;/td&gt;\n			&lt;td align=&quot;right&quot; valign=&quot;top&quot;&gt;&amp;nbsp;&lt;/td&gt;\n			&lt;td align=&quot;right&quot; valign=&quot;top&quot;&gt;&amp;nbsp;&lt;/td&gt;\n			&lt;td align=&quot;right&quot; valign=&quot;top&quot;&gt;&amp;nbsp;&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;\n\n&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; height=&quot;82&quot; style=&quot;margin-top:5px&quot; width=&quot;100%&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td style=&quot;padding-left:10px&quot; valign=&quot;top&quot;&gt;&lt;b&gt;CAE N&amp;ordm;:&lt;/b&gt; {cae}&lt;br /&gt;\n			&lt;b&gt;Vto:&lt;/b&gt; {vto}&lt;br /&gt;\n			&lt;img alt=&quot;&quot; height=&quot;30&quot; src=&quot;images/afipslogan.png&quot; width=&quot;auto&quot; /&gt;&lt;/td&gt;\n			&lt;td rowspan=&quot;3&quot; valign=&quot;top&quot; width=&quot;280&quot;&gt;\n			&lt;table border=&quot;0&quot; cellpadding=&quot;5&quot; cellspacing=&quot;5&quot; class=&quot;tablaiva&quot; width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td align=&quot;right&quot;&gt;&lt;strong&gt;Importe Neto Gravado: $&lt;/strong&gt;&lt;/td&gt;\n						&lt;td style=&quot;text-align: right;&quot; width=&quot;70&quot;&gt;{subtotal}&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;text-align: right;&quot;&gt;&lt;strong&gt;IVA 21%: $&lt;/strong&gt;&lt;/td&gt;\n						&lt;td style=&quot;text-align: right;&quot;&gt;{impuesto}&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td align=&quot;right&quot; class=&quot;mediano&quot;&gt;&lt;strong&gt;Importe Total: $&lt;/strong&gt;&lt;/td&gt;\n						&lt;td class=&quot;mediano&quot; style=&quot;text-align: right;&quot;&gt;{total}&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td height=&quot;28&quot; style=&quot;text-align: right;&quot; valign=&quot;bottom&quot;&gt;{barcode_afip}&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td align=&quot;center&quot; height=&quot;18&quot; valign=&quot;top&quot;&gt;{code_afip}&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n\n&lt;div class=&quot;letrafc&quot;&gt;\n&lt;div class=&quot;letratipo&quot;&gt;{a}&lt;/div&gt;\n\n&lt;div class=&quot;letracode&quot;&gt;COD. {b}&lt;/div&gt;\n&lt;/div&gt;\n&lt;style type=&quot;text/css&quot;&gt;.tabladatoemisor{\nfont-size:16px;	\n}\n\n.emisor{\nfont-size:23px;\n}\n.letracode{\nfont-size:16px;\nfont-weight:bold;\nfont-family: Arial;\n\n}\n\n.letrafc{\n	width:65px;\n	height:65px;\n	font-family: Arial;\n	border:1px solid #000000;\n	text-align:center;\n	vertical-align:middle;\n	left: 0; \n  right: 0; \n  margin-left: auto; \n  margin-right: auto;\n  top:16px;\n	position:absolute;\n	background:#FFFFFF;\n}\n.letratipo{\n	font-family: Arial;\n	font-size:45px;\n	font-family: Arial;\n	font-weight:bold;\n}\n\n\n.tablaiva td{\nborder:1px solid #000000;\nborder-radius:4px;\nbackground:#e6e6e6;	\n}\n\n.tablaitems th{\nbackground:#d0d0d0;\n}\n\n.tablaitems {\n    border-collapse: collapse;\n}\n\n.tablaitems th {\nborder-bottom:1px solid #000000;\nborder-left:1px solid #000000;\n}\n.tablaitems th:first-child{\nborder-left:none;\n}\n.tablaitems td{\n	padding:8px 5px;\n	font-size:11px;\n\n}\n\n.dvitem{\nheight: 540px;\nborder:1px solid #000000;\nmargin-top:5px;\n}\n\n\n.tablacliente{\n	border:1px solid #000000;\n	margin-top:5px;\n}\n\n.tablacliente td{\npadding:5px 10px;\n}\n\n.tablahead{\n	border:1px solid #000000;\n	margin-top:5px;\n}\n\n.tabladataemisor td{\n	padding: 1px 8px;\n\n}\n\n\ntable{\nfont-size: 12px;\nfont-family: Arial;\n}\n\n.mediano{\n	font-size:13px;\n}\n&lt;/style&gt;\n&lt;/body&gt;\n&lt;/html&gt;\n','afip','Factura AFIP','A4',0,0,'',''),(18,'&lt;html&gt;\n&lt;head&gt;\n	&lt;title&gt;&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;div style=&quot;background-color: #f6f6f6;-webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none;-webkit-text-size-adjust: none;width: 100% !important;height: 100%;line-height: 1.6;margin: 0; padding: 0;font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;box-sizing: border-box;font-size: 14px;&quot;&gt;\n&lt;table class=&quot;body-wrap&quot; style=&quot;background-color: #f6f6f6;width: 100%;&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n			&lt;td style=&quot;display: block !important; max-width: 600px !important;margin: 0 auto !important;clear: both !important;&quot; width=&quot;600&quot;&gt;\n			&lt;div style=&quot;max-width: 600px;margin: 0 auto;display: block;padding: 20px;&quot;&gt;\n			&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot; background: #fff;border: 1px solid #e9e9e9;border-radius: 3px;&quot; width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: middle;font-size: 16px;color: #fff;font-weight: 500;padding: 15px;border-radius: 3px 3px 0 0;border-bottom: 1px solid #e9e9e9;&quot;&gt;&lt;img alt=&quot;Mostrar Logo&quot; src=&quot;https://mikroimage.net/images/2018/05/26/logo_1669885_print179371efd24a0086.png&quot; style=&quot;max-height:65px;&quot; /&gt;\n						&lt;div style=&quot;width: 160px;color: #348eda;font-weight: 600;float: right;margin: 10px auto;&quot;&gt;&lt;span style=&quot;color:#339999;&quot;&gt;Anuncio&lt;/span&gt;&lt;/div&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: top;padding: 25px;&quot;&gt;\n						&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n							&lt;tbody&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0px;&quot;&gt;Querido(a) &amp;nbsp;&lt;strong&gt;{nombre_cliente},&lt;/strong&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 10px;&quot;&gt;\n									&lt;p&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;Contenido del correo&lt;/span&gt;&lt;/p&gt;\n									&lt;/td&gt;\n								&lt;/tr&gt;\n							&lt;/tbody&gt;\n						&lt;/table&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n\n			&lt;div style=&quot;width: 100%;clear: both;color: #999;padding: 20px;&quot;&gt;\n			&lt;table width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td class=&quot;aligncenter&quot; style=&quot;vertical-align: top; padding: 0px 0px 20px; font-size: 12px;&quot;&gt;&lt;strong&gt;Nota:&lt;/strong&gt;&amp;nbsp;No responda este correo, Cualquier consulta debe hacerlo &amp;nbsp;ingresando a su cuenta.&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n			&lt;/div&gt;\n			&lt;/div&gt;\n			&lt;/td&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;\n&lt;/body&gt;\n&lt;/html&gt;\n','email','plantilla de ejemplo','',0,0,'',''),(26,'<html>\n<head>\n	<title></title>\n</head>\n<body>\n<style type=\"text/css\">.pos{		width: 100%;        width: 80mm;		padding: 2px;		display: block;		word-wrap: break-word;		font-family:tahoma;		font-size:10px;        font-weight:bold;	}.table td{		word-wrap: break-word;		font-family:tahoma;		font-size:10px;        font-weight:bold;}	.pos p,.pos h4{	margin: 3px 0;    font-weight:bold;	}	.center{		text-align: center;	}	.mayu{		text-transform: uppercase;	}\n</style>\n<div class=\"pos\">Â \n<h4 class=\"center mayu\">{nombre_empresa}</h4>\n\n<h4 class=\"center\">RUC {ruc_empresa}</h4>\n\n<h4 class=\"center\">{direccion_empresa}</h4>\n\n<h4 class=\"center\">{telefono_empresa}</h4>\nÂ \n\n<p>Fecha : {fecha}</p>\n\n<p><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\">***********************************************</span></p>\n\n<p class=\"center mayu\">DescripciÃ³n</p>\n\n<p><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\">***********************************************</span></span></span></p>\n\n<p>{itempos}</p>\n\n<p><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\">***********************************************</span></span></span></p>\n\n<table border=\"0\" cellpadding=\"2\" cellspacing=\"2\" class=\"table\" style=\"width: 100%;\">\n	<tbody>\n		<tr>\n			<td style=\"text-align: right;\">DESCUENTO:</td>\n			<td style=\"text-align: left;\">{descuento}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align: right;\">TOTAL:&nbsp;</td>\n			<td style=\"text-align: left;\">{total}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align: right;\">SALDO:&nbsp;</td>\n			<td style=\"text-align: left;\">{saldo}</td>\n		</tr>\n	</tbody>\n</table>\n\n\n<p><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\">***********************************************</span></span></span></p>\n\n<p style=\"font-size: 9px\">SON: {total_letras}</p>\n\n<p><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\">***********************************************</span></span></span></p>\n\n<p>medio de pago: {forma_pago}</p>\n\n<p><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\">***********************************************</span></span></span></p>\n\n<p class=\"mayu center\" style=\"padding-top: 6px;margin-bottom: -5px;\">cliente</p>\n\n<p><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\">***********************************************</span></span></span></p>\n\n<h4>{nombre_cliente}</h4>\n\n<h4>{direccion_principal_cliente}</h4>\n\n<h4>{cedula_cliente}</h4>\n\n<h4>Fecha corte: {corte}</h4>\n\n<p><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: tahoma; font-size: 10px; font-weight: 700; background-color: rgb(255, 255, 255);\">***********************************************</span></span></span></p>\n\n<div class=\"center\"><barcode code=\"{nrecibo}\" height=\"1.7\" size=\"0.70\" type=\"EAN128A\"></barcode>\n\n<div style=\"font-family: ocrb;font-size:14px\">{nrecibo}</div>\n</div>\n\n<p>Operador: {operador}</p>\n\n<p>ImpresiÃ³n: {fecha_impresion}</p>\n</div>\n</body>\n</html>\n','recibopos','Recibo pos','80',0,0,'',''),(27,'&lt;style type=&quot;text/css&quot;&gt;.pos{		width: 100%;        max-width: 87mm;		padding: 5px;		display: block;		word-wrap: break-word;		font-family:tahoma;		font-size:11px;        font-weight:bold;	}.table td{		word-wrap: break-word;		font-family:tahoma;		font-size:12px;        font-weight:bold;}	.pos p,.pos h4{	margin: 3px 0;    font-weight:bold;	}	.center{		text-align: center;	}	.mayu{		text-transform: uppercase;	}&lt;/style&gt;&lt;div class=&quot;pos&quot;&gt;&amp;nbsp;&lt;h4 class=&quot;center mayu&quot;&gt;{nombre_empresa}&lt;/h4&gt;&lt;h4 class=&quot;center&quot;&gt;RUC {ruc_empresa}&lt;/h4&gt;&lt;h4 class=&quot;center&quot;&gt;{direccion_empresa}&lt;/h4&gt;&lt;h4 class=&quot;center&quot;&gt;{telefono_empresa}&lt;/h4&gt;&amp;nbsp;&lt;p&gt;Fecha emisi&amp;oacute;n: {fecha}&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: tahoma; font-size: 11px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;==================================&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;center mayu&quot;&gt;Descripci&amp;oacute;n&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: tahoma; font-size: 11px; font-weight: 700;&quot;&gt;==================================&lt;/span&gt;&lt;/p&gt;&lt;p&gt;{itempos}&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: tahoma; font-size: 11px; font-weight: 700;&quot;&gt;==================================&lt;/span&gt;&lt;/p&gt;&lt;table border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;2&quot; class=&quot;table&quot; style=&quot;width: 100%;&quot;&gt;	&lt;tbody&gt;		&lt;tr&gt;			&lt;td style=&quot;text-align: right;&quot;&gt;TOTAL:&amp;nbsp;&lt;/td&gt;			&lt;td style=&quot;text-align: left;&quot;&gt;{total}&lt;/td&gt;		&lt;/tr&gt;		&lt;tr&gt;			&lt;td style=&quot;text-align: right;&quot;&gt;SALDO:&amp;nbsp;&lt;/td&gt;			&lt;td style=&quot;text-align: left;&quot;&gt;{saldo}&lt;/td&gt;		&lt;/tr&gt;	&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;span style=&quot;font-family: tahoma; font-size: 11px; font-weight: 700;&quot;&gt;==================================&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 9px&quot;&gt;SON: {total_letras}&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: tahoma; font-size: 11px; font-weight: 700;&quot;&gt;==================================&lt;/span&gt;&lt;/p&gt;&lt;p&gt;medio de pago: {forma_pago}&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: tahoma; font-size: 11px; font-weight: 700;&quot;&gt;==================================&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;mayu center&quot; style=&quot;padding-top: 6px;margin-bottom: -5px;&quot;&gt;cliente&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: tahoma; font-size: 11px; font-weight: 700;&quot;&gt;==================================&lt;/span&gt;&lt;/p&gt;&lt;h4&gt;{nombre_cliente}&lt;/h4&gt;&lt;h4&gt;{direccion_principal_cliente}&lt;/h4&gt;&lt;h4&gt;{cedula_cliente}&lt;/h4&gt;&lt;h4&gt;Fecha corte: {corte}&lt;/h4&gt;&lt;p&gt;&lt;span style=&quot;font-family: tahoma; font-size: 11px; font-weight: 700;&quot;&gt;==================================&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;center&quot;&gt;&lt;barcode code=&quot;{nrecibo}&quot; height=&quot;1.7&quot; size=&quot;0.70&quot; type=&quot;EAN128A&quot;&gt;&lt;/barcode&gt;&lt;div style=&quot;font-family: ocrb;font-size:14px&quot;&gt;{nrecibo}&lt;/div&gt;&lt;/div&gt;&lt;p&gt;Operador: {operador}&lt;/p&gt;&lt;p&gt;Fecha impresi&amp;oacute;n: {fecha_impresion}&lt;/p&gt;&lt;/div&gt;','recibopos80','Recibo pos','A4',80,200,'',''),(28,'&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Transitional//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd&quot;&gt;\n&lt;html&gt;\n&lt;head&gt;\n	&lt;title&gt;&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;div style=&quot;background-color: #f6f6f6;-webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none;-webkit-text-size-adjust: none;width: 100% !important;height: 100%;line-height: 1.6;margin: 0; padding: 0;font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;box-sizing: border-box;font-size: 14px;&quot;&gt;\n&lt;table class=&quot;body-wrap&quot; style=&quot;background-color: #f6f6f6;width: 100%;&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n			&lt;td style=&quot;display: block !important; max-width: 600px !important;margin: 0 auto !important;clear: both !important;&quot; width=&quot;600&quot;&gt;\n			&lt;div style=&quot;max-width: 600px;margin: 0 auto;display: block;padding: 20px;&quot;&gt;\n			&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot; background: #fff;border: 1px solid #e9e9e9;border-radius: 3px;&quot; width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: middle;font-size: 16px;color: #fff;font-weight: 500;padding: 15px;border-radius: 3px 3px 0 0;border-bottom: 1px solid #e9e9e9;&quot;&gt;&lt;img alt=&quot;Mostrar Logo&quot; src=&quot;{url_logo}&quot; style=&quot;max-height:65px;&quot; /&gt;\n						&lt;div style=&quot;width: auto;color: #348eda;font-weight: 600;float: right;margin: 10px auto;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;span style=&quot;color:#66cccc;&quot;&gt;Notificaci&amp;oacute;n de Pago #1&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: top;padding: 25px;&quot;&gt;\n						&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n							&lt;tbody&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0px;&quot;&gt;Estimando(a) &amp;nbsp;&lt;strong&gt;{nombre_cliente},&lt;/strong&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 10px;&quot;&gt;\n									&lt;p&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;Esta notificaci&amp;oacute;n es para recordarle que tiene una factura pendiente de pago, a continuaci&amp;oacute;n&amp;nbsp; los detalles de la factura:&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Factura N&amp;ordm;:&lt;/strong&gt; {nfactura}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Monto a Pagar:&lt;/strong&gt; {total}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Fecha de Vencimiento:&lt;/strong&gt; {vencimiento}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Fecha vencimiento:&lt;/strong&gt; {corte}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Lugares de Pago:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n\n									&lt;ul&gt;\n										&lt;li&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Oficinas de Recaudo o Pago Presencial:&amp;nbsp;&lt;/strong&gt;Para ver&amp;nbsp;un listado actualizado de nuestras&amp;nbsp;oficinas o puntos de recaudo auturizados, visite nuestra web.&lt;/span&gt;&lt;/li&gt;\n										&lt;li&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Transferencia o por&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;Banco:&lt;/strong&gt;&amp;nbsp;Recordamos enviar colilla de transferencia o consignaci&amp;oacute;n al correo&amp;nbsp;facturacion@empresa.net&amp;nbsp;o enviarlo desde area de clientes. Cuenta de&amp;nbsp;Ahorros banco No.&amp;nbsp;&lt;strong&gt;1234556678&lt;/strong&gt;, Cuenta de Ahorros.&lt;/span&gt;&lt;/li&gt;\n										&lt;li&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Para ingresar al &amp;Aacute;rea de Clientes desde nuestra red y ver&amp;nbsp;su estado de cuenta&amp;nbsp;click en el Bot&amp;oacute;n &lt;strong&gt;&amp;quot;Ingresar a Mi cuenta&amp;quot;&lt;/strong&gt;.&lt;/span&gt;&lt;/li&gt;\n									&lt;/ul&gt;\n\n									&lt;div style=&quot;width: 100%;border: 1px solid #348eda;border-radius: 5px;&quot;&gt;\n									&lt;div style=&quot;width: 100%;text-align:center;background: #348eda;color: #FFF;font-weight: bold;border-radius: 3px 3px 0 0px;height: 25px;vertical-align: middle;&quot;&gt;Datos de Acceso &amp;aacute;rea clientes&lt;/div&gt;\n\n									&lt;p style=&quot;line-height: 8px;margin-left: 20px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Usuario:&lt;/strong&gt; {id_cliente}&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;margin-left: 20px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Contrase&amp;ntilde;a:&lt;/strong&gt; {codigo_cliente}&lt;/span&gt;&lt;/p&gt;\n									&lt;/div&gt;\n									&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 20px;text-align: center;&quot;&gt;&lt;a href=&quot;http://{url_portal}&quot; style=&quot;text-decoration: none; color: #FFF;background-color: #348eda;  border: solid #348eda;border-width: 8px 15px;line-height: 1.5;font-weight: bold; text-align: center;cursor: pointer;display: inline-block;border-radius: 5px;text-transform: capitalize;&quot; target=&quot;_blank&quot;&gt;Ingresar A mi cuenta&lt;/a&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 20px;&quot;&gt;&lt;span style=&quot;color:#808080;&quot;&gt;&lt;em&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;El ingreso debe hacerse autom&amp;aacute;tico desde el bot&amp;oacute;n &amp;quot;Mi cuenta&amp;quot; si est&amp;aacute; dentro de nuestra red.&lt;/span&gt;&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n							&lt;/tbody&gt;\n						&lt;/table&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n\n			&lt;div style=&quot;width: 100%;clear: both;color: #999;padding: 20px;&quot;&gt;\n			&lt;table width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td class=&quot;aligncenter&quot; style=&quot;vertical-align: top; padding: 0px 0px 20px; font-size: 12px;&quot;&gt;&lt;strong&gt;Nota:&lt;/strong&gt;&amp;nbsp;No responda este correo, Cualquier consulta debe hacerlo &amp;nbsp;ingresando a su cuenta.&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n			&lt;/div&gt;\n			&lt;/div&gt;\n			&lt;/td&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;\n&lt;/body&gt;\n&lt;/html&gt;\n','avisosms','NotificaciÃ³n de Pago #1!','',0,0,'',''),(29,'&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Transitional//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd&quot;&gt;\n&lt;html&gt;\n&lt;head&gt;\n	&lt;title&gt;&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;div style=&quot;background-color: #f6f6f6;-webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none;-webkit-text-size-adjust: none;width: 100% !important;height: 100%;line-height: 1.6;margin: 0; padding: 0;font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;box-sizing: border-box;font-size: 14px;&quot;&gt;\n&lt;table class=&quot;body-wrap&quot; style=&quot;background-color: #f6f6f6;width: 100%;&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n			&lt;td style=&quot;display: block !important; max-width: 600px !important;margin: 0 auto !important;clear: both !important;&quot; width=&quot;600&quot;&gt;\n			&lt;div style=&quot;max-width: 600px;margin: 0 auto;display: block;padding: 20px;&quot;&gt;\n			&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot; background: #fff;border: 1px solid #e9e9e9;border-radius: 3px;&quot; width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: middle;font-size: 16px;color: #fff;font-weight: 500;padding: 15px;border-radius: 3px 3px 0 0;border-bottom: 1px solid #e9e9e9;&quot;&gt;&lt;img alt=&quot;Mostrar Logo&quot; src=&quot;{url_logo}&quot; style=&quot;max-height:65px;&quot; /&gt;\n						&lt;div style=&quot;width: auto;color: #348eda;font-weight: 600;float: right;margin: 10px auto;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;span style=&quot;color:#66cccc;&quot;&gt;Notificaci&amp;oacute;n de Pago #2&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: top;padding: 25px;&quot;&gt;\n						&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n							&lt;tbody&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0px;&quot;&gt;Estimando(a) &amp;nbsp;&lt;strong&gt;{nombre_cliente},&lt;/strong&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 10px;&quot;&gt;\n									&lt;p&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;Esta notificaci&amp;oacute;n es para recordarle que tiene una factura pendiente de pago, a continuaci&amp;oacute;n los detalles de la factura:&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Factura N&amp;ordm;:&lt;/strong&gt; {nfactura}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Monto a Pagar:&lt;/strong&gt; {total}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Fecha de Vencimiento:&lt;/strong&gt; {vencimiento}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Fecha vencimiento:&lt;/strong&gt; {corte}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Lugares de Pago:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n\n									&lt;ul&gt;\n										&lt;li&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Oficinas de Recaudo o Pago Presencial:&amp;nbsp;&lt;/strong&gt;Para ver&amp;nbsp;un listado actualizado de nuestras&amp;nbsp;oficinas o puntos de recaudo auturizados, visite nuestra web.&lt;/span&gt;&lt;/li&gt;\n										&lt;li&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Transferencia o por&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;Banco:&lt;/strong&gt;&amp;nbsp;Recordamos enviar colilla de transferencia o consignaci&amp;oacute;n al correo&amp;nbsp;facturacion@empresa.net&amp;nbsp;o enviarlo desde area de clientes. Cuenta de&amp;nbsp;Ahorros banco No.&amp;nbsp;&lt;strong&gt;1234556678&lt;/strong&gt;, Cuenta de Ahorros.&lt;/span&gt;&lt;/li&gt;\n										&lt;li&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Para ingresar al &amp;Aacute;rea de Clientes desde nuestra red y ver&amp;nbsp;su estado de cuenta&amp;nbsp;click en el Bot&amp;oacute;n &lt;strong&gt;&amp;quot;Ingresar a Mi cuenta&amp;quot;&lt;/strong&gt;.&lt;/span&gt;&lt;/li&gt;\n									&lt;/ul&gt;\n\n									&lt;div style=&quot;width: 100%;border: 1px solid #348eda;border-radius: 5px;&quot;&gt;\n									&lt;div style=&quot;width: 100%;text-align:center;background: #348eda;color: #FFF;font-weight: bold;border-radius: 3px 3px 0 0px;height: 25px;vertical-align: middle;&quot;&gt;Datos de Acceso &amp;aacute;rea clientes&lt;/div&gt;\n\n									&lt;p style=&quot;line-height: 8px;margin-left: 20px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Usuario:&lt;/strong&gt; {id_cliente}&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;margin-left: 20px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Contrase&amp;ntilde;a:&lt;/strong&gt; {codigo_cliente}&lt;/span&gt;&lt;/p&gt;\n									&lt;/div&gt;\n									&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 20px;text-align: center;&quot;&gt;&lt;a href=&quot;http://{url_portal}&quot; style=&quot;text-decoration: none; color: #FFF;background-color: #348eda;  border: solid #348eda;border-width: 8px 15px;line-height: 1.5;font-weight: bold; text-align: center;cursor: pointer;display: inline-block;border-radius: 5px;text-transform: capitalize;&quot; target=&quot;_blank&quot;&gt;Ingresar A mi cuenta&lt;/a&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 20px;&quot;&gt;&lt;span style=&quot;color:#808080;&quot;&gt;&lt;em&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;El ingreso debe hacerse autom&amp;aacute;tico desde el bot&amp;oacute;n &amp;quot;Mi cuenta&amp;quot; si est&amp;aacute; dentro de nuestra red.&lt;/span&gt;&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n							&lt;/tbody&gt;\n						&lt;/table&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n\n			&lt;div style=&quot;width: 100%;clear: both;color: #999;padding: 20px;&quot;&gt;\n			&lt;table width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td class=&quot;aligncenter&quot; style=&quot;vertical-align: top; padding: 0px 0px 20px; font-size: 12px;&quot;&gt;&lt;strong&gt;Nota:&lt;/strong&gt;&amp;nbsp;No responda este correo, Cualquier consulta debe hacerlo &amp;nbsp;ingresando a su cuenta.&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n			&lt;/div&gt;\n			&lt;/div&gt;\n			&lt;/td&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;\n&lt;/body&gt;\n&lt;/html&gt;\n','avisosms2','NotificaciÃ³n de Pago #2!','',0,0,'',''),(30,'&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Transitional//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd&quot;&gt;\n&lt;html&gt;\n&lt;head&gt;\n	&lt;title&gt;&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;div style=&quot;background-color: #f6f6f6;-webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none;-webkit-text-size-adjust: none;width: 100% !important;height: 100%;line-height: 1.6;margin: 0; padding: 0;font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;box-sizing: border-box;font-size: 14px;&quot;&gt;\n&lt;table class=&quot;body-wrap&quot; style=&quot;background-color: #f6f6f6;width: 100%;&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n			&lt;td style=&quot;display: block !important; max-width: 600px !important;margin: 0 auto !important;clear: both !important;&quot; width=&quot;600&quot;&gt;\n			&lt;div style=&quot;max-width: 600px;margin: 0 auto;display: block;padding: 20px;&quot;&gt;\n			&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot; background: #fff;border: 1px solid #e9e9e9;border-radius: 3px;&quot; width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: middle;font-size: 16px;color: #fff;font-weight: 500;padding: 15px;border-radius: 3px 3px 0 0;border-bottom: 1px solid #e9e9e9;&quot;&gt;&lt;img alt=&quot;Mostrar Logo&quot; src=&quot;{url_logo}&quot; style=&quot;max-height:65px;&quot; /&gt;\n						&lt;div style=&quot;width: auto;color: #348eda;font-weight: 600;float: right;margin: 10px auto;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;span style=&quot;color:#66cccc;&quot;&gt;Notificaci&amp;oacute;n de Pago #3&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n					&lt;tr&gt;\n						&lt;td style=&quot;vertical-align: top;padding: 25px;&quot;&gt;\n						&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;\n							&lt;tbody&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0px;&quot;&gt;Estimando(a) &amp;nbsp;&lt;strong&gt;{nombre_cliente},&lt;/strong&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 10px;&quot;&gt;\n									&lt;p&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;Esta notificaci&amp;oacute;n es para recordarle que tiene una factura pendiente de pago, a continuaci&amp;oacute;n los detalles de la factura:&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Factura N&amp;ordm;:&lt;/strong&gt; {nfactura}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Monto a Pagar:&lt;/strong&gt; {total}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Fecha de Vencimiento:&lt;/strong&gt; {vencimiento}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Fecha vencimiento:&lt;/strong&gt; {corte}.&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Lugares de Pago:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n\n									&lt;ul&gt;\n										&lt;li&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Oficinas de Recaudo o Pago Presencial:&amp;nbsp;&lt;/strong&gt;Para ver&amp;nbsp;un listado actualizado de nuestras&amp;nbsp;oficinas o puntos de recaudo auturizados, visite nuestra web.&lt;/span&gt;&lt;/li&gt;\n										&lt;li&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Transferencia o por&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;Banco:&lt;/strong&gt;&amp;nbsp;Recordamos enviar colilla de transferencia o consignaci&amp;oacute;n al correo&amp;nbsp;facturacion@empresa.net&amp;nbsp;o enviarlo desde area de clientes. Cuenta de&amp;nbsp;Ahorros banco No.&amp;nbsp;&lt;strong&gt;1234556678&lt;/strong&gt;, Cuenta de Ahorros.&lt;/span&gt;&lt;/li&gt;\n										&lt;li&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;Para ingresar al &amp;Aacute;rea de Clientes desde nuestra red y ver&amp;nbsp;su estado de cuenta&amp;nbsp;click en el Bot&amp;oacute;n &lt;strong&gt;&amp;quot;Ingresar a Mi cuenta&amp;quot;&lt;/strong&gt;.&lt;/span&gt;&lt;/li&gt;\n									&lt;/ul&gt;\n\n									&lt;div style=&quot;width: 100%;border: 1px solid #348eda;border-radius: 5px;&quot;&gt;\n									&lt;div style=&quot;width: 100%;text-align:center;background: #348eda;color: #FFF;font-weight: bold;border-radius: 3px 3px 0 0px;height: 25px;vertical-align: middle;&quot;&gt;Datos de Acceso &amp;aacute;rea clientes&lt;/div&gt;\n\n									&lt;p style=&quot;line-height: 8px;margin-left: 20px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Usuario:&lt;/strong&gt; {id_cliente}&lt;/span&gt;&lt;/p&gt;\n\n									&lt;p style=&quot;line-height: 8px;margin-left: 20px;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Contrase&amp;ntilde;a:&lt;/strong&gt; {codigo_cliente}&lt;/span&gt;&lt;/p&gt;\n									&lt;/div&gt;\n									&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 20px;text-align: center;&quot;&gt;&lt;a href=&quot;http://{url_portal}&quot; style=&quot;text-decoration: none; color: #FFF;background-color: #348eda;  border: solid #348eda;border-width: 8px 15px;line-height: 1.5;font-weight: bold; text-align: center;cursor: pointer;display: inline-block;border-radius: 5px;text-transform: capitalize;&quot; target=&quot;_blank&quot;&gt;Ingresar A mi cuenta&lt;/a&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n								&lt;tr&gt;\n									&lt;td style=&quot;vertical-align: top;padding: 0 0 20px;&quot;&gt;&lt;span style=&quot;color:#808080;&quot;&gt;&lt;em&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;El ingreso debe hacerse autom&amp;aacute;tico desde el bot&amp;oacute;n &amp;quot;Mi cuenta&amp;quot; si est&amp;aacute; dentro de nuestra red.&lt;/span&gt;&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\n								&lt;/tr&gt;\n							&lt;/tbody&gt;\n						&lt;/table&gt;\n						&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n\n			&lt;div style=&quot;width: 100%;clear: both;color: #999;padding: 20px;&quot;&gt;\n			&lt;table width=&quot;100%&quot;&gt;\n				&lt;tbody&gt;\n					&lt;tr&gt;\n						&lt;td class=&quot;aligncenter&quot; style=&quot;vertical-align: top; padding: 0px 0px 20px; font-size: 12px;&quot;&gt;&lt;strong&gt;Nota:&lt;/strong&gt;&amp;nbsp;No responda este correo, Cualquier consulta debe hacerlo &amp;nbsp;ingresando a su cuenta.&lt;/td&gt;\n					&lt;/tr&gt;\n				&lt;/tbody&gt;\n			&lt;/table&gt;\n			&lt;/div&gt;\n			&lt;/div&gt;\n			&lt;/td&gt;\n			&lt;td&gt;&amp;nbsp;&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;\n&lt;/body&gt;\n&lt;/html&gt;\n','avisosms3','NotificaciÃ³n de Pago #3!','',0,0,'',''),(31,'Estimado cliente, recordamos que tiene una deuda pendiente de {total}, su fecha de corte es {corte}.','smsnotificacion','','',0,0,'',''),(32,'Estimado cliente, su factura ya se encuentra disponible {total}, su fecha de corte es {corte}.','smsfactura','','',0,0,'',''),(42,'&lt;!DOCTYPE html&gt;\n&lt;html lang=&quot;en&quot;&gt;&lt;!--&lt;![endif]--&gt;\n&lt;head&gt;&lt;meta charset=&quot;utf-8&quot; /&gt;\n	&lt;title&gt;Anuncio&lt;/title&gt;\n	&lt;meta content=&quot;width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no&quot; name=&quot;viewport&quot; /&gt;&lt;meta content=&quot;&quot; name=&quot;description&quot; /&gt;&lt;meta content=&quot;&quot; name=&quot;author&quot; /&gt;&lt;!-- ================== BEGIN BASE CSS STYLE ================== --&gt;\n	&lt;link href=&quot;../avisos/assets/plugins/bootstrap/css/bootstrap.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/plugins/font-awesome/css/font-awesome.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/css/animate.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/css/style.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/css/style-responsive.min.css&quot; rel=&quot;stylesheet&quot; /&gt;\n	&lt;link href=&quot;../avisos/assets/css/theme/default.css&quot; id=&quot;theme&quot; rel=&quot;stylesheet&quot; /&gt;&lt;!-- ================== END BASE CSS STYLE ================== --&gt;&lt;!-- ================== BEGIN BASE JS ================== --&gt;&lt;script src=&quot;../avisos/assets/plugins/pace/pace.min.js&quot;&gt;&lt;/script&gt;&lt;!-- ================== END BASE JS ================== --&gt;\n&lt;/head&gt;\n&lt;body class=&quot;active pace-done&quot; style=&quot;background: #e7d9d9&quot;&gt;\n&lt;div class=&quot;fade in&quot; id=&quot;page-container&quot;&gt;\n&lt;div class=&quot;col-md-8&quot; style=&quot;float: none;margin: 10% auto;&quot;&gt;\n&lt;div class=&quot;panel panel-danger&quot;&gt;\n&lt;div class=&quot;panel-heading&quot;&gt;\n&lt;h4 class=&quot;panel-title&quot;&gt;&lt;b&gt;&lt;i class=&quot;fa fa-bell-o fa-2x&quot;&gt;&lt;/i&gt; ANUNCIO IMPORTANTE&lt;/b&gt;&lt;/h4&gt;\n&lt;/div&gt;\n\n&lt;div class=&quot;panel-body row&quot;&gt;\n&lt;div class=&quot;col-lg-3 text-center&quot; style=&quot;margin-bottom: 30px;margin-top: 30px&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;images/logo.png&quot; style=&quot;width: 100%;max-width: 250px;&quot; /&gt;&lt;/div&gt;\n\n&lt;div class=&quot;col-lg-9&quot;&gt;\n&lt;h4 class=&quot;media-heading&quot; style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;color:#FF0000;&quot;&gt;&lt;strong&gt;MANTENIMIENTO PROGRAMADO&lt;/strong&gt;&lt;/span&gt;&lt;/h4&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Estimado &lt;strong&gt;{nombre_cliente}&lt;/strong&gt;,&lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Queremos tomar esta oportunidad para informarles que nuestra red estar&amp;aacute; fuera de l&amp;iacute;nea este 3 de Diciembre&amp;nbsp;del 2018 desde las 00:01am hasta las 8:00am , Les pedimos disculpa por cualquier inconveniente que esto les pueda crear.&lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;{facturas}&lt;/p&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Atentamente,&lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;MiEmPREsa.NET.&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- end panel-body --&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- end #page-container --&gt;&lt;!-- ================== BEGIN BASE JS ================== --&gt;&lt;script src=&quot;../avisos/assets/plugins/jquery/jquery-1.9.1.min.js&quot;&gt;&lt;/script&gt;&lt;script src=&quot;../avisos/assets/plugins/jquery/jquery-migrate-1.1.0.min.js&quot;&gt;&lt;/script&gt;&lt;script src=&quot;../avisos/assets/plugins/bootstrap/js/bootstrap.min.js&quot;&gt;&lt;/script&gt;&lt;!--[if lt IE 9]&gt;\n		&lt;script src=&quot;../avisos/assets/crossbrowserjs/html5shiv.js&quot;&gt;&lt;/script&gt;\n		&lt;script src=&quot;../avisos/assets/crossbrowserjs/respond.min.js&quot;&gt;&lt;/script&gt;\n		&lt;script src=&quot;../avisos/assets/crossbrowserjs/excanvas.min.js&quot;&gt;&lt;/script&gt;\n	&lt;![endif]--&gt;&lt;script src=&quot;../avisos/assets/plugins/jquery-cookie/jquery.cookie.js&quot;&gt;&lt;/script&gt;&lt;script src=&quot;../avisos/assets/plugins/scrollMonitor/scrollMonitor.js&quot;&gt;&lt;/script&gt;&lt;script src=&quot;../avisos/assets/js/apps.min.js&quot;&gt;&lt;/script&gt;&lt;!-- ================== END BASE JS ================== --&gt;&lt;script&gt;    \n	    $(document).ready(function() {\nApp.init();\n	    });\n	&lt;/script&gt;&lt;/body&gt;\n&lt;/html&gt;\n','publicidad','Facturas pendientes','A4',80,200,'',''),(43,'Estimado cliente, su servicio fue suspendido porque tiene una deuda pendiente de {total}. Atentamente Mi EMPRESA','smscorte','','',0,0,'',''),(44,'Estimado cliente, recordamos que tiene una deuda pendiente de {total}, su fecha de corte es {corte}.','tlnotificacion','','A4',80,200,'',''),(45,'Estimado cliente, su factura ya se encuentra disponible {total}, su fecha de corte es {corte}.','tlfactura','','A4',80,200,'',''),(46,'&lt;html&gt;\n&lt;head&gt;\n	&lt;title&gt;TITULO PLANTILLA&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;div style=&quot;padding:60px 50px&quot;&gt;\n&lt;h3 style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family:verdana,geneva,sans-serif;&quot;&gt;&lt;u&gt;CONTRATO DE SERVICIOS DE ACCESO A INTERNET Y ARRENDAMIENTO DE EQUIPOS&lt;/u&gt;&lt;/span&gt;&lt;/h3&gt;\n\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&amp;iexcl;Gracias por escoger a &lt;em&gt;{nombre_empresa}&lt;/em&gt;!&lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;Conste por el presente documento el Contrato de Servicios de Acceso a Internet y Arrendamiento de Equipos que celebran de una parte, &lt;strong&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;{nombre_empresa}&lt;/span&gt;,&lt;/strong&gt; identificada con RUC N&amp;deg; {ruc_empresa}, con domicilio en {direccion_empresa} debidamente representada por su Gerente General, &lt;strong&gt;Gerente test&lt;/strong&gt;, identificado con DNI N&amp;deg;43434343, seg&amp;uacute;n poderes inscritos en la Partida N&amp;deg; 9999 del Registro de Personas Jur&amp;iacute;dicas de Lima, (a quien en adelante se le denominar&amp;aacute;&amp;nbsp;&amp;ldquo;&lt;strong&gt;EMP&lt;/strong&gt;&amp;rdquo;); y de la otra parte, &lt;strong&gt;{nombre_cliente}&lt;/strong&gt;, identificado(a) con DNI&amp;nbsp; N&amp;deg; &lt;strong&gt;{cedula_cliente}&lt;/strong&gt;&amp;nbsp;con domicilio en &lt;strong&gt;{direccion_principal_cliente}&lt;/strong&gt; , (a quien en adelante se le denominar&amp;aacute;&amp;nbsp;&amp;ldquo;&lt;strong&gt;EL CLIENTE&lt;/strong&gt;&amp;rdquo;), en los t&amp;eacute;rminos y condiciones siguientes:&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;PRIMERA: Objeto del Contrato&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;Por el presente documento EMP se obliga a brindar a EL CLIENTE el servicio de acceso a Internet de acuerdo con las condiciones t&amp;eacute;cnicas y econ&amp;oacute;micas detalladas en el Anexo N&amp;deg;01 del presente Contrato (Detalle del Servicio Contratado), en adelante el Anexo N&amp;deg;01.&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;Por su parte, EL CLIENTE se obliga a pagar a EMP la retribuci&amp;oacute;n y dem&amp;aacute;s conceptos que se establecen en las condiciones t&amp;eacute;cnicas y econ&amp;oacute;micas detalladas en el Anexo N&amp;deg;01.&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;SEGUNDA: Plazo del Contrato&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;El plazo del presente contrato tiene car&amp;aacute;cter forzoso y esta indicado en el Anexo N&amp;deg;01. El plazo se cuenta desde la fecha de instalaci&amp;oacute;n del servicio.&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;TERCERA: Forma y Lugar de Pago&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;EL CLIENTE deber&amp;aacute;&amp;nbsp;abonar el cargo por el servicio de instalaci&amp;oacute;n, detallado en el Anexo N&amp;deg;01.&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;El monto de los cargos y/o tarifas por los diversos conceptos vinculados a la prestaci&amp;oacute;n del servicio se detallan en el Anexo N&amp;deg;01.&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;EMP podr&amp;aacute; modificar el valor de los cargos y/o tarifas en cualquier momento, previa notificaci&amp;oacute;n al cliente con una anticipaci&amp;oacute;n no menor a 30 d&amp;iacute;as respecto de la fecha de su entrada en vigencia. En caso EL CLIENTE no este de acuerdo con las nuevas tarifas, podr&amp;aacute; resolver el contrato sin obligaci&amp;oacute;n de pago alguno por lucro cesante.&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;Los cargos y/o tarifas mensuales ser&amp;aacute;n liquidados por mes adelantado y deber&amp;aacute;n pagarse a la fecha de vencimiento indicada en el comprobante correspondiente. El cargo por el servicio de instalaci&amp;oacute;n se incorporar&amp;aacute; en el primer comprobante.&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;Los cargos y/o tarifas correspondientes al primer mes de servicio se prorratear&amp;aacute;n en proporci&amp;oacute;n de los d&amp;iacute;as que transcurran entre el inicio del servicio y el &amp;uacute;ltimo d&amp;iacute;a del periodo mensual a ser facturado, m&amp;aacute;s el mes adelantado.&lt;/span&gt;&lt;/p&gt;\n\n&lt;div style=&quot;page-break-after: always&quot;&gt;&lt;span style=&quot;display: none;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/div&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;El pago se realizar&amp;aacute; en moneda nacional. Los pagos se realizar&amp;aacute;n mediante dep&amp;oacute;sito en la cuenta bancaria o en el lugar que EMP le indique a EL CLIENTE, pudiendo constar dicha indicaci&amp;oacute;n en el propio comprobante de pago.&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;Las partes acuerdan que en caso EL CLIENTE no cumpla con el pago de la retribuci&amp;oacute;n o cualquier otra suma que deba pagar a EMP en virtud del presente contrato en la oportunidad establecida, incurrir&amp;aacute; en mora autom&amp;aacute;tica, debiendo pagar adem&amp;aacute;s de los montos adeudados, los intereses moratorios m&amp;aacute;ximos permitidos por el Banco Central de Reserva del Per&amp;uacute;, sin perjuicio de la facultad de EMP de suspender la prestaci&amp;oacute;n del servicio o resolver el contrato.&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;EL CLIENTE conoce y acepta que EMP podr&amp;aacute; iniciar todas las acciones inherentes a la cobranza, incluido el env&amp;iacute;o de comunicaciones a centrales de riesgo.&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;CUARTA: Obligaciones de EMP&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;ol&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;4.1. &amp;nbsp;Proveer el servicio de conformidad con las condiciones establecidas en el presente contrato.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;4.2. &amp;nbsp;Proveer el(los) equipo(s) de acceso a la red de fibra &amp;oacute;ptica o cobre o inal&amp;aacute;mbrica, seg&amp;uacute;n sea el caso, especificados en el Anexo N&amp;deg;01 del presente contrato.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;4.3. &amp;nbsp;Brindar informaci&amp;oacute;n sobre la configuraci&amp;oacute;n que requieran los propios equipos de EL CLIENTE para que puedan usar el servicio de acceso a Internet.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;4.4. &amp;nbsp;Reemplazar sin costo para EL CLIENTE, aquellos componentes de los equipos de acceso (numeral 4.2.) que se hubieran deteriorado o que no funcionen correctamente, siempre que dicho deterioro o mal funcionamiento no se hubiera generado por culpa de EL CLIENTE o por terceros ajenos a EMP.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;4.5. &amp;nbsp;EMP contar&amp;aacute; con un centro de atenci&amp;oacute;n al cliente y soporte t&amp;eacute;cnico, en el cual EL CLIENTE podr&amp;aacute; realizar todas las consultas que crea pertinente sobre el servicio y tambi&amp;eacute;n podr&amp;aacute; recibir asesor&amp;iacute;a t&amp;eacute;cnica llamando al 708-7500.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;4.6. &amp;nbsp;A efectos de mantener los &amp;oacute;ptimos niveles de disponibilidad del servicio, EMP deber&amp;aacute; realizar tareas de mantenimiento preventivo y correctivo debiendo comunicar a EL CLIENTE, v&amp;iacute;a correo electr&amp;oacute;nico, con una anticipaci&amp;oacute;n m&amp;iacute;nima de 24 horas, la fecha en que se producir&amp;aacute; dicho mantenimiento, as&amp;iacute; como su plazo estimado de ejecuci&amp;oacute;n.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n&lt;/ol&gt;\n\n&lt;div style=&quot;page-break-after: always&quot;&gt;&lt;span style=&quot;display: none;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/div&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;QUINTA: Obligaciones de EL CLIENTE&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;ol&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;5.1. &amp;nbsp;Pagar la retribuci&amp;oacute;n y los dem&amp;aacute;s conceptos en la oportunidad convenida, de acuerdo a lo establecido en las cl&amp;aacute;usulas primera y tercera.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;5.2. &amp;nbsp;Permitir el acceso a sus instalaciones del personal autorizado y debidamente identificado de EMP para efectuar inspecciones respecto al correcto cumplimiento del presente contrato.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;5.3. &amp;nbsp;Abstenerse de ceder, total o parcialmente, los derechos y obligaciones que surgen del presente contrato, as&amp;iacute; como compartir el servicio con terceros, o proveerlo a terceros, sea en forma onerosa o gratuita.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;5.4. &amp;nbsp;Obligarse a mantener indemne a EMP por cualquier transacci&amp;oacute;n que EL CLIENTE realice a trav&amp;eacute;s de la red y mediante la utilizaci&amp;oacute;n del servicio.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;5.5. &amp;nbsp;A la terminaci&amp;oacute;n del contrato restituir a EMP el(los) equipo(s) correspondientes a&lt;/span&gt;&lt;/p&gt;\n\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;la instalaci&amp;oacute;n del servicio en perfecto estado de funcionamiento, salvo aquellas consecuencias propias del buen uso y transcurso del tiempo. En caso de incumplimiento de lo establecido precedentemente, EL CLIENTE deber&amp;aacute;&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n&lt;/ol&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;abonar a EMP el valor de reposici&amp;oacute;n del equipo equivalente a su valor de&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;mercado al momento del pago.&lt;/span&gt;&lt;/p&gt;\n\n&lt;ol start=&quot;6&quot;&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;5.6. &amp;nbsp;Responsabilizarse por la compatibilidad de los equipos de su propiedad con la&lt;/span&gt;&lt;/p&gt;\n\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;red de EMP, as&amp;iacute; como por el mantenimiento y correcto funcionamiento de los mismos. Asimismo, no podr&amp;aacute; hacer cambios ni modificaciones o reparaciones en las instalaciones o circuitos utilizados o que formen parte del servicio, salvo autorizaci&amp;oacute;n expresa y por escrito de EMP.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;5.7. &amp;nbsp;Pagar el costo de reactivaci&amp;oacute;n que corresponda en caso se suspenda el Servicio por causas que le fueran imputables.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;5.8. &amp;nbsp;Utilizar el Servicio &amp;uacute;nicamente para los fines establecidos en el presente contrato, quedando prohibido a realizar cualquier uso distinto, siendo responsable por los da&amp;ntilde;os que su uso indebido pudiera ocasionar.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n&lt;/ol&gt;\n\n&lt;div style=&quot;page-break-after: always&quot;&gt;&lt;span style=&quot;display: none;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/div&gt;\n\n&lt;ol start=&quot;6&quot;&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;5.9. &amp;nbsp;EL CLIENTE declara expresamente y deja constancia que ha recibido la Cartilla de Informaci&amp;oacute;n de las Condiciones de Uso y Directiva de Reclamos, habiendo sido debidamente informado de su existencia y contenido, el cual figura en la p&amp;aacute;gina web: www.EMP.com.pe.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n&lt;/ol&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;SEXTA: Interrupci&amp;oacute;n yo suspensi&amp;oacute;n del servicio&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;ol&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;6.1. &amp;nbsp;El incumplimiento por parte EL CLIENTE, de las obligaciones asumidas por medio del presente contrato, faculta a EMP a suspender en cualquier momento la prestaci&amp;oacute;n del servicio.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;6.2. &amp;nbsp;EMP podr&amp;aacute; suspender el servicio sin previo aviso ante la existencia de motivos de urgencia que as&amp;iacute; lo exijan. EMP no ser&amp;aacute; responsable por da&amp;ntilde;os y perjuicios directos o indirectos, da&amp;ntilde;o emergente, lucro cesante, p&amp;eacute;rdidas de datos ni cualquier otro da&amp;ntilde;o derivado que pudiera generarse para EL CLIENTE o a terceros por la falta de prestaci&amp;oacute;n de los servicios o mal funcionamiento, cualquiera fuera el motivo. Si la interrupci&amp;oacute;n se realizase sin previo aviso, EMP har&amp;aacute; sus mejores esfuerzos para restituir la conexi&amp;oacute;n del servicio.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n&lt;/ol&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;SEPTIMA: Resoluci&amp;oacute;n&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;EMP podr&amp;aacute; resolver el presente contrato de conformidad con lo establecido en el art&amp;iacute;culo 1430&amp;deg; del C&amp;oacute;digo Civil en los siguientes casos:&lt;/span&gt;&lt;/p&gt;\n\n&lt;ol&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;7.1. &amp;nbsp;Si EL CLIENTE incumple cualquiera de las obligaciones se&amp;ntilde;aladas en las cl&amp;aacute;usulas: primera, tercera y quinta.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;7.2. &amp;nbsp;Si EMP demuestra que ya no existen las facilidades t&amp;eacute;cnicas para la prestaci&amp;oacute;n del servicio.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n	&lt;li&gt;\n	&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;7.3. &amp;nbsp;El CLIENTE podr&amp;aacute; resolver el presente contrato de conformidad con el art&amp;iacute;culo 1430&amp;deg; del C&amp;oacute;digo Civil en caso EMP no cumpla con las obligaciones se&amp;ntilde;aladas en la cl&amp;aacute;usula cuarta del presente contrato.&lt;/span&gt;&lt;/p&gt;\n	&lt;/li&gt;\n&lt;/ol&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;En cualquiera de los casos antes citados la resoluci&amp;oacute;n se produce de pleno derecho, bastando para ello que una de las partes le comunique la resoluci&amp;oacute;n del contrato de acuerdo a lo establecido por el art&amp;iacute;culo 1430&amp;deg; del C&amp;oacute;digo Civil.&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;En cualquier caso de resoluci&amp;oacute;n, EL CLIENTE deber&amp;aacute; pagar por el servicio efectivamente prestado.&lt;/span&gt;&lt;/p&gt;\n\n&lt;div style=&quot;page-break-after: always&quot;&gt;&lt;span style=&quot;display: none;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/div&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;OCTAVA: Cesi&amp;oacute;n de Posici&amp;oacute;n Contractual&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;EMP queda autorizada a ceder su posici&amp;oacute;n contractual o cualquier derecho u obligaci&amp;oacute;n derivado del presente contrato a cualquier empresa controlada por, controlante de, o que se encuentre bajo control com&amp;uacute;n de EMP, para lo cual EL CLIENTE manifiesta su&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;conformidad en forma anticipada. Para tal efecto, EMP notificar&amp;aacute; a EL CLIENTE mediante comunicaci&amp;oacute;n escrita.&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;NOVENA: Domicilios&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;Las partes se&amp;ntilde;alan como sus domicilios, para todo efecto contractual, los indicados en la introducci&amp;oacute;n del presente contrato, no surtiendo efectos su variaci&amp;oacute;n sin una notificaci&amp;oacute;n por escrito con cargo a la otra parte con una anticipaci&amp;oacute;n de siete (7) d&amp;iacute;as calendario. Sin perjuicio de lo anterior, se deja establecido que EMP podr&amp;aacute; efectuar dicha comunicaci&amp;oacute;n mediante la publicaci&amp;oacute;n de un aviso en un diario de circulaci&amp;oacute;n nacional, en cuyo caso, el cambio de domicilio surtir&amp;aacute; efectos desde el d&amp;iacute;a siguiente de dicha publicaci&amp;oacute;n.&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;D&amp;Eacute;CIMA: Jurisdicci&amp;oacute;n y Ley Aplicable&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;Son aplicables al presente contrato las disposiciones del c&amp;oacute;digo civil peruano, y las normas que en materia de servicios de valor agregado de telecomunicaciones dicten las autoridades reguladores peruanas.&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;El presente contrato se regir&amp;aacute; e interpretar&amp;aacute;&amp;nbsp;conforme la legislaci&amp;oacute;n peruana. Las partes se someten a la jurisdicci&amp;oacute;n de los tribunales ordinarios de la ciudad de Lima, renunciando a cualquier otro fuero o jurisdicci&amp;oacute;n que pudiera corresponder.&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: right;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;strong&gt;Lima {fecha_actual}&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width:100%;&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td style=&quot;text-align: center;width: 50%;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;{nombre_empresa}&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;\n			&lt;td style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;EL CLIENTE&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;/span&gt;&lt;/td&gt;\n			&lt;td&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;/span&gt;&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td style=&quot;vertical-align: bottom; height: 150px; text-align: center;&quot;&gt;\n			&lt;div style=&quot;width: 100%;text-align: center;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;images/firmacontrato.jpg&quot; style=&quot;width: 150px; height: 150px;&quot; /&gt;&lt;/div&gt;\n			&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;_________________________________&lt;/span&gt;&lt;/td&gt;\n			&lt;td style=&quot;vertical-align: bottom; text-align: center;&quot;&gt;\n			&lt;div style=&quot;width: 100%;text-align: center;&quot;&gt;{firma_cliente}&lt;/div&gt;\n			&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;_________________________________&lt;/span&gt;&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Representante Legal&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;\n			&lt;td style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;{nombre_cliente}&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;DNI 96969696&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;\n			&lt;td style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;DNI {cedula_cliente}&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n\n&lt;div style=&quot;page-break-after: always&quot;&gt;&lt;span style=&quot;display: none;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/div&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;h2 style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;ANEXO 1&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Por medio del presente, EMP y EL CLIENTE acuerdan las condiciones t&amp;eacute;cnicas y comerciales del servicio de acceso a Internet y arrendamiento de equipos, seg&amp;uacute;n se detalla a continuaci&amp;oacute;n:&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;1.- DESCRIPCI&amp;Oacute;N DEL PLAN DE SERVICIO Y CONDICIONES COMERCIALES&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;table border=&quot;1&quot; cellpadding=&quot;5&quot; cellspacing=&quot;0&quot; class=&quot;table&quot; style=&quot;width:100%;&quot; width=&quot;100%&quot;&gt;\n	&lt;thead&gt;\n		&lt;tr&gt;\n			&lt;th align=&quot;center&quot; style=&quot;background-color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;color:#FFFFFF;&quot;&gt;&lt;b&gt;Nombre del Plan&lt;/b&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/th&gt;\n			&lt;th align=&quot;center&quot; style=&quot;background-color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;color:#FFFFFF;&quot;&gt;&lt;b&gt;Carga&lt;/b&gt;&lt;/span&gt;&lt;span style=&quot;color:#FFFF00;&quot;&gt;&lt;b&gt; *&lt;/b&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/th&gt;\n			&lt;th align=&quot;center&quot; style=&quot;background-color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;color:#FFFFFF;&quot;&gt;&lt;b&gt;Descarga &lt;/b&gt;&lt;/span&gt;&lt;span style=&quot;color:#FFFF00;&quot;&gt;&lt;b&gt;*&lt;/b&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/th&gt;\n			&lt;th align=&quot;center&quot; style=&quot;background-color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;color:#FFFFFF;&quot;&gt;Cargo mensual&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/th&gt;\n		&lt;/tr&gt;\n	&lt;/thead&gt;\n	&lt;tbody data=&quot;servicios&quot;&gt;\n		&lt;tr&gt;\n			&lt;td class=&quot;servicios&quot; colspan=&quot;4&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;no modificar&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n\n&lt;table border=&quot;1&quot; cellpadding=&quot;5&quot; cellspacing=&quot;0&quot; class=&quot;table srv2&quot; style=&quot;width:100%;margin-top:20px&quot; width=&quot;100%&quot;&gt;\n	&lt;thead&gt;&lt;tr&gt;\n		&lt;th align=&quot;center&quot; style=&quot;background-color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;color:#FFFFFF;&quot;&gt;&lt;b&gt;Servicio&lt;/b&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/th&gt;\n		&lt;th align=&quot;center&quot; style=&quot;background-color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;font color=&quot;#ffffff&quot;&gt;&lt;span style=&quot;font-size: 11px;&quot;&gt;Precio&lt;/span&gt;&lt;/font&gt;&lt;/span&gt;&lt;/th&gt;\n		&lt;/tr&gt;\n	&lt;/thead&gt;\n	&lt;tbody data=&quot;servicios2&quot;&gt;&lt;tr&gt;&lt;td class=&quot;servicios2&quot; colspan=&quot;2&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;no modificar&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;&lt;table border=&quot;1&quot; cellpadding=&quot;5&quot; cellspacing=&quot;0&quot; class=&quot;table&quot; style=&quot;width:100%;margin-top:20px&quot; width=&quot;100%&quot;&gt;\n	&lt;thead&gt;\n		&lt;tr&gt;\n			&lt;th align=&quot;center&quot; style=&quot;background-color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;color:#FFFFFF;&quot;&gt;&lt;b&gt;Equipo&lt;/b&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/th&gt;\n			&lt;th align=&quot;center&quot; style=&quot;background-color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;font color=&quot;#ffffff&quot;&gt;&lt;span style=&quot;font-size: 11px;&quot;&gt;Serial&lt;/span&gt;&lt;/font&gt;&lt;/span&gt;&lt;/th&gt;\n			&lt;th align=&quot;center&quot; style=&quot;background-color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;font color=&quot;#ffffff&quot;&gt;&lt;span style=&quot;font-size: 11px;&quot;&gt;Mac&lt;/span&gt;&lt;/font&gt;&lt;/span&gt;&lt;/th&gt;\n			&lt;th align=&quot;center&quot; style=&quot;background-color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;color:#FFFFFF;&quot;&gt;Precio&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/th&gt;\n			&lt;th align=&quot;center&quot; style=&quot;background-color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:11px;&quot;&gt;&lt;span style=&quot;color:#FFFFFF;&quot;&gt;Detalles&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/th&gt;\n		&lt;/tr&gt;\n	&lt;/thead&gt;\n	&lt;tbody data=&quot;equipos&quot;&gt;\n		&lt;tr&gt;\n			&lt;td class=&quot;equipos&quot; colspan=&quot;5&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;no modificar&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;em&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;* &lt;/strong&gt;En los momentos de mayor tr&amp;aacute;fico, las velocidades de carga y descarga pueden ser inferiores a las indicadas en el cuadro precedente; sin embargo, &amp;eacute;stas no ser&amp;aacute;n inferiores al cuarenta por ciento (20%) de las velocidades indicadas (en adelante, la &lt;strong&gt;&amp;ldquo;Velocidad M&amp;iacute;nima Garantizada&amp;rdquo;&lt;/strong&gt;).&lt;/span&gt;&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;em&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;/span&gt;&lt;/em&gt;&lt;strong style=&quot;font-family: verdana, geneva, sans-serif; font-size: 14px;&quot;&gt;2.- PLAZO DEL CONTRATO&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;El contrato inicia el &lt;strong&gt;{contrato_inicio}&lt;/strong&gt; y finaliza el &lt;strong&gt;{contrato_fin}&lt;/strong&gt;, con una duraci&amp;oacute;n de &lt;strong&gt;{contrato_duracion}&lt;/strong&gt; meses.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;3.- FORMA DE PAGO&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Facturaci&amp;oacute;n mensual adelantada.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;1&quot; cellspacing=&quot;1&quot; style=&quot;width:100%;&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td style=&quot;text-align: center;width: 50%;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;{nombre_empresa}&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;\n			&lt;td style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;strong&gt;EL CLIENTE&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;/span&gt;&lt;/td&gt;\n			&lt;td&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;/span&gt;&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td style=&quot;vertical-align: bottom; height: 150px; text-align: center;&quot;&gt;\n			&lt;div style=&quot;width: 100%;text-align: center;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;images/firmacontrato.jpg&quot; style=&quot;width: 150px; height: 150px;&quot; /&gt;&lt;/div&gt;\n			&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;_________________________________&lt;/span&gt;&lt;/td&gt;\n			&lt;td style=&quot;vertical-align: bottom; text-align: center;&quot;&gt;\n			&lt;div style=&quot;width: 100%;text-align: center;&quot;&gt;{firma_cliente}&lt;/div&gt;\n			&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;_________________________________&lt;/span&gt;&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;Representante Legal&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;\n			&lt;td style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;strong&gt;{nombre_cliente}&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;DNI 96969696&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;\n			&lt;td style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family:tahoma,geneva,sans-serif;&quot;&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;DNI {cedula_cliente}&lt;/span&gt;&lt;/span&gt;&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;span style=&quot;font-family:verdana,geneva,sans-serif;&quot;&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;/div&gt;\n&lt;/body&gt;\n&lt;/html&gt;\n','contrato','CONTRATO','A4',0,0,'',''),(47,'&lt;!doctype html&gt;\n&lt;html&gt;\n&lt;head&gt;&lt;meta charset=&quot;UTF-8&quot;&gt;\n	&lt;title&gt;Factura Electr&amp;oacute;nica&lt;/title&gt;\n	&lt;style type=&quot;text/css&quot;&gt;body {\n       margin: 0;\n      }\n\n      table {\n       border-collapse: collapse;\n       border-spacing: 0;\n      }\n\n      td,\n      th {\n       padding-left: 0;\n       padding-right: 0;\n       padding-bottom: 0;\n       padding-top: 0;\n      }\n\n      body {\n       font-size: 9pt;\n       color: #000000;\n       line-height: 1.125em;\n      }\n      div.ride-container .component .col40 {\n       width: 40%;\n      }\n      div.ride-containet .component .col60 {\n       width: 60%;\n      }\n      div.ride-container .component td.col50 {\n        width: 49%;\n      }\n      div.ride-container .component td.col50:first-child {\n        padding-right: 1%;\n      }\n      div.ride-container .component td.col50:last-child {\n        padding-left: 1%;\n      }\n      div.ride-container {\n      }\n      div.ride-container .component {\n       width: 100%;\n       margin: 2px 0px 2px 0px;\n      }\n      div.ride-container table.component:first-of-type {\n        margin-top: 0;\n      }\n      .top {\n       vertical-align: top;\n      }\n      .right {\n       text-align: right;\n      }\n      .left {\n       text-align: left;\n      }\n\n      .label {\n       font-weight: bold;\n      }\n      div.ride-container .component h1,h2,h3,h4 {\n       margin: 0 0 10px 0;\n      }\n      div.ride-container .component td.number {\n        text-align: right;\n      }\n      div.ride-container .component td.number h2,h4 {\n       margin: 0 0 15px 0;\n       font-weight: normal;\n      }\n      div.ride-container .component td,th {\n       padding: 3px 0px 4px 0px;\n      }\n      div.ride-container .items th, div.ride-container .items td {\n      padding: 10px 10px 10px 0;\n      }\n      div.ride-container .items th:last-child,\n      div.ride-container .items td:last-child {\n      padding: 10px 0 10px 0;\n      }\n      div.ride-container .items.payment-methods th,\n      div.ride-container .items.payment-methods td {\n      }\n      div.ride-container .items &gt; tbody &gt; tr:first-child &gt; td {\n      padding-top: 15px;\n      }\n      div.ride-container .items tr td {\n      border-bottom: 1px solid #d9d9d9;\n      }\n      div.ride-container .items tr:last-child td {\n      border-bottom: none;\n      }\n      div.ride-container .items th {\n      border-bottom: 1px solid #ccc;\n      border-top: 1px solid #ccc;\n      }\n      div.ride-container table.items.printable &gt; tbody &gt; tr &gt; td ,\n      div.ride-container table.items.printable &gt; tbody &gt; tr &gt; th {\n          page-break-inside: avoid;\n      }\n      div.ride-container .component .pad-left {\n       padding-left: 20px;\n      }\n      div.ride-container .items table.detalles-adicionales {\n      margin-top: 4px;\n      margin-left: 5px;\n      }\n      div.ride-container .items table.detalles-adicionales td,\n      div.ride-container .items table.detalles-adicionales th {\n      padding: 5px 0;\n      border: none;\n      }\n      .clearfix {\n      overflow: auto;\n      zoom: 1;\n      }\n\n\n      hr{\n        display: block;\n        height: 1px;\n        background: transparent;\n        width: 100%;\n        border: none;\n        border-top: solid 1px #aaa;\n      }\n\n      div.ride-container .totals {\n      width: 50%;\n      float: left;\n      }\n      .receipt-logo {\n      padding-right: 50px !important;\n      height: 85px;\n      }\n      .receipt-logo img {\n      max-width: 100%;\n      height: auto;\n      max-height: 100%;\n      }\n\n\n\n      html {\n      font-family: &quot;Arial&quot;;\n      }\n      h1, h2, h3, th, .label, strong, .status-label {\n      font-family: &quot;Arial&quot;;\n        font-size: 11px;\n      }\n      .status-label {\n      border: 3px solid #666666;\n      border-radius: 5px;\n      padding: 6px 8px;\n      font-size: 11px;\n      margin-left: 0px;\n      }\n      .status-label-success {\n      border-color: #35cc1f;\n      color: #35cc1f;\n      font-weight: bold;\n      }\n      .authnumber {\n        hyphens: auto;\n        word-break: break-all;\n        font-size: 9pt;\n      }\n\n      body { margin: 0 auto !important; }\n      html, body {\n        width: 210mm;\n        height: 297mm;\n        margin: 0 auto !important;\n      }\n      div.ride-container {\n        margin: 0;\n        padding: 0;\n        width: 100%;\n        box-shadow: none;\n        border-radius: none;\n        position: relative;\n      }\n      div.ride-container .component td.number h2 {\n        font-size: 15pt;\n      }\n      div.ride-container .component td.number h4 {\n        font-size: 11pt;\n      }\n      div.ride-container div.items-container &gt; table.item &gt; tbody &gt; tr &gt; td {\n        border-top: 1px solid #d9d9d9;\n        border-bottom: none;\n      }\n      div.ride-container div.items-container table.item &gt; tbody &gt; tr:first-child &gt; td {\n        padding: 10px 10px 10px 0;\n      }\n      div.ride-container div.items-container table.item &gt; tbody &gt; tr:first-child &gt; td:last-child {\n        padding: 10px 0 10px 0;\n      }\n      div.ride-container div.items-container table.item {\n        margin: 0;\n      }\n      div.ride-container div.items-container table.item:first-child &gt; tbody &gt; tr &gt; td {\n        border-top: none;\n      }\n      div.ride-container .component td.authnumber {\n        /*font-size: 8pt;*/\n        padding-bottom: 8px;\n      }\n\n    .itemtd{\n    font-weight: bold;\n    }\n	&lt;/style&gt;\n&lt;/head&gt;\n&lt;body class=&quot;screen&quot;&gt;\n&lt;div class=&quot;ride-container&quot;&gt;\n&lt;style type=&quot;text/css&quot;&gt;div.ride-container table.items.printable &gt; tbody &gt; tr div,\n            div.ride-container table.items.printable,\n            div.ride-container div.items-container table.item {\n                page-break-inside: avoid;\n            }\n            div.ride-container table.items.printable &gt; tbody &gt; tr p {\n                page-break-inside: avoid;\n                margin: 0;\n                padding: 2px;\n            }\n            div.ride-container .reimbursement_totals {\n                width: 50%;\n                float: right;\n            }\n            .status-label {\n                position: absolute;\n                top: 8px;\n                left: 50%;\n            }\n            .status-label-danger {\n                border: 2px solid #ff5252;\n                background: #fff;\n                color: #ff5252;\n            }\n\n            \nbody{\nwidth:100%;\nheight:100%;\n}\n\nbody,td,th {\nfont-family: Arial;\nfont-size: 10.5px;  \n}\n    th{\n    color: #fff;\n    text-transform: uppercase;\n    }\n    .dnone{\n    display: none !important;\n    visibility: hidden;\n    }\n    \n    .tablatencion{\n    border: 1px solid #017AFF;  \n    }\n    \n    .p6{\n    padding: 6px !important;\n    }\n&lt;/style&gt;\n&lt;table class=&quot;component&quot;&gt;\n	&lt;tbody&gt;&lt;tr&gt;&lt;td align=&quot;center&quot; valign=&quot;middle&quot; width=&quot;52%&quot;&gt;&lt;img alt=&quot;Logo&quot; src=&quot;../admin/images/logofactura.png&quot; style=&quot;max-width: 320px&quot; /&gt;&lt;/td&gt;&lt;td class=&quot;top&quot; width=&quot;48%&quot;&gt;\n		&lt;table class=&quot;component&quot;&gt;\n			&lt;tbody&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; style=&quot;font-size: 12px&quot;&gt;&lt;strong&gt;FACTURA ELECTR&amp;Oacute;NICA DE VENTA&lt;/strong&gt;&lt;/td&gt;&lt;td align=&quot;right&quot; rowspan=&quot;7&quot; valign=&quot;middle&quot; width=&quot;28%&quot;&gt;&lt;barcode class=&quot;barcode&quot; code=&quot;{QR}&quot; error=&quot;M&quot; size=&quot;1.3&quot; type=&quot;QR&quot;&gt;&lt;/barcode&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;left&quot; style=&quot;font-size: 11px&quot; width=&quot;42%&quot;&gt;&lt;b&gt;NUM. DOC.&lt;/b&gt;&lt;/td&gt;&lt;td style=&quot;font-size: 12px&quot; width=&quot;30%&quot;&gt;&lt;b&gt;:&lt;/b&gt; &lt;span style=&quot;font-size: 14px; font-weight:bold&quot;&gt;{folio}&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;left&quot; style=&quot;font-size: 11px&quot;&gt;&lt;b&gt;FECHA EMISI&amp;Oacute;N&lt;/b&gt;&lt;/td&gt;&lt;td style=&quot;font-size: 12px&quot;&gt;&lt;b&gt;:&lt;/b&gt; {fecha_emision}&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;left&quot; style=&quot;font-size: 11px&quot;&gt;&lt;b&gt;FECHA VENCIMIENTO&lt;/b&gt;&lt;/td&gt;&lt;td style=&quot;font-size: 12px&quot;&gt;&lt;b&gt;:&lt;/b&gt; {fecha_vencimiento}&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;left&quot; style=&quot;font-size: 11px&quot;&gt;&lt;b&gt;FECHA PAGO OPORTUNO&lt;/b&gt;&lt;/td&gt;&lt;td style=&quot;font-size: 12px&quot;&gt;&lt;b&gt;:&lt;/b&gt; {fecha_oportuno}&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;left&quot; style=&quot;font-size: 11px&quot;&gt;&lt;b&gt;FECHA CORTE&lt;/b&gt;&lt;/td&gt;&lt;td style=&quot;font-size: 12px&quot;&gt;&lt;b&gt;:&lt;/b&gt; {fecha_corte}&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;left&quot;&gt;{referencia}&lt;/td&gt;&lt;td&gt;{docreferencia}&lt;/td&gt;&lt;/tr&gt;\n			&lt;/tbody&gt;\n		&lt;/table&gt;\n		&lt;/td&gt;&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n\n&lt;hr /&gt;\n&lt;table class=&quot;component&quot;&gt;\n	&lt;tbody&gt;&lt;tr&gt;&lt;td align=&quot;center&quot; colspan=&quot;2&quot;&gt;&lt;b&gt;N&amp;deg;.Resoluci&amp;oacute;n:&lt;/b&gt; 000000000000000000 &lt;b&gt;Prefijo:&lt;/b&gt; {prefijo} &lt;b&gt;Consecutivo: &lt;/b&gt; {consecutivo} &lt;b&gt;Fecha: &lt;/b&gt; {fecha_consecutivo}&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td class=&quot;top col50&quot;&gt;\n		&lt;table class=&quot;component&quot;&gt;\n			&lt;tbody&gt;&lt;tr&gt;&lt;td bgcolor=&quot;#017AFF&quot; colspan=&quot;2&quot; style=&quot;text-align: center;padding: 6px;margin-bottom: 10px;&quot;&gt;\n				&lt;h3 style=&quot;padding-bottom: 0px;margin-bottom: 0px;color: #fff;&quot;&gt;Datos del Emisor&lt;/h3&gt;\n				&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;20%&quot;&gt;&lt;span class=&quot;itemtd&quot;&gt;Razon social&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;80%&quot;&gt;&lt;b&gt;:&lt;/b&gt; MI EMPRESA&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;span class=&quot;itemtd&quot;&gt;NIT&lt;/span&gt;&lt;/td&gt;&lt;td&gt;&lt;b&gt;:&lt;/b&gt; 999999999&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;span class=&quot;itemtd&quot;&gt;Direcci&amp;oacute;n&lt;/span&gt;&lt;/td&gt;&lt;td&gt;&lt;b&gt;:&lt;/b&gt; Av. xxxxxxxxxxx Bogot&amp;aacute; D.C.&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;span class=&quot;itemtd&quot;&gt;Actividad E.&lt;/span&gt;&lt;/td&gt;&lt;td&gt;&lt;b&gt;:&lt;/b&gt; 0111&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;span class=&quot;itemtd&quot;&gt;Tel&amp;eacute;fono&lt;/span&gt;&lt;/td&gt;&lt;td&gt;&lt;b&gt;:&lt;/b&gt; 000000 - 000000&lt;/td&gt;&lt;/tr&gt;\n			&lt;/tbody&gt;\n		&lt;/table&gt;\n		&lt;/td&gt;&lt;td class=&quot;top col50 pad-left&quot;&gt;\n		&lt;table class=&quot;component&quot;&gt;\n			&lt;tbody&gt;&lt;tr&gt;&lt;td bgcolor=&quot;#017AFF&quot; colspan=&quot;2&quot; style=&quot;text-align: center;padding: 6px;margin-bottom: 10px;&quot;&gt;\n				&lt;h3 style=&quot;padding-bottom: 0px;margin-bottom: 0px;color: #fff;&quot;&gt;Datos del adquiriente&lt;/h3&gt;\n				&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;18%&quot;&gt;&lt;span class=&quot;itemtd&quot;&gt;Nombre&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;82%&quot;&gt;&lt;b&gt;:&lt;/b&gt; {razon_social}&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;span class=&quot;itemtd&quot;&gt;{tdoc}&lt;/span&gt;&lt;/td&gt;&lt;td&gt;&lt;b&gt;:&lt;/b&gt; {nit}&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;span class=&quot;itemtd&quot;&gt;Direcci&amp;oacute;n&lt;/span&gt;&lt;/td&gt;&lt;td&gt;&lt;b&gt;:&lt;/b&gt; {direccion}&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;span class=&quot;itemtd&quot;&gt;Ciudad&lt;/span&gt;&lt;/td&gt;&lt;td&gt;&lt;b&gt;:&lt;/b&gt; {ciudad}&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;span class=&quot;itemtd&quot;&gt;Tel&amp;eacute;fono&lt;/span&gt;&lt;/td&gt;&lt;td&gt;&lt;b&gt;:&lt;/b&gt; {telefono_cliente}&lt;/td&gt;&lt;/tr&gt;\n			&lt;/tbody&gt;\n		&lt;/table&gt;\n		&lt;/td&gt;&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n\n&lt;table class=&quot;component items printable&quot; style=&quot;margin-bottom: 0;&quot;&gt;\n	&lt;tbody&gt;&lt;tr&gt;\n		&lt;th align=&quot;center&quot; bgcolor=&quot;#017AFF&quot; class=&quot;center&quot; width=&quot;11%&quot;&gt;Cantidad&lt;/th&gt;\n		&lt;th align=&quot;left&quot; bgcolor=&quot;#017AFF&quot; class=&quot;center&quot; width=&quot;59%&quot;&gt;Descripci&amp;oacute;n&lt;/th&gt;\n		&lt;th align=&quot;right&quot; bgcolor=&quot;#017AFF&quot; class=&quot;center&quot; width=&quot;15%&quot;&gt;Precio unitario&lt;/th&gt;\n		&lt;th align=&quot;right&quot; bgcolor=&quot;#017AFF&quot; class=&quot;center&quot; width=&quot;15%&quot;&gt;Subtotal&lt;/th&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n\n&lt;div class=&quot;items-container&quot;&gt;{detalles_factura}&lt;/div&gt;\n&lt;!--/tbody&gt;&lt;/table--&gt;\n\n&lt;hr /&gt;\n&lt;div class=&quot;{dtable}&quot;&gt;\n&lt;table class=&quot;component items printable&quot; style=&quot;width: 100%;&quot;&gt;\n	&lt;tbody style=&quot;width: 100%&quot;&gt;&lt;tr&gt;&lt;td colspan=&quot;3&quot;&gt;\n		&lt;h3 style=&quot;padding-bottom: 0px;margin-bottom: 0px;&quot;&gt;Descuentos y Recargos Globales&lt;/h3&gt;\n		&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;\n		&lt;th align=&quot;center&quot; bgcolor=&quot;#017AFF&quot; class=&quot;left&quot; width=&quot;15%&quot;&gt;Tipo&lt;/th&gt;\n		&lt;th bgcolor=&quot;#017AFF&quot; class=&quot;left&quot; width=&quot;70%&quot;&gt;Descripci&amp;oacute;n&lt;/th&gt;\n		&lt;th bgcolor=&quot;#017AFF&quot; class=&quot;right&quot; width=&quot;15%&quot;&gt;Monto&lt;/th&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;\n\n&lt;div class=&quot;items-container {dtable}&quot;&gt;{detalles_cargos}\n&lt;hr /&gt;&lt;/div&gt;\n\n&lt;div class=&quot;clearfix&quot;&gt;\n&lt;table class=&quot;component totals&quot; style=&quot;width: 100%&quot;&gt;\n	&lt;tbody&gt;&lt;tr&gt;&lt;td align=&quot;center&quot; colspan=&quot;2&quot;&gt;&amp;nbsp;&lt;/td&gt;&lt;td class=&quot;label right&quot;&gt;MONEDA&lt;/td&gt;&lt;td class=&quot;right&quot;&gt;&lt;span class=&quot;label right&quot;&gt;COP&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;center&quot; colspan=&quot;2&quot;&gt;&amp;nbsp;&lt;/td&gt;&lt;td class=&quot;label right&quot; width=&quot;23%&quot;&gt;SUBTOTAL&lt;/td&gt;&lt;td class=&quot;right&quot; width=&quot;17%&quot;&gt;{subtotal}&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;center&quot; colspan=&quot;2&quot;&gt;&amp;nbsp;&lt;/td&gt;&lt;td class=&quot;label right&quot;&gt;IVA 19.00 %&lt;/td&gt;&lt;td class=&quot;right&quot;&gt;{iva}&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;center&quot; colspan=&quot;2&quot;&gt;&amp;nbsp;&lt;/td&gt;&lt;td class=&quot;label right&quot;&gt;IVA 0.00 %&lt;/td&gt;&lt;td class=&quot;right&quot;&gt;{ivaexento}&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;center&quot; colspan=&quot;2&quot;&gt;&amp;nbsp;&lt;/td&gt;&lt;td class=&quot;label right&quot;&gt;RECARGO GLOBAL (+)&lt;/td&gt;&lt;td class=&quot;right&quot;&gt;{recargos}&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;center&quot; colspan=&quot;2&quot;&gt;&amp;nbsp;&lt;/td&gt;&lt;td class=&quot;label right&quot;&gt;DESCUENTO GLOBAL (-)&lt;/td&gt;&lt;td class=&quot;right&quot;&gt;{descuentos}&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;right&quot; height=&quot;20&quot; width=&quot;23%&quot;&gt;&lt;strong style=&quot;margin-right: 5px&quot;&gt;VALOR PAGADO ANTERIOR:&amp;nbsp;&amp;nbsp;&lt;/strong&gt;&lt;/td&gt;&lt;td align=&quot;left&quot; width=&quot;37%&quot;&gt;&lt;span style=&quot;font-size: 13px&quot;&gt;{valor_anterior}&lt;/span&gt;&lt;/td&gt;&lt;td class=&quot;label right&quot;&gt;TOTAL&lt;/td&gt;&lt;td class=&quot;right&quot;&gt;&lt;b style=&quot;font-size: 13&quot;&gt;{total}&lt;/b&gt;&lt;/td&gt;&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;\n\n&lt;hr /&gt;\n&lt;div style=&quot;font-size: 11px; text-align: center&quot;&gt;&lt;b&gt;CUFE:&lt;/b&gt;{cufe}\n\n&lt;div style=&quot;page-break-after: always&quot;&gt;&lt;span style=&quot;display: none;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/div&gt;\n\n&lt;table class=&quot;tablatencion component&quot; style=&quot;margin-top: 30px&quot; width=&quot;100%&quot;&gt;\n	&lt;tbody&gt;&lt;tr&gt;&lt;td align=&quot;center&quot; colspan=&quot;3&quot; height=&quot;29&quot; style=&quot;border:1px solid #fff;border-bottom: 1px solid #017AFF&quot;&gt;&lt;strong&gt;PUNTOS DE ATENCION&lt;/strong&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;center&quot; bgcolor=&quot;#017AFF&quot; height=&quot;29&quot; style=&quot;border-right: 1px solid #017AFF;color: #fff&quot; valign=&quot;middle&quot; width=&quot;25%&quot;&gt;&lt;strong&gt;HORARIO DE OFICINA&lt;/strong&gt;&lt;/td&gt;&lt;td align=&quot;center&quot; bgcolor=&quot;#017AFF&quot; style=&quot;border-right: 1px solid #017AFF;color: #fff&quot; valign=&quot;middle&quot; width=&quot;40%&quot;&gt;&lt;strong&gt;DIRECCI&amp;Oacute;N&lt;/strong&gt;&lt;/td&gt;&lt;td align=&quot;center&quot; bgcolor=&quot;#017AFF&quot; style=&quot;color: #fff&quot; valign=&quot;middle&quot;&gt;&lt;strong&gt;TEL&amp;Eacute;FONOS&lt;/strong&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;center&quot; height=&quot;21&quot; style=&quot;border-right: 1px solid #017AFF&quot;&gt;&lt;strong&gt;Lunes a Viernes&lt;/strong&gt;&lt;/td&gt;&lt;td align=&quot;center&quot; rowspan=&quot;6&quot; style=&quot;border-right: 1px solid #017AFF&quot; valign=&quot;middle&quot;&gt;AV. mi negocio 4443 Cedro-Cali&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;center&quot; style=&quot;border-right: 1px solid #017AFF&quot;&gt;7:00 AM - 8:00 PM&lt;/td&gt;&lt;td align=&quot;center&quot; width=&quot;24%&quot;&gt;Linea Gratuita: 01 80000344433&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;center&quot; style=&quot;border-right: 1px solid #017AFF&quot;&gt;&lt;strong&gt;S&amp;aacute;bado&lt;/strong&gt;&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;PBX: 38999999&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;center&quot; style=&quot;border-right: 1px solid #017AFF&quot;&gt;8:00 AM - 7:00 PM&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;3122222222&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;center&quot; style=&quot;border-right: 1px solid #017AFF&quot;&gt;&lt;strong&gt;Festivos&lt;/strong&gt;&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;center&quot; height=&quot;20&quot; style=&quot;border-right: 1px solid #017AFF&quot;&gt;9:00 AM - 3:00 PM&lt;/td&gt;&lt;td align=&quot;center&quot;&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n\n&lt;div&gt;\n&lt;table width=&quot;100%&quot;&gt;\n	&lt;tbody&gt;&lt;tr&gt;&lt;td align=&quot;center&quot; height=&quot;23&quot; valign=&quot;middle&quot;&gt;&lt;strong&gt;&lt;a href=&quot;https://miempresa.com&quot; target=&quot;_blank&quot;&gt;https://miempresa.com&lt;/a&gt;&lt;/strong&gt;&lt;/td&gt;&lt;td align=&quot;center&quot; valign=&quot;middle&quot;&gt;&lt;strong&gt;&lt;a href=&quot;mailto:facturacion@miempresa.com&quot;&gt;facturacion@miempresa.com&lt;/a&gt;&lt;/strong&gt;&lt;/td&gt;&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;\n\n&lt;div style=&quot;margin-top: 5px;text-align: justify;font-size: 12px;&quot;&gt;De conformidad con la resoluci&amp;oacute;n CRC 5111 del 2017, Cuando el usuario tenga alguna inconformidad con su factura puede presentar un PQR antes de la fecha de pago oportuno, caso en el cual no debe pagar las sumas que sean objetos de reclamaci&amp;oacute;n. Si no presenta la PQR antes de dicha fecha el usuario debe pagar el valor total de la factura. En todo caso el usuario cuenta con 6 meses contados a partir de la fecha de pago oportuno de su factura para presentar cualquier PQR relacionada con los conceptos incluidos en dicha factura&amp;quot; (Res 5111 de 2017 Art.2.1.24.4..9). El no pago oportuno de esta factura causar&amp;aacute; intereses de mora a la tasa m&amp;aacute;xima permitida por la ley, en caso de existir por su parte autorizaci&amp;oacute;n para hacerlo, el reporte a las centrales de riesgo. Recuerde que si no cancela esta factura su servicio podr&amp;aacute; ser suspendido. Si usted cancela esta factura con cheque deber&amp;aacute; girarlo a favor de MI EMPRESA SAS. Si dicho pago no puede hacerse efectivo por causas imputables al USUARIO,MI EMPRESA SAS, podr&amp;aacute; dar por terminado con justa causa del contrato suscrito, sin perjuicio de los demas efectos consagrados en dicho contrato por la falta de pago y de aplicar la sanci&amp;oacute;n por no pago del cheque de acuerdo con lo establecido en el art&amp;iacute;culo 731 del C&amp;oacute;digo del Comercio. Informaci&amp;oacute;n tributaria de MI EMPRESA SAS. Esta factura presta m&amp;eacute;rito ejecutivo, si no es cancelada se proceder&amp;aacute; a cobro jur&amp;iacute;dico. A esta factura de venta aplican las normas relativas a la letra de cambio (articulo 5 ley 1231 de 2008).Con esta el comprador declara haber recibido real y materialmente las mercancias o prestacion de servicios descritos en este titulo - valor ENTIDAD DE VIGILANCIA Y CONTROL: LA AUTORIDAD DE INSPECCION, VIGILANCIA Y CONTROL ES LA SUPERINTENDENCIA DE INDUSTRIA Y COMERCIO NIT 800,176,089-2, PAGINA WEB https://www.sic.gov.co/ e-mail: contactenos@sic.gov.co. Direccion: Carrera 13 No. 27 - 00, Pisos. 1 y 3, Telefono: (571) 592 04 00 - Bog. L&amp;iacute;nea gratuita Nacional: 01 8000 910 165&lt;/div&gt;\n&lt;/div&gt;\n&lt;/div&gt;\n&lt;/body&gt;\n&lt;/html&gt;','dian','Formato factura PDF DIAN','A4',80,200,'',''),(48,'Bienvenido a MI EMPRESA, sus datos de acceso a nuestro portal clientes USUARIO: {id_cliente} CONTRASEÃ‘A: {codigo_cliente}','smsbienvenida','SMS Bienvenida','A4',80,200,'',''),(49,'Estimado(a) {nombre_cliente}, Tu pago fuÃ© confirmado y acreditado. ','smsconfirmapago','SMS Confirma Pago','A4',80,200,'',''),(50,'INTERCONECTADOS INFORMA:&lt;br&gt;\nTu Nuevo SSID es: {ssid}&lt;br&gt;\nTu Nueva Clave WIFII es: {password}&lt;br&gt;\nGracias por preferirnos.','change_wifi_onu','','A4',80,200,'',''),(51,'INTERCONECTADOS INFORMA:&lt;br&gt;\n		Tu Nuevo SSID es: {ssid}&lt;br&gt;\n		Tu Nueva Clave WIFII es: {password}&lt;br&gt;\n		Gracias por preferirnos.','change_wifi_onu','','A4',80,200,'',''),(52,'INTERCONECTADOS INFORMA:&lt;br&gt;\nTu Nuevo SSID es: {ssid}&lt;br&gt;\nTu Nueva Clave WIFII es: {password}&lt;br&gt;\nGracias por preferirnos.','change_wifi_onu','','A4',80,200,'',''),(53,'INTERCONECTADOS INFORMA:&lt;br&gt;\n		Tu Nuevo SSID es: {ssid}&lt;br&gt;\n		Tu Nueva Clave WIFII es: {password}&lt;br&gt;\n		Gracias por preferirnos.','change_wifi_onu','','A4',80,200,'',''),(54,'&lt;html&gt;&lt;meta charset=&quot;UTF-8&quot;&gt;\n  &lt;head&gt;\n      &lt;title&gt;Ticket N&amp;ordm; {id_ticket} - {nombre_empresa}&lt;/title&gt;\n      &lt;style type=&quot;text/css&quot;&gt;.textcenter{\n      text-align: center;\n  }\n  .w100{\n      width: 100%;\n  }\n  \n  table, th, td {\n    border: 1px solid black;\n    padding: 5px;\n  }\n  body{\n      font-family: \'Segoe UI\', Tahoma, Geneva, Verdana, sans-serif;\n      padding: 10px;\n  }\n  \n  h5{\n      margin-bottom: 7px;\n      margin-top: 7px;\n  }\n  \n  footer{\n      position: absolute;\n      bottom: 0;\n  }\n  \n  footer table,footer th,footer td{\n      border:none;\n    padding: 0px;\n  }\n  \n  table {\n    border-spacing: 0px;\n    border-collapse: collapse;\n    font-size: 12px;\n  }\n  .cuadro{\n      border: 1px solid black;\n      width: 12px;\n      height: 12px;\n      display: inline-block;\n      margin-right: 7px;\n      border-radius: 3px;\n  }\n  \n  .obsv li{\n      margin-bottom: 5px;\n  }\n  \n  .obsv{\n      -moz-column-count: 2;\n      -moz-column-gap: 20px;\n      -webkit-column-count: 2;\n      -webkit-column-gap: 20px;\n      column-count: 2;\n      column-gap: 20px;\n      padding-inline-start: 15px;\n  }\n  .noborder{\n      border: none !important;\n  }\n  \n  .noborder p{\n      margin: 3px;\n  }\n  \n  .mensaje{\n      font-size: 13px;\n  }\n  \n  .datetk{\n      float: right;\n      font-size: 12px;\n      font-weight: 500;\n  }\n  \n  body {\n          width: 100%;\n          height: 100%;\n          margin: 0;\n          padding: 0;\n      }\n      * {\n          box-sizing: border-box;\n          -moz-box-sizing: border-box;\n      }\n  \n  .page {\n          width: 210mm;\n          min-height: 297mm;\n      }\n  \n  @page {\n      size: A4;\n      margin: 10mm 10mm 10mm 10mm;\n  }\n  \n  .contenedor-mensaje{\n      border: 1px solid #848484;\n      width: 100%;\n      min-height: 100px;\n      border-radius: 5px;\n      margin-bottom: 10px;\n      padding: 10px;\n  }\n  \n  @media print {\n          html, body {\n              width: 210mm;\n              height: 297mm;        \n          }\n          .page {\n              margin: 0;\n              border: initial;\n              border-radius: initial;\n              width: initial;\n              min-height: initial;\n              box-shadow: initial;\n              background: initial;\n              page-break-after: always;\n          }\n      }\n      &lt;/style&gt;\n  &lt;/head&gt;\n  &lt;body&gt;\n  &lt;div&gt;\n  &lt;div class=&quot;page&quot;&gt;\n  &lt;table class=&quot;w100 noborder&quot;&gt;\n      &lt;tbody&gt;&lt;tr&gt;&lt;td class=&quot;noborder&quot; style=&quot;width: 40%;&quot;&gt;&lt;img src=&quot;images/logofactura.png&quot; style=&quot;width: 200px;&quot; /&gt;&lt;/td&gt;&lt;td class=&quot;noborder&quot;&gt;\n          &lt;h2&gt;{nombre_empresa}&lt;/h2&gt;\n  \n          &lt;p&gt;{direccion_empresa}&lt;/p&gt;\n  \n          &lt;p&gt;{telefono_empresa}&lt;/p&gt;\n          &lt;/td&gt;&lt;/tr&gt;\n      &lt;/tbody&gt;\n  &lt;/table&gt;\n  \n  &lt;h3 class=&quot;textcenter&quot;&gt;TICKET # {id_ticket}&lt;/h3&gt;\n  \n  &lt;h5&gt;DATOS DEL CLIENTE&lt;/h5&gt;\n  \n  &lt;table class=&quot;w100&quot;&gt;\n      &lt;tbody&gt;&lt;tr&gt;&lt;td align=&quot;right&quot; width=&quot;30%&quot;&gt;&lt;strong&gt;Nombre y Apellidos: &lt;/strong&gt;&lt;/td&gt;&lt;td&gt;{nombre_cliente}&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;right&quot;&gt;&lt;strong&gt;Tel&amp;eacute;fonos: &lt;/strong&gt;&lt;/td&gt;&lt;td&gt;{movil_cliente}&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;right&quot;&gt;&lt;strong&gt;Direcci&amp;oacute;n: &lt;/strong&gt;&lt;/td&gt;&lt;td&gt;{direccion_principal_cliente}&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td align=&quot;right&quot;&gt;Cedula cliente&amp;nbsp;&lt;/td&gt;&lt;td&gt;{cedula_cliente}&lt;/td&gt;&lt;/tr&gt;\n      &lt;/tbody&gt;\n  &lt;/table&gt;\n  \n  &lt;h5&gt;INFORMACI&amp;Oacute;N TICKET&lt;/h5&gt;\n  \n  &lt;table class=&quot;w100&quot;&gt;\n      &lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;strong&gt;# Ticket&lt;/strong&gt;&lt;/td&gt;&lt;td&gt;&lt;strong&gt;Departamento&lt;/strong&gt;&lt;/td&gt;&lt;td&gt;&lt;strong&gt;Estado&lt;/strong&gt;&lt;/td&gt;&lt;td&gt;&lt;strong&gt;T&amp;eacute;cnico&lt;/strong&gt;&lt;/td&gt;&lt;td&gt;&lt;strong&gt;Creado&lt;/strong&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;{id_ticket}&lt;/td&gt;&lt;td&gt;{departamento_ticket}&lt;/td&gt;&lt;td&gt;{estado_ticket}&lt;/td&gt;&lt;td&gt;{tecnico_ticket}&lt;/td&gt;&lt;td&gt;{fecha_ticket}&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;strong&gt;Fecha de visita&lt;/strong&gt;&lt;/td&gt;&lt;td&gt;&lt;strong&gt;Turno visita&lt;/strong&gt;&lt;/td&gt;&lt;td&gt;&lt;strong&gt;Creado por&lt;/strong&gt;&lt;/td&gt;&lt;td&gt;&lt;strong&gt;Nombre Solicitante&lt;/strong&gt;&lt;/td&gt;&lt;td&gt;&lt;strong&gt;Fecha Cierre&lt;/strong&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;{fecha_visita_ticket}&lt;/td&gt;&lt;td&gt;{turno_ticket}&lt;/td&gt;&lt;td&gt;{operador_ticket}&lt;/td&gt;&lt;td&gt;{solicitante_ticket}&lt;/td&gt;&lt;td&gt;{fecha_cierre_ticket}&lt;/td&gt;&lt;/tr&gt;\n      &lt;/tbody&gt;\n  &lt;/table&gt;\n  \n  &lt;h5&gt;INFORMACI&amp;Oacute;N SERVICIOS&lt;/h5&gt;\n  {servicios}\n  \n  &lt;h4&gt;ASUNTO: {asunto_ticket}&lt;/h4&gt;\n  \n  &lt;h5&gt;DESCRIPCI&amp;Oacute;N&lt;/h5&gt;\n  \n  &lt;table class=&quot;w100&quot;&gt;\n      &lt;tbody&gt;&lt;tr&gt;&lt;td style=&quot;padding: 10px;&quot;&gt;{mensaje_ticket}&lt;/td&gt;&lt;/tr&gt;\n      &lt;/tbody&gt;\n  &lt;/table&gt;\n  \n  &lt;h5&gt;Observaciones&lt;/h5&gt;\n  \n  &lt;table class=&quot;w100&quot;&gt;\n      &lt;tbody&gt;&lt;tr&gt;&lt;td&gt;\n          &lt;ol class=&quot;obsv&quot;&gt;\n              &lt;li&gt;&lt;span class=&quot;cuadro&quot;&gt;&lt;/span&gt;Verificar conectividad el&amp;eacute;ctrica del Equipo&lt;/li&gt;\n              &lt;li&gt;&lt;span class=&quot;cuadro&quot;&gt;&lt;/span&gt;Verificar conectividad con la Antena&lt;/li&gt;\n              &lt;li&gt;&lt;span class=&quot;cuadro&quot;&gt;&lt;/span&gt;Verificar buen funcionamiento del POE&lt;/li&gt;\n              &lt;li&gt;&lt;span class=&quot;cuadro&quot;&gt;&lt;/span&gt;Verificar conectividad del Router&lt;/li&gt;\n              &lt;li&gt;&lt;span class=&quot;cuadro&quot;&gt;&lt;/span&gt;Verificar configuraci&amp;oacute;n de la Antena&lt;/li&gt;\n              &lt;li&gt;&lt;span class=&quot;cuadro&quot;&gt;&lt;/span&gt;Verificar configuraci&amp;oacute;n del Router&lt;/li&gt;\n              &lt;li&gt;&lt;span class=&quot;cuadro&quot;&gt;&lt;/span&gt;Realizar Pruebas de Velocidad&lt;/li&gt;\n              &lt;li&gt;&lt;span class=&quot;cuadro&quot;&gt;&lt;/span&gt;Agregar Notas&lt;/li&gt;\n          &lt;/ol&gt;\n          &lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;height: 50px;vertical-align: top;&quot;&gt;&lt;strong&gt;NOTAS:&lt;/strong&gt;&lt;/td&gt;&lt;/tr&gt;\n      &lt;/tbody&gt;\n  &lt;/table&gt;\n  \n  &lt;footer class=&quot;w100&quot;&gt;\n  &lt;table class=&quot;w100&quot;&gt;\n      &lt;tbody&gt;&lt;tr&gt;&lt;td class=&quot;textcenter&quot;&gt;\n          &lt;p&gt;......................................................................&lt;/p&gt;\n  \n          &lt;p&gt;{nombre_cliente}&lt;/p&gt;\n  \n          &lt;p&gt;&lt;b&gt;Cliente&lt;/b&gt;&lt;/p&gt;\n          &lt;/td&gt;&lt;td class=&quot;textcenter&quot;&gt;\n          &lt;p&gt;......................................................................&lt;/p&gt;\n  \n          &lt;p&gt;{tecnico_ticket}&lt;/p&gt;\n  \n          &lt;p&gt;&lt;b&gt;T&amp;eacute;cnico&lt;/b&gt;&lt;/p&gt;\n          &lt;/td&gt;&lt;/tr&gt;\n      &lt;/tbody&gt;\n  &lt;/table&gt;\n  &lt;/footer&gt;\n  &lt;/div&gt;\n  \n  &lt;div class=&quot;page&quot;&gt;\n  &lt;h3 class=&quot;textcenter&quot;&gt;DETALLES TICKET #{id_ticket}&lt;/h3&gt;\n  {mensajes}&lt;/div&gt;\n  &lt;/div&gt;\n  &lt;/body&gt;\n  &lt;/html&gt;\n  ','printsoporte','','A4',80,200,'','');
/*!40000 ALTER TABLE `formatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gastos`
--

DROP TABLE IF EXISTS `gastos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gastos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  `fecha` date NOT NULL,
  `tipo` varchar(8) NOT NULL,
  `monto` decimal(12,2) NOT NULL,
  `idadmin` int(3) NOT NULL,
  `referencia` text NOT NULL,
  `idnodo` int(3) NOT NULL,
  `recurrente` int(2) NOT NULL,
  `archivo` text NOT NULL,
  `uid` text NOT NULL,
  `proveedor` int(5) NOT NULL,
  `personalizados` mediumtext NOT NULL,
  `moneda` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastos`
--

LOCK TABLES `gastos` WRITE;
/*!40000 ALTER TABLE `gastos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gastos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gateway_invoice`
--

DROP TABLE IF EXISTS `gateway_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gateway_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proveedor` text NOT NULL,
  `estado` varchar(5) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `link` text NOT NULL,
  `debug` int(1) NOT NULL,
  `custom` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gateway_invoice`
--

LOCK TABLES `gateway_invoice` WRITE;
/*!40000 ALTER TABLE `gateway_invoice` DISABLE KEYS */;
INSERT INTO `gateway_invoice` VALUES (1,'facturapi','','MEXICO','a:3:{i:2;a:2:{s:8:\"etiqueta\";s:21:\"Clave/CÃ³digo general\";s:5:\"valor\";s:8:\"81112100\";}i:1;a:2:{s:8:\"etiqueta\";s:34:\"Clave/CÃ³digo Servicio de Internet\";s:5:\"valor\";s:8:\"81112100\";}i:0;a:2:{s:8:\"etiqueta\";s:7:\"API KEY\";s:5:\"valor\";s:0:\"\";}}','',0,''),(2,'mikrowisp-nubefact','','PERU','a:5:{i:2;a:2:{s:8:\"etiqueta\";s:13:\"Serie Factura\";s:5:\"valor\";s:0:\"\";}i:4;a:2:{s:8:\"etiqueta\";s:12:\"Serie Boleta\";s:5:\"valor\";s:0:\"\";}i:1;a:2:{s:8:\"etiqueta\";s:19:\"CÃ³digo de producto\";s:5:\"valor\";s:8:\"81112100\";}i:3;a:2:{s:8:\"etiqueta\";s:8:\"Ruta API\";s:5:\"valor\";s:0:\"\";}i:0;a:2:{s:8:\"etiqueta\";s:9:\"Token API\";s:5:\"valor\";s:0:\"\";}}','https://docs.mikrosystem.net/docs/facturar-v%C3%ADa-nubefact',0,''),(3,'datil','','ECUADOR','a:10:{i:2;a:2:{s:8:\"etiqueta\";s:11:\"Modo Prueba\";s:5:\"valor\";s:0:\"\";}i:3;a:2:{s:8:\"etiqueta\";s:11:\"Ruc empresa\";s:5:\"valor\";s:0:\"\";}i:4;a:2:{s:8:\"etiqueta\";s:16:\"Nombre Comercial\";s:5:\"valor\";s:0:\"\";}i:5;a:2:{s:8:\"etiqueta\";s:13:\"RazÃ³n social\";s:5:\"valor\";s:0:\"\";}i:6;a:2:{s:8:\"etiqueta\";s:10:\"DirecciÃ³n\";s:5:\"valor\";s:0:\"\";}i:7;a:2:{s:8:\"etiqueta\";s:14:\"Punto emisiÃ³n\";s:5:\"valor\";s:0:\"\";}i:8;a:2:{s:8:\"etiqueta\";s:22:\"CÃ³digo punto emisiÃ³n\";s:5:\"valor\";s:0:\"\";}i:9;a:2:{s:8:\"etiqueta\";s:21:\"Obligado contabilidad\";s:5:\"valor\";s:0:\"\";}i:1;a:2:{s:8:\"etiqueta\";s:21:\"Clave del certificado\";s:5:\"valor\";s:0:\"\";}i:0;a:2:{s:8:\"etiqueta\";s:7:\"API KEY\";s:5:\"valor\";s:0:\"\";}}','https://datil.co/planes',0,''),(4,'sigma','','COLOMBIA','a:11:{i:3;a:2:{s:8:\"etiqueta\";s:15:\"Prefijo Factura\";s:5:\"valor\";s:0:\"\";}i:7;a:2:{s:8:\"etiqueta\";s:18:\"Secuencial Factura\";s:5:\"valor\";s:6:\"1-1000\";}i:8;a:2:{s:8:\"etiqueta\";s:20:\"Fecha Secuencial (F)\";s:5:\"valor\";s:0:\"\";}i:4;a:2:{s:8:\"etiqueta\";s:21:\"NÂº Siguiente Factura\";s:5:\"valor\";s:1:\"1\";}i:5;a:2:{s:8:\"etiqueta\";s:21:\"Prefijo Nota CrÃ©dito\";s:5:\"valor\";s:0:\"\";}i:10;a:2:{s:8:\"etiqueta\";s:24:\"Secuencial Nota crÃ©dito\";s:5:\"valor\";s:6:\"1-1000\";}i:11;a:2:{s:8:\"etiqueta\";s:21:\"Fecha secuencial (NC)\";s:5:\"valor\";s:0:\"\";}i:6;a:2:{s:8:\"etiqueta\";s:27:\"NÂº Siguiente Nota crÃ©dito\";s:5:\"valor\";s:1:\"1\";}i:2;a:2:{s:8:\"etiqueta\";s:10:\"NIT EMISOR\";s:5:\"valor\";s:0:\"\";}i:1;a:2:{s:8:\"etiqueta\";s:8:\"User Api\";s:5:\"valor\";s:0:\"\";}i:0;a:2:{s:8:\"etiqueta\";s:12:\"Password Api\";s:5:\"valor\";s:0:\"\";}}','https://www.dsnube.co',0,''),(5,'thefactory','','COLOMBIA','a:11:{i:3;a:2:{s:8:\"etiqueta\";s:15:\"Prefijo Factura\";s:5:\"valor\";s:0:\"\";}i:7;a:2:{s:8:\"etiqueta\";s:18:\"Secuencial Factura\";s:5:\"valor\";s:6:\"1-1000\";}i:8;a:2:{s:8:\"etiqueta\";s:16:\"Fecha Secuencial\";s:5:\"valor\";s:0:\"\";}i:4;a:2:{s:8:\"etiqueta\";s:21:\"NÂº Siguiente Factura\";s:5:\"valor\";s:1:\"1\";}i:5;a:2:{s:8:\"etiqueta\";s:21:\"Prefijo Nota CrÃ©dito\";s:5:\"valor\";s:0:\"\";}i:10;a:2:{s:8:\"etiqueta\";s:24:\"Secuencial Nota crÃ©dito\";s:5:\"valor\";s:6:\"1-1000\";}i:11;a:2:{s:8:\"etiqueta\";s:21:\"Fecha Secuencial (NC)\";s:5:\"valor\";s:0:\"\";}i:6;a:2:{s:8:\"etiqueta\";s:27:\"NÂº Siguiente Nota crÃ©dito\";s:5:\"valor\";s:1:\"1\";}i:1;a:2:{s:8:\"etiqueta\";s:14:\"Token password\";s:5:\"valor\";s:0:\"\";}i:0;a:2:{s:8:\"etiqueta\";s:13:\"Token empresa\";s:5:\"valor\";s:0:\"\";}i:12;a:2:{s:8:\"etiqueta\";s:13:\"Plantilla PDF\";s:5:\"valor\";i:0;}}','https://www.thefactoryhka.com/co/',0,''),(6,'felplex','','GUATEMALA','a:3:{i:2;a:2:{s:8:\"etiqueta\";s:11:\"Modo Prueba\";s:5:\"valor\";s:0:\"\";}i:1;a:2:{s:8:\"etiqueta\";s:10:\"ID Empresa\";s:5:\"valor\";s:1:\"1\";}i:0;a:2:{s:8:\"etiqueta\";s:7:\"API KEY\";s:5:\"valor\";s:0:\"\";}}','https://www.felplex.com/#pricing',0,''),(7,'thefactorypa','','PANAMA','a:5:{i:0;a:2:{s:8:\"etiqueta\";s:13:\"Token Empresa\";s:5:\"valor\";s:0:\"\";}i:1;a:2:{s:8:\"etiqueta\";s:14:\"Token Password\";s:5:\"valor\";s:0:\"\";}i:2;a:2:{s:8:\"etiqueta\";s:23:\"CÃ³digo Sucursal Emisor\";s:5:\"valor\";s:1:\"1\";}i:3;a:2:{s:8:\"etiqueta\";s:24:\"Punto Facturacion Fiscal\";s:5:\"valor\";s:1:\"1\";}i:4;a:2:{s:8:\"etiqueta\";s:21:\"NÂº Siguiente Factura\";s:5:\"valor\";s:1:\"1\";}}','https://thefactoryhka.com.pa/fel/',0,''),(8,'digifact','','DOMINICANA','a:17:{i:0;a:2:{s:8:\"etiqueta\";s:15:\"Distrito Emisor\";s:5:\"valor\";s:6:\"010000\";}i:1;a:2:{s:8:\"etiqueta\";s:16:\"Municipio Emisor\";s:5:\"valor\";s:6:\"010100\";}i:2;a:2:{s:8:\"etiqueta\";s:26:\"DirecciÃ³n Sucursal Emisor\";s:5:\"valor\";s:0:\"\";}i:3;a:2:{s:8:\"etiqueta\";s:15:\"Sucursal Emisor\";s:5:\"valor\";s:11:\"Sucursal #1\";}i:4;a:2:{s:8:\"etiqueta\";s:13:\"RazÃ³n Social\";s:5:\"valor\";s:0:\"\";}i:5;a:2:{s:8:\"etiqueta\";s:10:\"RNC emisor\";s:5:\"valor\";s:0:\"\";}i:6;a:2:{s:8:\"etiqueta\";s:22:\"Secuencial Factura E31\";s:5:\"valor\";s:1:\"0\";}i:14;a:2:{s:8:\"etiqueta\";s:22:\"Secuencial Factura E32\";s:5:\"valor\";s:1:\"1\";}i:15;a:2:{s:8:\"etiqueta\";s:22:\"Secuencial Factura E44\";s:5:\"valor\";s:1:\"1\";}i:16;a:2:{s:8:\"etiqueta\";s:22:\"Secuencial Factura E45\";s:5:\"valor\";s:1:\"1\";}i:7;a:2:{s:8:\"etiqueta\";s:24:\"Secuencial Nota CrÃ©dito\";s:5:\"valor\";s:1:\"0\";}i:8;a:2:{s:8:\"etiqueta\";s:22:\"Vencimiento Secuencial\";s:5:\"valor\";s:10:\"2025-12-31\";}i:9;a:2:{s:8:\"etiqueta\";s:11:\"Usuario Api\";s:5:\"valor\";s:0:\"\";}i:10;a:2:{s:8:\"etiqueta\";s:14:\"ContaseÃ±a Api\";s:5:\"valor\";s:0:\"\";}i:11;a:2:{s:8:\"etiqueta\";s:13:\"Correo Emisor\";s:5:\"valor\";s:0:\"\";}i:12;a:2:{s:8:\"etiqueta\";s:16:\"TelÃ©fono Emisor\";s:5:\"valor\";s:0:\"\";}i:13;a:2:{s:8:\"etiqueta\";s:11:\"Modo Prueba\";s:5:\"valor\";s:1:\"2\";}}','https://www.digifact.com.do/',0,''),(9,'siigo','','COLOMBIA','a:14:{i:0;a:2:{s:8:\"etiqueta\";s:8:\"username\";s:5:\"valor\";s:0:\"\";}i:1;a:2:{s:8:\"etiqueta\";s:10:\"access_key\";s:5:\"valor\";s:0:\"\";}i:2;a:2:{s:8:\"etiqueta\";s:9:\"btn_siigo\";s:5:\"valor\";s:5:\"datos\";}i:3;a:2:{s:8:\"etiqueta\";s:22:\"Documento ElectrÃ³nico\";s:5:\"valor\";s:0:\"\";}i:4;a:2:{s:8:\"etiqueta\";s:32:\"Descuento Documento ElectrÃ³nico\";s:5:\"valor\";s:0:\"\";}i:5;a:2:{s:8:\"etiqueta\";s:16:\"Nota de CrÃ©dito\";s:5:\"valor\";s:0:\"\";}i:6;a:2:{s:8:\"etiqueta\";s:7:\"IVA 19%\";s:5:\"valor\";s:0:\"\";}i:7;a:2:{s:8:\"etiqueta\";s:6:\"IVA 0%\";s:5:\"valor\";s:0:\"\";}i:8;a:2:{s:8:\"etiqueta\";s:22:\"Forma de Pago Efectivo\";s:5:\"valor\";s:0:\"\";}i:9;a:2:{s:8:\"etiqueta\";s:22:\"Forma de Pago CrÃ©dito\";s:5:\"valor\";s:0:\"\";}i:10;a:2:{s:8:\"etiqueta\";s:16:\"Seller(vendedor)\";s:5:\"valor\";s:0:\"\";}i:11;a:2:{s:8:\"etiqueta\";s:10:\"exel_siigo\";s:5:\"valor\";s:19:\"productos/servicios\";}i:12;a:2:{s:8:\"etiqueta\";s:7:\"reteICA\";s:5:\"valor\";s:0:\"\";}i:13;a:2:{s:8:\"etiqueta\";s:7:\"reteIVA\";s:5:\"valor\";s:0:\"\";}}','https://www.siigo.com/',0,''),(10,'facturasend','','PARAGUAY','a:6:{i:0;a:2:{s:8:\"etiqueta\";s:7:\"Api Key\";s:5:\"valor\";s:0:\"\";}i:1;a:2:{s:8:\"etiqueta\";s:9:\"Tenant ID\";s:5:\"valor\";s:0:\"\";}i:2;a:2:{s:8:\"etiqueta\";s:22:\"Establecimiento Emisor\";s:5:\"valor\";s:0:\"\";}i:3;a:2:{s:8:\"etiqueta\";s:27:\"Punto EmisiÃ³n ElectrÃ³nico\";s:5:\"valor\";s:0:\"\";}i:4;a:2:{s:8:\"etiqueta\";s:21:\"NÂº Siguiente Factura\";s:5:\"valor\";s:0:\"\";}i:5;a:2:{s:8:\"etiqueta\";s:30:\"NÂº Siguiente Nota de CrÃ©dito\";s:5:\"valor\";s:0:\"\";}}','https://www.facturasend.com.py/',0,''),(11,'lioren','','CHILE','a:7:{i:0;a:2:{s:8:\"etiqueta\";s:20:\"RazÃ³n Social Emisor\";s:5:\"valor\";s:0:\"\";}i:1;a:2:{s:8:\"etiqueta\";s:10:\"RUT Emisor\";s:5:\"valor\";s:0:\"\";}i:2;a:2:{s:8:\"etiqueta\";s:34:\"CÃ³digo Actividad Economica Emisor\";s:5:\"valor\";s:0:\"\";}i:3;a:2:{s:8:\"etiqueta\";s:16:\"CÃ³digo Sucursal\";s:5:\"valor\";s:0:\"\";}i:4;a:2:{s:8:\"etiqueta\";s:13:\"Correo Emisor\";s:5:\"valor\";s:0:\"\";}i:5;a:2:{s:8:\"etiqueta\";s:16:\"TelÃ©fono Emisor\";s:5:\"valor\";s:0:\"\";}i:6;a:2:{s:8:\"etiqueta\";s:15:\"Token de Acceso\";s:5:\"valor\";s:0:\"\";}}','https://www.lioren.cl/',0,''),(12,'simplefactura','','CHILE','a:9:{i:0;a:2:{s:8:\"etiqueta\";s:20:\"RazÃ³n Social Emisor\";s:5:\"valor\";s:0:\"\";}i:1;a:2:{s:8:\"etiqueta\";s:10:\"RUT Emisor\";s:5:\"valor\";s:0:\"\";}i:2;a:2:{s:8:\"etiqueta\";s:11:\"Giro Emisor\";s:5:\"valor\";s:0:\"\";}i:3;a:2:{s:8:\"etiqueta\";s:17:\"DirecciÃ³n Emisor\";s:5:\"valor\";s:0:\"\";}i:4;a:2:{s:8:\"etiqueta\";s:13:\"Comuna Emisor\";s:5:\"valor\";s:0:\"\";}i:5;a:2:{s:8:\"etiqueta\";s:8:\"Sucursal\";s:5:\"valor\";s:0:\"\";}i:6;a:2:{s:8:\"etiqueta\";s:11:\"Usuario Api\";s:5:\"valor\";s:0:\"\";}i:7;a:2:{s:8:\"etiqueta\";s:15:\"ContraseÃ±a Api\";s:5:\"valor\";s:0:\"\";}i:8;a:2:{s:8:\"etiqueta\";s:11:\"Modo Prueba\";s:5:\"valor\";s:1:\"2\";}}','https://simplefactura.cl/',0,'');
/*!40000 ALTER TABLE `gateway_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graficosoids`
--

DROP TABLE IF EXISTS `graficosoids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graficosoids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` text NOT NULL,
  `titulov` text NOT NULL,
  `publico` varchar(2) NOT NULL,
  `data` text NOT NULL,
  `idequipo` int(11) NOT NULL,
  `alto` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idequipo` (`idequipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graficosoids`
--

LOCK TABLES `graficosoids` WRITE;
/*!40000 ALTER TABLE `graficosoids` DISABLE KEYS */;
/*!40000 ALTER TABLE `graficosoids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotspot_fichas`
--

DROP TABLE IF EXISTS `hotspot_fichas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotspot_fichas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `estado` int(1) NOT NULL,
  `perfil` int(11) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_activacion` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `grupo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `perfil` (`perfil`),
  KEY `user` (`user`),
  KEY `grupo` (`grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotspot_fichas`
--

LOCK TABLES `hotspot_fichas` WRITE;
/*!40000 ALTER TABLE `hotspot_fichas` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotspot_fichas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotspot_perfiles`
--

DROP TABLE IF EXISTS `hotspot_perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotspot_perfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `descripcion` text NOT NULL,
  `url_hotspot` text NOT NULL,
  `prefijo` varchar(50) NOT NULL,
  `server` varchar(100) NOT NULL,
  `profile` text NOT NULL,
  `costo` decimal(12,2) NOT NULL,
  `longitud_user` int(11) NOT NULL,
  `longitud_password` int(11) NOT NULL,
  `user_num` varchar(3) NOT NULL,
  `pass_num` varchar(3) NOT NULL,
  `limit_time` text NOT NULL,
  `limit_bytes` text NOT NULL,
  `router` int(11) NOT NULL,
  `plantilla` int(11) NOT NULL,
  `pin` varchar(2) NOT NULL,
  `moneda` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `router` (`router`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotspot_perfiles`
--

LOCK TABLES `hotspot_perfiles` WRITE;
/*!40000 ALTER TABLE `hotspot_perfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotspot_perfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotspot_plantillas`
--

DROP TABLE IF EXISTS `hotspot_plantillas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotspot_plantillas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `html` text NOT NULL,
  `tamano` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotspot_plantillas`
--

LOCK TABLES `hotspot_plantillas` WRITE;
/*!40000 ALTER TABLE `hotspot_plantillas` DISABLE KEYS */;
INSERT INTO `hotspot_plantillas` VALUES (1,'Plantilla default','<div style=\"width: 250px; height: 140px; background: #eee; margin: 2px; float: left;background: linear-gradient(110deg, #fdcd3b 60%, #ffed4b 60%); font-family: \\\'Lucida Grande\\\', \\\'Lucida Sans Unicode\\\', \\\'Lucida Sans\\\', \\\'DejaVu Sans\\\', Verdana, \\\'sans-serif\\\'; font-size: 11px;font-weight: 600\">\r\n\r\n<div style=\"height: 45px; width: 100%; text-align: center; margin-bottom: 5px; margin-top: 5px\">\r\n<image src=\"../images/logo.png\" style=\"height:100%\">\r\n</div>\r\n	\r\n<div style=\"float: left\">\r\n<div style=\"background: #ffffff6e;padding: 2px 5px;width: 150px;margin: 5px 2px 0 3px;border-radius: 5px;\"><b style=\"font-size: 9px;\">USUARIO: </b>{user-pin}</div>\r\n<div style=\"background: #ffffff6e;padding: 2px 5px;width: 150px;margin: 5px 2px 0 3px;border-radius: 5px;\"><b style=\"font-size: 9px;\">CONTRASEÃ‘A: </b>{passwd}</div>\r\n	\r\n<div style=\"padding-left: 6px; font-size: 10px; font-weight: 500; width: 150px; margin-top: 5px\">{descripcion}</div>\r\n\r\n<div style=\"font-size: 12px; font-weight: 600; width: 150px; margin-top: 2px; text-align: center\">{costo}</div>\r\n	\r\n</div>	\r\n	\r\n	\r\n<div class=\"qrcode\" data-url=\"{url}\" style=\"width: 75px; height: 75px; border: 1px solid; background:#fff;float: left\">\r\n</div>\r\n	\r\n</div>','A4'),(2,'Plantilla Impresora POS','<div class=\"fichahs\" style=\"padding: 3mm;min-height: 60mm;width: 80mm;display: block;color: #000;margin: 0 auto;overflow: hidden;position: relative;box-sizing: border-box;page-break-after: always;\">\r\n<img src=\"../images/logo.png\" style=\"margin-top: 2mm; max-width: 200px; margin-bottom: 2mm;max-height:57px; -webkit-filter: grayscale(100%);filter: grayscale(100%);\">\r\n<div style=\"width: 100%\">\r\n<div style=\"width: 100%;display: inline-block;vertical-align: top\">\r\n\r\n<p style=\"margin: 0;padding: 0 0 0 4px;\"><strong>Usuario:</strong> {user-pin}</p>\r\n\r\n<p style=\"margin: 0;padding: 0 0 0 4px;\"><strong>ContraseÃ±a:</strong> {passwd}</p>\r\n     \r\n<p style=\"margin: 2px;padding: 0 0 0 4px;\">{descripcion}</p>\r\n</div>\r\n<div style=\"width: 100%; text-align: center\">\r\n<div class=\"qrcode\" data-url=\"{url}\" style=\"width: 100px; height: 100px;border: 1px solid;padding: 2px; margin: 2px;display: inline-block;\"></div>\r\n</div>   \r\n \r\n    <p style=\"margin: 5px;padding: 0 0 0 4px;\"><b>{costo}</b></p>\r\n\r\n  \r\n    <p style=\"margin: 0;padding: 0 0 0 4px; font-size: 10px\">Gracias por su preferencia</p>\r\n    <p style=\"margin: 0;padding: 0 0 0 4px; font-size: 10px\">{fecha_impresion}</p>\r\n    </div>\r\n    </div>','80mm/58mm'),(4,'Plantilla PIN','&lt;div style=&quot;width: 250px;height: 140px;background: #eee;margin: 2px;float: left;background: linear-gradient(110deg, #7fe0ec 60%, #81d1f5 60%);font-family: \'Lucida Grande\', \'Lucida Sans Unicode\', \'Lucida Sans\', \'DejaVu Sans\', Verdana, \'sans-serif\';font-size: 11px;font-weight: 600;&quot;&gt;\n&lt;div style=&quot;height: 45px; width: 100%; text-align: center; margin-bottom: 5px; margin-top: 5px&quot;&gt;&lt;img src=&quot;images/logo.png&quot; style=&quot;height:100%&quot; /&gt;&lt;/div&gt;\n\n&lt;div style=&quot;float: left&quot;&gt;\n&lt;div style=&quot;background: #ffffff6e;padding: 2px 5px;width: 150px;margin: 5px 2px 0 3px;border-radius: 5px;&quot;&gt;&lt;b style=&quot;font-size: 9px;&quot;&gt;PIN: &lt;/b&gt;{user-pin}&lt;/div&gt;\n\n&lt;div style=&quot;padding-left: 6px; font-size: 10px; font-weight: 500; width: 150px; margin-top: 5px&quot;&gt;{descripcion}&lt;/div&gt;\n\n&lt;div style=&quot;font-size: 12px; font-weight: 600; width: 150px; margin-top: 2px; text-align: center&quot;&gt;{costo}&lt;/div&gt;\n&lt;/div&gt;\n\n&lt;div class=&quot;qrcode&quot; data-url=&quot;{url}&quot; style=&quot;width: 75px; height: 75px; border: 1px solid; background:#fff;float: left&quot;&gt;&amp;nbsp;&lt;/div&gt;\n&lt;/div&gt;\n','A4');
/*!40000 ALTER TABLE `hotspot_plantillas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotspot_router`
--

DROP TABLE IF EXISTS `hotspot_router`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotspot_router` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `user` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `estado` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotspot_router`
--

LOCK TABLES `hotspot_router` WRITE;
/*!40000 ALTER TABLE `hotspot_router` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotspot_router` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instalaciones`
--

DROP TABLE IF EXISTS `instalaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instalaciones` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `userid` int(6) unsigned zerofill NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `idtecnico` int(6) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `telefono` text NOT NULL,
  `movil` text NOT NULL,
  `idnodo` int(4) NOT NULL,
  `email` text NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `estate` varchar(15) NOT NULL DEFAULT 'PENDIENTE',
  `cliente` varchar(120) NOT NULL,
  `notas` text NOT NULL,
  `fecha_instalacion` datetime NOT NULL,
  `zona` int(3) NOT NULL,
  `idvendedor` int(3) NOT NULL,
  `tipo_estrato` int(2) NOT NULL DEFAULT '4',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instalaciones`
--

LOCK TABLES `instalaciones` WRITE;
/*!40000 ALTER TABLE `instalaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `instalaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipv4`
--

DROP TABLE IF EXISTS `ipv4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipv4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nodo` int(3) NOT NULL,
  `nombre` varchar(180) NOT NULL,
  `red` varchar(21) NOT NULL,
  `cidr` varchar(3) NOT NULL,
  `tipo` int(2) NOT NULL,
  `rangos` text NOT NULL,
  `host` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nodo` (`nodo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipv4`
--

LOCK TABLES `ipv4` WRITE;
/*!40000 ALTER TABLE `ipv4` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipv4` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cambionombre` BEFORE UPDATE ON `ipv4` FOR EACH ROW IF NEW.nombre <> OLD.nombre  THEN
UPDATE radreply SET value=NEW.nombre WHERE value=OLD.nombre;
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cambiodetipo` AFTER UPDATE ON `ipv4` FOR EACH ROW IF NEW.tipo <> OLD.tipo  THEN
UPDATE tblservicios SET tipoipv4=NEW.tipo,ip='' WHERE redipv4=NEW.id;
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `linkpagos`
--

DROP TABLE IF EXISTS `linkpagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linkpagos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` mediumtext NOT NULL,
  `transaccion` varchar(50) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` int(2) NOT NULL,
  `enviados` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linkpagos`
--

LOCK TABLES `linkpagos` WRITE;
/*!40000 ALTER TABLE `linkpagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `linkpagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `privilege` int(6) NOT NULL DEFAULT '0',
  `nombre` varchar(300) DEFAULT NULL,
  `nodo` varchar(350) NOT NULL,
  `correo` varchar(350) NOT NULL,
  `chat` int(1) NOT NULL,
  `acceso` text NOT NULL,
  `estado` int(1) DEFAULT NULL,
  `timeout` int(4) NOT NULL,
  `mail` int(1) NOT NULL DEFAULT '1',
  `api` int(1) NOT NULL,
  `avatar` mediumblob NOT NULL,
  `color_avatar` varchar(10) NOT NULL DEFAULT '#348fe2',
  `movil` varchar(15) NOT NULL,
  `fb` varchar(150) NOT NULL,
  `twitter` varchar(150) NOT NULL,
  `comision_cobro` decimal(12,2) NOT NULL,
  `token_api` text NOT NULL,
  `recover` text NOT NULL,
  `dia_acceso` varchar(20) NOT NULL DEFAULT '1,1,1,1,1,1,1',
  `inicio_acceso` varchar(10) NOT NULL DEFAULT '00:00',
  `fin_acceso` varchar(10) NOT NULL DEFAULT '23:59',
  `new_password` text NOT NULL,
  `twofactor` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `password` (`password`),
  KEY `correo` (`correo`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3',0,'Administrador principal','%%','admin@miempresa.com',1,'a:12:{s:11:\"gestion_red\";a:6:{s:6:\"router\";a:4:{s:4:\"menu\";s:1:\"1\";s:5:\"nuevo\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";s:6:\"editar\";s:1:\"1\";}s:4:\"ipv4\";a:5:{s:4:\"menu\";s:1:\"1\";s:5:\"nuevo\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";s:6:\"editar\";s:1:\"1\";s:8:\"escanear\";s:1:\"1\";}s:9:\"monitoreo\";a:7:{s:4:\"menu\";s:1:\"1\";s:5:\"nuevo\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";s:6:\"editar\";s:1:\"1\";s:6:\"antena\";s:1:\"1\";s:4:\"ping\";s:1:\"1\";s:7:\"grafico\";s:1:\"1\";}s:7:\"trafico\";a:2:{s:5:\"lista\";s:1:\"1\";s:15:\"lista_visitadas\";i:1;}s:3:\"nap\";a:4:{s:4:\"menu\";i:1;s:6:\"editar\";i:1;s:8:\"eliminar\";i:1;s:5:\"nuevo\";i:1;}s:7:\"trapemn\";a:3:{s:4:\"menu\";i:1;s:5:\"nuevo\";i:1;s:4:\"plan\";i:1;}}s:9:\"servicios\";a:3:{s:8:\"internet\";a:4:{s:4:\"menu\";s:1:\"1\";s:5:\"nuevo\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";s:6:\"editar\";s:1:\"1\";}s:3:\"voz\";a:4:{s:4:\"menu\";s:1:\"1\";s:5:\"nuevo\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";s:6:\"editar\";s:1:\"1\";}s:13:\"personalizado\";a:4:{s:4:\"menu\";s:1:\"1\";s:5:\"nuevo\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";s:6:\"editar\";s:1:\"1\";}}s:8:\"clientes\";a:12:{s:8:\"usuarios\";a:9:{s:4:\"menu\";s:1:\"1\";s:5:\"nuevo\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";s:6:\"editar\";s:1:\"1\";s:10:\"editarsave\";s:1:\"1\";s:7:\"activar\";s:1:\"1\";s:7:\"retirar\";s:1:\"1\";s:12:\"herramientas\";s:1:\"1\";s:8:\"buscador\";i:1;}s:9:\"contratos\";a:4:{s:4:\"menu\";s:1:\"1\";s:5:\"nuevo\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";s:6:\"editar\";s:1:\"1\";}s:9:\"servicios\";a:3:{s:14:\"nuevo-servicio\";s:1:\"1\";s:17:\"eliminar-servicio\";s:1:\"1\";s:15:\"editar-servicio\";s:1:\"1\";}s:11:\"facturacion\";a:10:{s:13:\"nuevo-factura\";s:1:\"1\";s:16:\"eliminar-factura\";s:1:\"1\";s:14:\"editar-factura\";s:1:\"1\";s:12:\"null-factura\";s:1:\"1\";s:21:\"configuracion-factura\";s:1:\"1\";s:13:\"pagar-factura\";s:1:\"1\";s:19:\"editar-pago-factura\";s:1:\"1\";s:21:\"eliminar-pago-factura\";s:1:\"1\";s:13:\"agregar-saldo\";s:1:\"1\";s:14:\"eliminar-saldo\";s:1:\"1\";}s:7:\"soporte\";a:4:{s:13:\"nuevo-soporte\";s:1:\"1\";s:16:\"eliminar-soporte\";s:1:\"1\";s:14:\"editar-soporte\";s:1:\"1\";s:14:\"cerrar-soporte\";s:1:\"1\";}s:5:\"email\";a:4:{s:12:\"nuevo-correo\";s:1:\"1\";s:15:\"reenviar-correo\";s:1:\"1\";s:9:\"nuevo-sms\";s:1:\"1\";s:12:\"reenviar-sms\";s:1:\"1\";}s:8:\"contrato\";a:3:{s:5:\"nuevo\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";s:6:\"editar\";s:1:\"1\";}s:3:\"doc\";a:5:{s:15:\"nuevo-documento\";s:1:\"1\";s:18:\"eliminar-documento\";s:1:\"1\";s:16:\"editar-documento\";s:1:\"1\";s:10:\"nuevo-nota\";s:1:\"1\";s:13:\"eliminar-nota\";s:1:\"1\";}s:4:\"mapa\";s:1:\"1\";s:8:\"anuncios\";a:3:{s:4:\"menu\";s:1:\"1\";s:13:\"nuevo-anuncio\";s:1:\"1\";s:16:\"eliminar-anuncio\";s:1:\"1\";}s:13:\"instalaciones\";a:9:{s:4:\"menu\";s:1:\"1\";s:17:\"nuevo-instalacion\";s:1:\"1\";s:29:\"eliminar-registro-instalacion\";s:1:\"1\";s:27:\"editar-registro-instalacion\";s:1:\"1\";s:19:\"aceptar-instalacion\";s:1:\"1\";s:20:\"eliminar-instalacion\";s:1:\"1\";s:22:\"materiales-instalacion\";s:1:\"1\";s:16:\"alta-instalacion\";s:1:\"1\";s:18:\"editar-instalacion\";s:1:\"1\";}s:6:\"correo\";a:3:{s:4:\"menu\";s:1:\"1\";s:19:\"nuevo-correo-masivo\";s:1:\"1\";s:22:\"reenviar-correo-masivo\";s:1:\"1\";}}s:14:\"fichas-hotspot\";a:3:{s:6:\"fichas\";a:4:{s:4:\"menu\";s:1:\"1\";s:5:\"nuevo\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";s:8:\"imprimir\";s:1:\"1\";}s:6:\"router\";a:7:{s:4:\"menu\";s:1:\"1\";s:12:\"nuevo-router\";s:1:\"1\";s:15:\"eliminar-router\";s:1:\"1\";s:13:\"editar-router\";s:1:\"1\";s:12:\"nuevo-perfil\";s:1:\"1\";s:15:\"eliminar-perfil\";s:1:\"1\";s:13:\"editar-perfil\";s:1:\"1\";}s:10:\"plantillas\";a:4:{s:4:\"menu\";s:1:\"1\";s:5:\"nuevo\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";s:6:\"editar\";s:1:\"1\";}}s:6:\"tareas\";a:3:{s:5:\"nuevo\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";s:6:\"editar\";s:1:\"1\";}s:8:\"finanzas\";a:6:{s:8:\"facturas\";a:6:{s:4:\"menu\";s:1:\"1\";s:5:\"pagar\";s:1:\"1\";s:6:\"editar\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";s:6:\"anular\";s:1:\"1\";s:12:\"herramientas\";s:1:\"1\";}s:14:\"registrar-pago\";a:7:{s:4:\"menu\";s:1:\"1\";s:5:\"pagar\";s:1:\"1\";s:7:\"promesa\";s:1:\"1\";s:6:\"saldos\";s:1:\"1\";s:3:\"dia\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";s:6:\"editar\";s:1:\"1\";}s:21:\"registrar-pago-masivo\";a:1:{s:4:\"menu\";s:1:\"1\";}s:13:\"transacciones\";a:5:{s:4:\"menu\";s:1:\"1\";s:6:\"editar\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";s:12:\"estadisticas\";s:1:\"1\";s:7:\"resumen\";i:1;}s:8:\"ingresos\";a:3:{s:5:\"nuevo\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";s:6:\"editar\";s:1:\"1\";}s:7:\"reporte\";a:2:{s:6:\"marcar\";s:1:\"1\";s:5:\"pagar\";s:1:\"1\";}}s:7:\"almacen\";a:2:{s:10:\"categorias\";a:4:{s:4:\"menu\";s:1:\"1\";s:5:\"nuevo\";s:1:\"1\";s:6:\"editar\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";}s:9:\"productos\";a:4:{s:4:\"menu\";s:1:\"1\";s:5:\"nuevo\";s:1:\"1\";s:6:\"editar\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";}}s:7:\"soporte\";a:7:{s:4:\"menu\";s:1:\"1\";s:5:\"nuevo\";s:1:\"1\";s:6:\"editar\";s:1:\"1\";s:8:\"eliminar\";s:1:\"1\";s:6:\"cerrar\";s:1:\"1\";s:6:\"listar\";i:1;s:6:\"remove\";a:1:{s:10:\"respuestas\";i:1;}}s:3:\"sms\";a:3:{s:4:\"menu\";s:1:\"1\";s:5:\"nuevo\";s:1:\"1\";s:8:\"reenviar\";s:1:\"1\";}s:7:\"ajustes\";a:28:{s:4:\"menu\";s:1:\"1\";s:7:\"general\";s:1:\"1\";s:7:\"gestion\";s:1:\"1\";s:6:\"correo\";s:1:\"1\";s:11:\"facturacion\";s:1:\"1\";s:4:\"afip\";s:1:\"1\";s:11:\"openfactura\";s:1:\"1\";s:8:\"pasarela\";s:1:\"1\";s:10:\"plantillas\";s:1:\"1\";s:6:\"portal\";s:1:\"1\";s:7:\"soporte\";s:1:\"1\";s:8:\"importar\";s:1:\"1\";s:11:\"ubicaciones\";s:1:\"1\";s:3:\"sms\";s:1:\"1\";s:5:\"cloud\";s:1:\"1\";s:6:\"google\";s:1:\"1\";s:10:\"base-datos\";s:1:\"1\";s:12:\"cambiomasivo\";s:1:\"1\";s:14:\"predeterminada\";s:1:\"1\";s:7:\"crontab\";s:1:\"1\";s:3:\"log\";s:1:\"1\";s:7:\"sistema\";s:1:\"1\";s:8:\"servidor\";s:1:\"1\";s:8:\"licencia\";s:1:\"1\";s:6:\"migrar\";s:1:\"1\";s:10:\"actualizar\";s:1:\"1\";s:18:\"facturaelectronica\";i:1;s:8:\"exportar\";i:1;}s:6:\"widget\";a:11:{s:6:\"online\";s:1:\"1\";s:13:\"transacciones\";s:1:\"1\";s:8:\"facturas\";s:1:\"1\";s:7:\"soporte\";s:1:\"1\";s:7:\"trafico\";s:1:\"1\";s:7:\"resumen\";s:1:\"1\";s:5:\"pagos\";s:1:\"1\";s:10:\"conectados\";s:1:\"1\";s:8:\"servidor\";s:1:\"1\";s:19:\"resumen_facturacion\";s:1:\"1\";s:8:\"emisores\";s:1:\"1\";}s:10:\"widget-not\";a:4:{s:8:\"telegram\";s:1:\"1\";s:4:\"pago\";s:1:\"1\";s:7:\"general\";s:1:\"1\";s:7:\"soporte\";s:1:\"1\";}}',1,0,0,0,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿþ\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 90\nÿÛ\0C\0\n\n\n\r\rÿÛ\0C		\r\rÿÀ\0,,\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0úâŠ)(\0 P( Š( Š( µt Ð\0zÑFh j( ¥¢Š\0(¢Š\0(íE\0Q@¢€\n(¢€\n(¢€\n(Å\0w¢Š(\0¢Š(\0¢Š;PEPFMb€\n(ïE\0QE\0QE\0bŠ(\0ÅPN(\0Å¢Ž”\0\n(¢€\n1E\0QE\0QFh Š( ƒE\0t QE\0RRÐÅQ@Q@J1Gz(:ÒÑE\0˜¥f€\n(¢€\n(¢€\n;ÑE\0QK@	EPGz( µQÒ€\n(¢€\n:QF((¥¢€PhïE\0”´\n\0(¢Š\01IKŠ(?*\\QF(\0QE\0%-çš3@%-\0t¤¥£ó Š3E\0Q@ Ž´Q@IE\0´”t¥ &Š(ï@RÐQSÙYO¨\\$Ñ<Ó9ÀD5ÞèŸnfÚúÀ·OùåÌß‰è?Z\0óº–Y®\"…å>ˆ¤×ºéžÐô°v)3ãŸç\'ð<VôqG\nâ4TŠ1@;¯‡ug].ñ‡¨·sý)“hº¸>m…Ìxë¾ý+èê(æVR­‚#±¤¯¤/4‹A\nÜÚC8?ßŒ\Zå5o…\ZEðfµó,$í°î_Èÿ\0C@5EtÞ ø}ªø}\ZfŒ\\Û/YaçÜuÌþ”\0h£½ Š( Š( Š8ô¢€\n(¢€’ŒQ@Íž”\0´”w£4\0QFhÍ\0QE\0v¢ŒÐEPE´\0•ÓøCÀ·~(—Í9¶±SóLG-ì£¹«>ðCxŽä]]ºtGžÆSýÑíë^ÑÚÂ‘B‹Hª(À€(hž±ðõ°†Êþ\'êÍõ5¥š\0fŠ( Š3E\0QE\0d`ó\\W‹~\ZÚkJ÷,ïzà$ŸQØûŠíEón¡§ÜiWR[]DÐÌ‡­U«ß<]áoÙp#»@|©ÇU>‡ÔW†j:uÆ•{-­Ìf9£8 ÿ\0?¥\0V¢E\0QE\0QKŠ\0N”\n( Š( Š)s@	EP\0:ÑE\0PŠ\0(éF( Žh¢€•¯áoKâ]b+DÊÇ÷¥\nŽ§úVM{_Ã_. Çrëþ•xŒHä/ðÈçñ ¢ÆÆ6Î+[tC…U•9¢Š\0(¢Š\0(¤¥ Š( bŠ(\0¢Š(\0®7â7„F»§Ëtÿ\0N·\\½dNëõô®ÊŠ\0ù’Šê¾#xy4x´+¶Úäy¨;)Ï#óþuÊÐÖŠZ()h¢€Š( Š)h(Î(¥Í\0%t¢€\n(Å…\0u¢Š\0(¢Š\0(¥¤ \rOiÛZõ™û²H7ÿ\0º9? ¯¡•B¨P0£€jòOƒÖ\"mjîèŒù0í_«ðó¯\\ Š( \0ÑE\0QGj;PEPÞŽÔ”´\0QE Š( Câ†5É:ŒËhÂQôèß§?…x}+{l·ÖsÛ¿+4mÐŒWÍÓD`™ãaó#?Ph::ÑŠZ\0AEPEPEPKE\0”QE\0QE\0QE\0QE\0QGj\0õƒPíÓuqËL«Ÿ Ïõ¯D®àã¡Þ¯qsŸütW@gŠ(\0¢ŠNô\0¹¢Š(\0¢ƒE\0QE\0QE\0QE\0÷¯ž|U‘âMN01‹‡ãês_CWÏÞ3`þ*Õäyí@´RÒPE-\0h¢Š\03E´\0”´R`\Z\0(¢Š\0))h 4Qš(\0 QE\0Qš(Ó¾Ýq©ÛÏÉ ˜?Ò½6¼Gá†¦4ÿ\0E%Ê4\'\'Œõ¨ýkÛ¨\0¢Í\0QIK@Q@u¢€”\n:QŠ\0:Ñš( Š1E\0¹¯œu›¯¶ê÷³Ž’Lì>…Ž+Þ<U©\r#Ã×÷9Ã,LýãÀýM|ôyÉ ¤Q@-%\0QE\0´”Q@¢Š\0;ÑE\0QE\0Qš(ï@h¢€\n(íE\0Kmpö—1OÛ$lHìAÍ}£jI¬év×±à,ÈÎqø\ZùÆ½á?‰þÏpúEÃþîSºönãñþžôê´QA Š;Q@”´\0QE\0QE\0v£Q@U]OQƒI°žîá¶Åîcý\0yÿ\0ÅýodVºR[÷Òàöè£ùŸÂ¼¾®k:´Úæ¥=íÁÌ’¶qýÑØ ªT\0´¨£½\0-%PKIE\0´”PKIE\0QŠ( ŒQE\0QE\0QE\0QE\0Ÿ¯‹\"1GRX{\Zm%\0{Ÿ|a‰´ð’°]B‰S?{ý¡]E|Ý¦êW\ZEìWv²§Œä0ýAö¯jðŽ-<O\0ÊÁ~£ç„Ÿ½î¾£Ú€:z(¢€\n( PEPEPEÉ¦KxšIcFK1À€ÌK1À’OJñŸˆ¾3þß»V›–%o_ íVüyñê¢M?Mb–gå’aÁ—Øzç\\\r\0\'J(¢€\n(¥ ¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0£½PEPKIGz\0Z)( ŸÒ[Ê’ÄíŠr®§jè¼7à-KÄ˜‘Sì¶¿óÞP@#ý‘Þ½CÃß´­lž_Úî‡>tÃ8>Ã  ßø›[ÕbH¯´ù%‡^à\'àõúŠî\r\0``Q@¤¥Í\0QE\0QE\0Aq%¥¤’Ãn÷R(ÊÅ\0·âkÄügâ­cX¹k{Øä°NE©ë^çUu\r.ÓU€Ãwn—žÎ3ùzPÍØ¢½;Ä_‡Í6‘7¿Ùæ?É¿Çó¯9½±¸Ón\Z¨^	Wª:àÐz(¢€\n(¢€\n(¢€\n\rŠ\0(¢Š\0)i)h(¢Š\0(ÍPEPŠ(¢€\n(«z^•u­^Çki–gì:ÜŸj\0†ÖÖkÛ„‚ÚYœíTA’Mz·„>A`ëVqsÃ,Q¿©ý>µ»áÚøZØ6×®?y9=—Ð:èèB(U\0Àµ-¢€\n(éE\0RRÐš(¢€\n(¢€E£µ\0™®xrÃÄVÆØCŸápè}iõ¢€<\'Åž½ð¼…È7L~YÔtöaØ×5_LOw0¼RÆ²FãŽ2¯ ñßÃ×ÑKßiêÒXutêbÿ\0@=”´\0”QE\0QE\0QK@	Eb€\n(£µ\0QE\0RRÐE¡K\0$ž\0>Ÿ§Ïª^Ekm–iNÕQþzWºxCÂPxVÃbâK©\02ËŽ§Ð{\nÌøwàÕÐ,EÝÒí	ÆNG1/÷~¾µÙPF(£½\0v¢Š\0)(¥ QE\0QE\0Ph \0QŠ( ©¢Š(\0¤u¥X¤`ƒÐŠ\\Ñ@9ñÀ§C•¯ì›	æQÿ\0,‰þ•Ã×Ò÷6Ñ^@ðÌ‹,N6²0È\"¼\'Æ¾“Âú¡E¬åËC\'·÷O¸ ~ŠJ(\0£\Z(i(¢€\nZJZ\0N´Phí@Q@	E-\0W}ð»ÂÚWŸÚ—)›kvÄJGþ¿A\\n‘¥Í¬êVöPÉ3m°Éú\núIÓaÑôë{8,q QŽç¹üzÐº(¢€\n(¢€\n(¢€\n(¢€\n;QE\0QE\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¬Ÿèø“H–ÎL+ãtrcî7cZÔPÍw–ré÷s[N»&‰Š2úPW§|ZðÎBk(ãÎ\0ÿ\0¾[ú~Uæ4\0QE\0´”´”\0RÒQ@QÖ€\n(¢€\n1EKim%åÔPDI+P;“Å\0zgÂ\0,3êò¯ÌÄÅ{â?Óð5é_…SÒ4èô2ÚÎ,l…ä§¹üM\\ Š( Š(í@%-\0QE\0QE  Š( ŒÑE\0QE\0QE\0QE\0QA \nú…”Z•”ö³®è¦BŒ=|ï«éÒi\ZÍœ¼¼.S>¾†¾¯+øÁ¢yWVº¤k…”yR?ˆt\'ðÏå@qEPEPEPÞŠ( ŠJZ\0:×gð«HþÐñ\'Ú]s¢y™ÿ\0hð¿ÔþÆW±|$ÓE¯‡¥ºaóÜÊyÿ\0ex®h¹¢ŽÔ~\0QGJ(\0¢ÂŠ\0(¢Š\0(4Q@Q@Q@Q@Q@Q@Q@Q@bxÏHþÚðÝí¸]Òó#ãø‡#ü?\ZÛ ÐÌ´•«â7û\'Ä7ö aRSýÓÈý\rePEPKIE\0QGµ\0QE\0kèY\r;ÃÚ}¾0RÜ1üDdþ¹¯Òm¾ÛªÙÛõófD?BE}\0\0\00J\0Z(¢€\nJZ(\0¢Š(\0¢Š(\0¢ŠOÂ€ô´Qé@Q@Q@¨¢€\n(¢€\n;Qš(\0¢Š(\0¢Š(Ç¾.Øˆ<CÀ\\	àã«GòÅpµë-é– s¥	ö#?Ò¼ž€\nZ)(\0¢ŠZ\0J(<Q@v¤\r\0oø´x¿LB2…ñþè\'úW¾ƒ^ðÁCxÆÓ=‘Èÿ\0¾M{‡J\0(íE€ôR)E\0~w£Ð\0(4Px ¥4zÑÞ€\n( s@Q@h¢€\n((\0QE\0QF9¢€\n)i:\n\03Eèø©\0—Â¾2b‘õÇõ¯¯yø†¡¼©ýÅ?øð¯é@´PRÒw¥ ÿÙ','#348fe2','','','',0.00,'YjQ4cmZEZHQyNnBNQ2Z5d0R4R1NnUT09','','1,1,1,1,1,1,1','00:00','23:59','','');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loglogin`
--

DROP TABLE IF EXISTS `loglogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loglogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idadmin` varchar(24) NOT NULL,
  `fecha` datetime NOT NULL,
  `ipadmin` varchar(20) NOT NULL,
  `error` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loglogin`
--

LOCK TABLES `loglogin` WRITE;
/*!40000 ALTER TABLE `loglogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `loglogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logsistema`
--

DROP TABLE IF EXISTS `logsistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logsistema` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `log` text NOT NULL,
  `fechalog` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `operador` int(3) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `tipolog` int(1) NOT NULL,
  `data_cambios` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idcliente`),
  KEY `operador` (`operador`),
  KEY `fechalog` (`fechalog`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logsistema`
--

LOCK TABLES `logsistema` WRITE;
/*!40000 ALTER TABLE `logsistema` DISABLE KEYS */;
/*!40000 ALTER TABLE `logsistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(6) unsigned zerofill NOT NULL,
  `asunto` varchar(50) NOT NULL,
  `cuerpo` text NOT NULL,
  `adjunto` varchar(200) DEFAULT NULL,
  `enviado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` varchar(10) NOT NULL DEFAULT 'no enviado',
  `mailremitente` varchar(150) NOT NULL,
  `maildestino` varchar(150) NOT NULL,
  `log` varchar(150) NOT NULL,
  `pdfpayu` varchar(150) NOT NULL,
  `facturaid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `estado` (`estado`),
  KEY `enviado` (`enviado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail`
--

LOCK TABLES `mail` WRITE;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiales`
--

DROP TABLE IF EXISTS `materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materiales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idalmacen` int(11) NOT NULL,
  `idinstall` int(8) unsigned zerofill NOT NULL,
  `cantidad` varchar(50) NOT NULL,
  `detalle` text NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `serial` varchar(50) NOT NULL,
  `mac` varchar(20) NOT NULL,
  `tipopro` varchar(20) NOT NULL,
  `condicion` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idalmacen` (`idalmacen`),
  KEY `idinstall` (`idinstall`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiales`
--

LOCK TABLES `materiales` WRITE;
/*!40000 ALTER TABLE `materiales` DISABLE KEYS */;
/*!40000 ALTER TABLE `materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensajeria`
--

DROP TABLE IF EXISTS `mensajeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensajeria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destino` varchar(120) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `mensaje` text NOT NULL,
  `adjunto` text NOT NULL,
  `gateway` int(2) NOT NULL,
  `estado` int(1) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `log` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idcliente`),
  KEY `estado` (`estado`),
  KEY `fecha` (`fecha`),
  KEY `gateway` (`gateway`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensajeria`
--

LOCK TABLES `mensajeria` WRITE;
/*!40000 ALTER TABLE `mensajeria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensajeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monedas`
--

DROP TABLE IF EXISTS `monedas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monedas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` text NOT NULL,
  `unidad_letra` text,
  `sufijo` text NOT NULL,
  `cambio` decimal(12,2) NOT NULL DEFAULT '1.00',
  `format` varchar(20) NOT NULL,
  `simbolo` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monedas`
--

LOCK TABLES `monedas` WRITE;
/*!40000 ALTER TABLE `monedas` DISABLE KEYS */;
/*!40000 ALTER TABLE `monedas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nap`
--

DROP TABLE IF EXISTS `nap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  `puertos` int(11) NOT NULL,
  `coordenadas` varchar(150) NOT NULL,
  `ubicacion` text NOT NULL,
  `puertoinicio` int(1) NOT NULL DEFAULT '1',
  `detalles` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nap_idx_id_descripcion` (`id`,`descripcion`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nap`
--

LOCK TABLES `nap` WRITE;
/*!40000 ALTER TABLE `nap` DISABLE KEYS */;
/*!40000 ALTER TABLE `nap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nas`
--

DROP TABLE IF EXISTS `nas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idserver` int(11) NOT NULL,
  `nasname` varchar(120) NOT NULL,
  `shortname` varchar(80) DEFAULT NULL,
  `type` varchar(30) DEFAULT 'other',
  `ports` int(5) DEFAULT NULL,
  `secret` varchar(60) NOT NULL DEFAULT 'secret',
  `server` varchar(64) DEFAULT NULL,
  `community` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT 'RADIUS Client',
  PRIMARY KEY (`id`),
  KEY `nasname` (`nasname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nas`
--

LOCK TABLES `nas` WRITE;
/*!40000 ALTER TABLE `nas` DISABLE KEYS */;
/*!40000 ALTER TABLE `nas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newcampos`
--

DROP TABLE IF EXISTS `newcampos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newcampos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tabla` varchar(100) NOT NULL,
  `campos` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newcampos`
--

LOCK TABLES `newcampos` WRITE;
/*!40000 ALTER TABLE `newcampos` DISABLE KEYS */;
INSERT INTO `newcampos` VALUES (1,'Ingresos y Egresos',''),(2,'Monitoreo',''),(3,'Servicios de Internet','');
/*!40000 ALTER TABLE `newcampos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notacredito`
--

DROP TABLE IF EXISTS `notacredito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notacredito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` int(6) unsigned zerofill NOT NULL,
  `pdf` text NOT NULL,
  `invoice_num` varchar(50) NOT NULL,
  `credito_num` varchar(50) NOT NULL,
  `cae` varchar(150) NOT NULL,
  `vto` date NOT NULL,
  `barcode` varchar(150) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `emitido` date NOT NULL,
  `idafip` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cliente` (`cliente`),
  KEY `idafip` (`idafip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notacredito`
--

LOCK TABLES `notacredito` WRITE;
/*!40000 ALTER TABLE `notacredito` DISABLE KEYS */;
/*!40000 ALTER TABLE `notacredito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(6) unsigned zerofill NOT NULL,
  `asunto` varchar(150) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha` datetime NOT NULL,
  `adjuntos` varchar(300) NOT NULL,
  `idoperador` int(3) NOT NULL,
  `imagen` longtext NOT NULL,
  `tipo` int(1) NOT NULL,
  `portal` varchar(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticenter`
--

DROP TABLE IF EXISTS `noticenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticenter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `detalle` text NOT NULL,
  `tipo` int(1) NOT NULL,
  `titulo` tinytext NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `link` text NOT NULL,
  `portal` int(1) NOT NULL,
  `idsoporte` int(11) NOT NULL,
  `idreporte` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tipo` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticenter`
--

LOCK TABLES `noticenter` WRITE;
/*!40000 ALTER TABLE `noticenter` DISABLE KEYS */;
/*!40000 ALTER TABLE `noticenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificaciones_factura`
--

DROP TABLE IF EXISTS `notificaciones_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificaciones_factura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mensaje` text NOT NULL,
  `vencimiento` date NOT NULL,
  `filtro` varchar(50) NOT NULL,
  `aplicados` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones_factura`
--

LOCK TABLES `notificaciones_factura` WRITE;
/*!40000 ALTER TABLE `notificaciones_factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificaciones_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oids`
--

DROP TABLE IF EXISTS `oids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `oid` varchar(100) NOT NULL,
  `intervalo` int(2) NOT NULL DEFAULT '1',
  `tipo` varchar(30) NOT NULL,
  `estado` int(1) NOT NULL DEFAULT '1',
  `idequipo` int(11) NOT NULL,
  `activar` varchar(2) NOT NULL,
  `lastcheck` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastdata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idequipo` (`idequipo`),
  KEY `intervalo` (`intervalo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oids`
--

LOCK TABLES `oids` WRITE;
/*!40000 ALTER TABLE `oids` DISABLE KEYS */;
/*!40000 ALTER TABLE `oids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openvpn`
--

DROP TABLE IF EXISTS `openvpn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openvpn` (
  `id` int(11) NOT NULL,
  `router` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `redes` mediumtext NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `estado` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `router` (`router`),
  KEY `login` (`usuario`,`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openvpn`
--

LOCK TABLES `openvpn` WRITE;
/*!40000 ALTER TABLE `openvpn` DISABLE KEYS */;
/*!40000 ALTER TABLE `openvpn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operaciones`
--

DROP TABLE IF EXISTS `operaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operaciones` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nfactura` int(8) unsigned zerofill NOT NULL,
  `idcliente` int(6) unsigned zerofill NOT NULL,
  `fecha_pago` datetime NOT NULL,
  `operador` int(3) NOT NULL,
  `transaccion` varchar(60) DEFAULT NULL,
  `meses` int(2) NOT NULL,
  `forma_pago` text NOT NULL,
  `descripcion` text NOT NULL,
  `cobrado` decimal(12,2) NOT NULL,
  `comision` decimal(12,2) NOT NULL,
  `saldo` decimal(12,2) NOT NULL,
  `descripcion_pago` text NOT NULL,
  `estado_invoice` int(1) NOT NULL,
  `idmoneda` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idcliente`),
  KEY `fecha_pago` (`fecha_pago`),
  KEY `ultimo_pago` (`idcliente`,`fecha_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operaciones`
--

LOCK TABLES `operaciones` WRITE;
/*!40000 ALTER TABLE `operaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `operaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasarela`
--

DROP TABLE IF EXISTS `pasarela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pasarela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idserver` text NOT NULL,
  `pais` varchar(20) NOT NULL,
  `pin` text NOT NULL,
  `cuenta` text NOT NULL,
  `correo` text NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `dias` int(2) NOT NULL,
  `estado` varchar(2) NOT NULL DEFAULT 'on',
  `sandbox` varchar(10) NOT NULL DEFAULT 'live',
  `comision` int(1) NOT NULL,
  `porcentaje` decimal(10,2) NOT NULL DEFAULT '5.40',
  `fijo` decimal(10,2) NOT NULL DEFAULT '0.30',
  `mp_atm` varchar(120) NOT NULL DEFAULT 'atm',
  `mp_ticket` varchar(120) NOT NULL DEFAULT 'ticket',
  `extra_1` int(11) NOT NULL,
  `extra_2` text NOT NULL,
  `extra_3` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasarela`
--

LOCK TABLES `pasarela` WRITE;
/*!40000 ALTER TABLE `pasarela` DISABLE KEYS */;
INSERT INTO `pasarela` VALUES (3,'','argentina','IVWB001U0U','20544850','luiscgamba@hotmail.com','dineromail',0,'','live',0,5.40,0.30,'atm','ticket',0,'',''),(4,'','','','','MXN','paypal',0,'','live',1,5.40,0.30,'atm','ticket',0,'',''),(5,'','','1234','1234','PEN','mp',0,'','live',0,5.40,0.30,'','',0,'',''),(7,'','argentina','123','1234','','digital',0,'','live',0,5.40,0.30,'atm','',0,'',''),(8,'1234','COP','1234','1234','508029','payu',0,'','live',0,0.00,0.00,'BALOTO','',0,'',''),(9,'','','key_1234','','','oxxo',0,'','live',0,5.40,0.30,'atm','',0,'',''),(10,'','','1234','1234','','khipu',0,'','live',0,5.40,0.30,'atm','',0,'',''),(11,'','','1234','https://mikrowisp.net','9','flow',0,'','live',0,5.40,0.30,'1234','ticket',0,'',''),(12,'','','pk_test_123','sk_test_123','9','culqi',0,'','live',0,5.40,0.30,'5d096a790f0e03fdad89e202064a3a7165ce2df5','ticket',0,'',''),(13,'https://www.cobrodigital.com:14365/ws3/','argentina','HA123','12345','','cobro',0,'','live',0,5.40,0.30,'atm','',0,'',''),(14,'0','0','','','','webpay',0,'','sandbox',0,5.40,0.30,'atm','ticket',0,'',''),(15,'','','','','','epayco',0,'','live',0,5.40,0.30,'atm','ticket',0,'',''),(16,'','0','','','','pagofacil',0,'','live',0,5.40,0.30,'atm','ticket',0,'',''),(17,'','','','','','athmovil',0,'','live',0,2.25,0.30,'atm','ticket',0,'',''),(18,'','','','','PEN','kushki',0,'','live',0,5.40,0.30,'atm','ticket',0,'',''),(19,'','','','','','bbva',0,'','live',0,5.40,0.30,'atm','ticket',0,'',''),(20,'','','','','','PagueloFacil',0,'','live',0,5.40,0.30,'atm','ticket',0,'',''),(21,'','','','','','mirecaudo',0,'','live',0,5.40,0.30,'atm','ticket',0,'',''),(22,'','','','','','Siro',0,'','live',0,5.40,0.30,'atm','ticket',0,'',''),(23,'','','','','','wompi',0,'','live',0,5.40,0.30,'atm','ticket',0,'',''),(24,'','','','','','Pagalo',0,'','live',0,5.40,0.30,'atm','ticket',0,'',''),(25,'','','','','','pixelpay',0,'','live',0,5.40,0.30,'atm','ticket',0,'',''),(26,'','','','','','Authorizenet',0,'','live',0,5.40,0.30,'atm','ticket',0,'',''),(27,'','','','','','Niubiz',0,'','live',0,2.25,0.30,'atm','ticket',0,'',''),(28,'','','','','','Openpay',0,'','live',0,2.25,0.30,'atm','ticket',0,'',''),(29,'','ecuador','','','','payphone',0,'','live',0,5.40,0.30,'atm','ticket',0,'',''),(30,'','CL','','','','toku',0,'','live',0,5.40,0.30,'atm','ticket',0,'',''),(31,'','Argentina','','','','pagotic',0,'','live',0,5.40,0.30,'atm','ticket',0,'',''),(32,'','Guatemala','','','','recurrente',0,'','live',0,5.40,0.30,'atm','ticket',0,'',''),(33,'','','','','','pagoralia',0,'','live',0,5.40,0.30,'atm','ticket',0,'',''),(34,'','colombia','','','','bold',0,'','live',0,5.40,0.30,'atm','ticket',0,'','');
/*!40000 ALTER TABLE `pasarela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasarelaotros`
--

DROP TABLE IF EXISTS `pasarelaotros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pasarelaotros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pasarela` text NOT NULL,
  `dsp1` text NOT NULL,
  `dsp2` text NOT NULL,
  `dsp3` text NOT NULL,
  `dsp4` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasarelaotros`
--

LOCK TABLES `pasarelaotros` WRITE;
/*!40000 ALTER TABLE `pasarelaotros` DISABLE KEYS */;
INSERT INTO `pasarelaotros` VALUES (1,'Efectivo Oficina/Sucursal','Efectivo','Cheque','',''),(2,'DepÃ³sito bancario','Banco 1','Banco 2','banco 3','banco 4'),(3,'Transferencia Bancaria','banco 111','banco 2','','');
/*!40000 ALTER TABLE `pasarelaotros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfiles`
--

DROP TABLE IF EXISTS `perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfiles` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `plan` varchar(300) NOT NULL,
  `descripcion` text NOT NULL,
  `velocidad` varchar(300) NOT NULL,
  `pcq` varchar(300) NOT NULL,
  `prioridad` varchar(350) NOT NULL,
  `costo` decimal(12,2) NOT NULL DEFAULT '0.00',
  `profile` varchar(500) NOT NULL,
  `lista` varchar(30) NOT NULL,
  `limitat` int(4) NOT NULL,
  `burst_limit` int(3) NOT NULL,
  `burst_threshold` int(3) NOT NULL,
  `burst_time` int(3) NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `api` int(1) NOT NULL,
  `id_mikrotik` varchar(200) NOT NULL DEFAULT '0',
  `limit_down` varchar(20) NOT NULL DEFAULT '0',
  `limit_up` varchar(20) NOT NULL DEFAULT '0',
  `parent` varchar(100) NOT NULL,
  `reuso` int(3) NOT NULL DEFAULT '1',
  `is_disabled` int(1) NOT NULL,
  `queue_type_down` varchar(50) NOT NULL DEFAULT 'default-small',
  `queue_type_up` varchar(50) NOT NULL DEFAULT 'default-small',
  PRIMARY KEY (`id`),
  KEY `perfiles_idx_id_plan` (`id`,`plan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfiles`
--

LOCK TABLES `perfiles` WRITE;
/*!40000 ALTER TABLE `perfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfilesvoip`
--

DROP TABLE IF EXISTS `perfilesvoip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfilesvoip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan` varchar(100) NOT NULL,
  `minutos` int(11) NOT NULL,
  `valormovil` decimal(10,2) NOT NULL,
  `valorfijo` decimal(10,2) NOT NULL,
  `costo` decimal(12,2) NOT NULL,
  `descripcion` text NOT NULL,
  `notas` text NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `perfilesvoip_idx_id_plan` (`id`,`plan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfilesvoip`
--

LOCK TABLES `perfilesvoip` WRITE;
/*!40000 ALTER TABLE `perfilesvoip` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfilesvoip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predeterminado`
--

DROP TABLE IF EXISTS `predeterminado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predeterminado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predeterminado`
--

LOCK TABLES `predeterminado` WRITE;
/*!40000 ALTER TABLE `predeterminado` DISABLE KEYS */;
/*!40000 ALTER TABLE `predeterminado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producto` varchar(150) NOT NULL,
  `descripcion` text NOT NULL,
  `costo` decimal(12,2) NOT NULL,
  `medida` varchar(20) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `clave_invoice` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productos_idx_id_producto` (`id`,`producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proveedor` text NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `direccion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push`
--

DROP TABLE IF EXISTS `push`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `push` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` int(6) NOT NULL,
  `token` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` int(2) NOT NULL,
  `mensaje` text NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `url` text NOT NULL,
  `tipo` int(1) NOT NULL,
  `text_url` varchar(120) NOT NULL,
  `id_signal` text NOT NULL,
  `portal` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente` (`cliente`),
  KEY `estado` (`estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push`
--

LOCK TABLES `push` WRITE;
/*!40000 ALTER TABLE `push` DISABLE KEYS */;
/*!40000 ALTER TABLE `push` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radacct`
--

DROP TABLE IF EXISTS `radacct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radacct` (
  `radacctid` bigint(21) NOT NULL AUTO_INCREMENT,
  `acctsessionid` varchar(64) NOT NULL DEFAULT '',
  `acctuniqueid` varchar(32) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `realm` varchar(64) DEFAULT '',
  `nasipaddress` varchar(15) NOT NULL DEFAULT '',
  `nasportid` varchar(15) DEFAULT NULL,
  `nasporttype` varchar(32) DEFAULT NULL,
  `acctstarttime` datetime DEFAULT NULL,
  `acctupdatetime` datetime DEFAULT NULL,
  `acctstoptime` datetime DEFAULT NULL,
  `acctinterval` int(12) DEFAULT NULL,
  `acctsessiontime` int(12) unsigned DEFAULT NULL,
  `acctauthentic` varchar(32) DEFAULT NULL,
  `connectinfo_start` varchar(50) DEFAULT NULL,
  `connectinfo_stop` varchar(50) DEFAULT NULL,
  `acctinputoctets` bigint(20) DEFAULT NULL,
  `acctoutputoctets` bigint(20) DEFAULT NULL,
  `calledstationid` varchar(50) NOT NULL DEFAULT '',
  `callingstationid` varchar(50) NOT NULL DEFAULT '',
  `acctterminatecause` varchar(32) NOT NULL DEFAULT '',
  `servicetype` varchar(32) DEFAULT NULL,
  `framedprotocol` varchar(32) DEFAULT NULL,
  `framedipaddress` varchar(15) NOT NULL DEFAULT '',
  `idcliente` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `opt` int(1) NOT NULL,
  `framedipv6address` varchar(45) NOT NULL DEFAULT '',
  `framedipv6prefix` varchar(45) NOT NULL DEFAULT '',
  `framedinterfaceid` varchar(44) NOT NULL DEFAULT '',
  `delegatedipv6prefix` varchar(45) NOT NULL DEFAULT '',
  `class` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`radacctid`),
  UNIQUE KEY `acctuniqueid` (`acctuniqueid`),
  KEY `username` (`username`),
  KEY `framedipaddress` (`framedipaddress`),
  KEY `acctsessionid` (`acctsessionid`),
  KEY `acctsessiontime` (`acctsessiontime`),
  KEY `acctstarttime` (`acctstarttime`),
  KEY `acctinterval` (`acctinterval`),
  KEY `acctstoptime` (`acctstoptime`),
  KEY `nasipaddress` (`nasipaddress`),
  KEY `idcliente` (`idcliente`),
  KEY `idservicio` (`idservicio`),
  KEY `opt` (`opt`),
  KEY `radacct_idx_acctstartt_acctoutput_acctinputo` (`acctstarttime`,`acctoutputoctets`,`acctinputoctets`),
  KEY `radacct_idx_idcliente_framedipad_acctstartt` (`idcliente`,`framedipaddress`,`acctstarttime`),
  KEY `framedipv6address` (`framedipv6address`),
  KEY `framedipv6prefix` (`framedipv6prefix`),
  KEY `framedinterfaceid` (`framedinterfaceid`),
  KEY `delegatedipv6prefix` (`delegatedipv6prefix`),
  KEY `bulk_close` (`acctstoptime`,`nasipaddress`,`acctstarttime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radacct`
--

LOCK TABLES `radacct` WRITE;
/*!40000 ALTER TABLE `radacct` DISABLE KEYS */;
/*!40000 ALTER TABLE `radacct` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `idcliente-servicios` BEFORE INSERT ON `radacct` FOR EACH ROW IF NEW.idcliente IS NULL THEN
SET NEW.idcliente=(Select idcliente from tblservicios where  pppuser=NEW.username);

SET NEW.idservicio=(Select id from tblservicios where  pppuser=NEW.username);

END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `online-cliente-radius` AFTER INSERT ON `radacct` FOR EACH ROW IF NEW.nasportid IS NOT NULL  THEN
UPDATE tblservicios SET ip=NEW.framedipaddress WHERE pppuser=NEW.username and tipoipv4 IN('1','2');

UPDATE tblservicios SET status_user='ONLINE' WHERE status_user='OFFLINE' and pppuser=NEW.username;
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `offline-cliente-radius` AFTER UPDATE ON `radacct` FOR EACH ROW IF NEW.acctstoptime IS NOT NULL and NEW.nasportid IS NOT NULL THEN

UPDATE tblservicios SET status_user='OFFLINE' WHERE status_user='ONLINE' and pppuser=NEW.username;

UPDATE tblservicios SET ip='' WHERE pppuser=NEW.username and tipoipv4 IN('1','2');

END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `radcheck`
--

DROP TABLE IF EXISTS `radcheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radcheck` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '==',
  `value` varchar(253) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `username` (`username`(32))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radcheck`
--

LOCK TABLES `radcheck` WRITE;
/*!40000 ALTER TABLE `radcheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `radcheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radgroupcheck`
--

DROP TABLE IF EXISTS `radgroupcheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radgroupcheck` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '==',
  `value` varchar(253) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `groupname` (`groupname`(32))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radgroupcheck`
--

LOCK TABLES `radgroupcheck` WRITE;
/*!40000 ALTER TABLE `radgroupcheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `radgroupcheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radgroupreply`
--

DROP TABLE IF EXISTS `radgroupreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radgroupreply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '=',
  `value` varchar(253) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `groupname` (`groupname`(32))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radgroupreply`
--

LOCK TABLES `radgroupreply` WRITE;
/*!40000 ALTER TABLE `radgroupreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `radgroupreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radpostauth`
--

DROP TABLE IF EXISTS `radpostauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radpostauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `pass` varchar(64) NOT NULL DEFAULT '',
  `reply` varchar(32) NOT NULL DEFAULT '',
  `authdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radpostauth`
--

LOCK TABLES `radpostauth` WRITE;
/*!40000 ALTER TABLE `radpostauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `radpostauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radreply`
--

DROP TABLE IF EXISTS `radreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radreply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '=',
  `value` varchar(253) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `username` (`username`(32))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radreply`
--

LOCK TABLES `radreply` WRITE;
/*!40000 ALTER TABLE `radreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `radreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radusergroup`
--

DROP TABLE IF EXISTS `radusergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radusergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `username` (`username`(32))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radusergroup`
--

LOCK TABLES `radusergroup` WRITE;
/*!40000 ALTER TABLE `radusergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `radusergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reconexiones`
--

DROP TABLE IF EXISTS `reconexiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reconexiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` int(6) unsigned zerofill NOT NULL,
  `facorigen` int(8) unsigned zerofill NOT NULL,
  `monto_reconexion` decimal(10,2) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` int(1) NOT NULL DEFAULT '1',
  `detalle` varchar(200) NOT NULL DEFAULT 'ReconexiÃ³n del servicio por Corte',
  PRIMARY KEY (`id`),
  KEY `cliente` (`cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reconexiones`
--

LOCK TABLES `reconexiones` WRITE;
/*!40000 ALTER TABLE `reconexiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `reconexiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporte`
--

DROP TABLE IF EXISTS `reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(6) unsigned zerofill NOT NULL,
  `asunto` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `lugar` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `transaccion` varchar(50) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `adjunto` text NOT NULL,
  `mensaje` text NOT NULL,
  `estado` int(1) NOT NULL DEFAULT '1',
  `fecha2` datetime NOT NULL,
  `nfactura` int(8) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente` (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporte`
--

LOCK TABLES `reporte` WRITE;
/*!40000 ALTER TABLE `reporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `reporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saldos`
--

DROP TABLE IF EXISTS `saldos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saldos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(6) unsigned zerofill NOT NULL,
  `idorigen` int(8) unsigned zerofill NOT NULL,
  `iddestino` int(8) unsigned zerofill NOT NULL,
  `estado` varchar(11) NOT NULL DEFAULT 'no cobrado',
  `monto` decimal(12,2) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(300) NOT NULL DEFAULT 'Saldo generado AutomÃ¡tico',
  `codigopasarela` text NOT NULL,
  `moneda` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `iduser` (`iduser`,`estado`),
  KEY `cliente_saldo` (`estado`,`iduser`,`monto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saldos`
--

LOCK TABLES `saldos` WRITE;
/*!40000 ALTER TABLE `saldos` DISABLE KEYS */;
/*!40000 ALTER TABLE `saldos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server`
--

DROP TABLE IF EXISTS `server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nodo` varchar(150) NOT NULL,
  `ip` varchar(150) NOT NULL,
  `user` varchar(150) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `coordenadas` varchar(350) NOT NULL,
  `version` varchar(350) NOT NULL DEFAULT '5',
  `estado` varchar(30) NOT NULL DEFAULT 'API-ERROR',
  `port_web` varchar(100) NOT NULL,
  `conexiones` varchar(5) NOT NULL,
  `modelo` varchar(150) NOT NULL,
  `seguridad` int(2) NOT NULL,
  `velocidad` varchar(20) NOT NULL DEFAULT 'queues',
  `secret_radius` varchar(30) NOT NULL,
  `serial` varchar(60) NOT NULL,
  `seguridad2` int(1) NOT NULL,
  `block` int(1) NOT NULL,
  `ip_radius` varchar(100) NOT NULL,
  `mantenimiento` int(1) NOT NULL,
  `api_ssl` varchar(4) NOT NULL,
  `port_api` varchar(10) NOT NULL DEFAULT '8728',
  `api` varchar(20) NOT NULL,
  `flow` int(2) NOT NULL,
  `openvpn` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `txt_nodo` (`id`,`nodo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server`
--

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smartolt`
--

DROP TABLE IF EXISTS `smartolt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smartolt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` int(11) NOT NULL,
  `idolt` int(11) NOT NULL,
  `idvlan` int(11) NOT NULL,
  `detalle` text NOT NULL,
  `extra` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smartolt`
--

LOCK TABLES `smartolt` WRITE;
/*!40000 ALTER TABLE `smartolt` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartolt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smsconfig`
--

DROP TABLE IF EXISTS `smsconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smsconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(500) NOT NULL,
  `userapi` text NOT NULL,
  `contrasenaapi` text NOT NULL,
  `proveedor` varchar(50) NOT NULL DEFAULT 'API genÃ©rico',
  `state` varchar(20) NOT NULL,
  `idequipo` varchar(15) NOT NULL,
  `pausa` int(11) NOT NULL,
  `pais` int(11) NOT NULL,
  `metodo` varchar(10) NOT NULL DEFAULT 'get',
  `limite` int(11) NOT NULL DEFAULT '160',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smsconfig`
--

LOCK TABLES `smsconfig` WRITE;
/*!40000 ALTER TABLE `smsconfig` DISABLE KEYS */;
INSERT INTO `smsconfig` VALUES (1,'','','','NEXMO','','',0,51,'get',160),(2,'','','sdasdasdasd','SMS GATEWAY','','103115',30,51,'get',160),(3,'','','','API genÃ©rico','','',0,0,'GET',160),(4,'','','usb2','MIKROTIK GATEWAY','','',30,51,'get',160),(5,'','','','smsmasivos','','',0,51,'get',160),(6,'','','','hablame','','',0,0,'get',160),(7,'','','','whatsmsapi','','',0,0,'get',1000),(8,'','','','waboxapp','','',0,0,'get',1000),(9,'','','','connectus','','',0,0,'get',160),(10,'','','','sacdigital','','',0,0,'get',160),(11,'','','','pbxhosting','','',0,0,'get',160),(12,'','','','whatsapp','','',0,0,'get',500),(13,'','','','generico','','',0,0,'get',160),(14,'https://api.wassenger.com/v1/messages','','','wassenger','','',0,0,'POST',160),(15,'https://api.wiivo.net/v1/messages','','','wiivo','','',0,0,'POST',160),(16,'https://big.automatizadovip.com/api/whatsapp/send','','','automatiza','','',0,0,'POST',160),(17,'','','','crminbox','','',0,0,'POST',500);
/*!40000 ALTER TABLE `smsconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smsinbox`
--

DROP TABLE IF EXISTS `smsinbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smsinbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` int(11) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha` datetime NOT NULL,
  `numero` varchar(30) NOT NULL,
  `view` int(1) NOT NULL,
  `idsms` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `iduser` (`cliente`),
  KEY `idsms` (`idsms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smsinbox`
--

LOCK TABLES `smsinbox` WRITE;
/*!40000 ALTER TABLE `smsinbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `smsinbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smsmensajes`
--

DROP TABLE IF EXISTS `smsmensajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smsmensajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(6) unsigned zerofill NOT NULL,
  `enviado` datetime NOT NULL,
  `ndestino` varchar(150) NOT NULL,
  `stado` varchar(12) NOT NULL DEFAULT 'en espera',
  `mensaje` text NOT NULL,
  `proveedor` int(2) NOT NULL,
  `error` text NOT NULL,
  `adjunto` varchar(200) NOT NULL,
  `creado` datetime NOT NULL,
  `w` int(2) NOT NULL,
  `archivo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smsmensajes`
--

LOCK TABLES `smsmensajes` WRITE;
/*!40000 ALTER TABLE `smsmensajes` DISABLE KEYS */;
/*!40000 ALTER TABLE `smsmensajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soporte`
--

DROP TABLE IF EXISTS `soporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soporte` (
  `id` int(7) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `idcliente` int(6) unsigned zerofill NOT NULL,
  `idsoporte` int(3) NOT NULL,
  `asunto` varchar(150) NOT NULL,
  `fecha_soporte` datetime NOT NULL,
  `estado` varchar(20) NOT NULL DEFAULT 'abierto',
  `operador` varchar(20) NOT NULL,
  `fecha_cerrado` datetime NOT NULL,
  `procede` varchar(15) NOT NULL,
  `solicitante` varchar(250) NOT NULL,
  `fechavisita` date NOT NULL,
  `turno` varchar(10) NOT NULL,
  `agendado` varchar(10) NOT NULL,
  `lastdate` datetime NOT NULL,
  `dp` int(2) NOT NULL,
  `cun` text NOT NULL,
  `motivo_cierre` text NOT NULL,
  `oculto` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idcliente` (`idcliente`),
  KEY `estado` (`estado`),
  KEY `idsoporte` (`idsoporte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soporte`
--

LOCK TABLES `soporte` WRITE;
/*!40000 ALTER TABLE `soporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `soporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tareas`
--

DROP TABLE IF EXISTS `tareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tareas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` tinytext NOT NULL,
  `estado` int(1) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `horas` int(2) NOT NULL,
  `cliente` int(6) unsigned zerofill NOT NULL,
  `operador` int(3) NOT NULL,
  `minutos` int(2) NOT NULL,
  `direccion` text NOT NULL,
  `gps` tinytext NOT NULL,
  `tareas` text NOT NULL,
  `idproyecto` int(11) NOT NULL DEFAULT '1',
  `descripcion` text NOT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `operador` (`operador`),
  KEY `inicio` (`fecha_inicio`),
  KEY `cliente` (`cliente`),
  KEY `idproyecto` (`idproyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tareas`
--

LOCK TABLES `tareas` WRITE;
/*!40000 ALTER TABLE `tareas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tareas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblapi`
--

DROP TABLE IF EXISTS `tblapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblapi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comando` text NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nodo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblapi`
--

LOCK TABLES `tblapi` WRITE;
/*!40000 ALTER TABLE `tblapi` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblavisouser`
--

DROP TABLE IF EXISTS `tblavisouser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblavisouser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` int(6) unsigned zerofill NOT NULL,
  `mora` varchar(2) NOT NULL,
  `reconexion` varchar(2) NOT NULL,
  `impuesto` varchar(5) NOT NULL DEFAULT 'NO',
  `avatar_cliente` mediumblob NOT NULL,
  `chat` int(2) NOT NULL,
  `zona` int(4) NOT NULL,
  `diapago` int(2) NOT NULL DEFAULT '1',
  `tipopago` int(1) NOT NULL DEFAULT '1',
  `tipoaviso` int(1) NOT NULL,
  `meses` int(2) NOT NULL DEFAULT '1',
  `fecha_factura` date NOT NULL,
  `diafactura` int(2) NOT NULL DEFAULT '1',
  `avisopantalla` int(11) NOT NULL,
  `corteautomatico` int(2) NOT NULL,
  `avisosms` int(2) NOT NULL,
  `avisosms2` int(2) NOT NULL,
  `avisosms3` int(2) NOT NULL,
  `afip_condicion_iva` varchar(40) NOT NULL DEFAULT 'Consumidor Final',
  `afip` varchar(2) NOT NULL,
  `afip_condicion_venta` varchar(30) NOT NULL DEFAULT 'Otra',
  `afip_automatico` int(2) NOT NULL,
  `avatar_color` varchar(15) NOT NULL,
  `tiporecordatorio` int(1) NOT NULL,
  `afip_punto_venta` text NOT NULL,
  `id_telegram` int(11) NOT NULL,
  `router_eliminado` int(6) NOT NULL,
  `otros_impuestos` text NOT NULL,
  `mikrowisp_app_id` text NOT NULL,
  `isaviable` int(1) NOT NULL,
  `invoice_electronic` int(2) NOT NULL,
  `invoice_data` text NOT NULL,
  `fecha_suspendido` datetime NOT NULL,
  `limit_velocidad` int(2) NOT NULL,
  `mantenimiento` int(1) NOT NULL,
  `data_retirado` text NOT NULL,
  `fecha_retirado` date NOT NULL,
  `tipo_estrato` int(2) NOT NULL DEFAULT '4',
  `fecha_corte_fija` date NOT NULL,
  `mensaje_comprobante` int(11) NOT NULL,
  `id_moneda` int(5) NOT NULL DEFAULT '1',
  `afip_enable_percepcion` decimal(4,2) NOT NULL,
  `gatewaynoty` text NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `empresa_afip` int(11) NOT NULL DEFAULT '1',
  `code_toku` varchar(100) NOT NULL,
  `tipo_doc` int(11) NOT NULL DEFAULT '0',
  `tipo_operacion` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `iduser` (`cliente`),
  KEY `isaviable` (`isaviable`),
  KEY `lista_user` (`isaviable`,`cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblavisouser`
--

LOCK TABLES `tblavisouser` WRITE;
/*!40000 ALTER TABLE `tblavisouser` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblavisouser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcolumnas`
--

DROP TABLE IF EXISTS `tblcolumnas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcolumnas` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `col` varchar(50) NOT NULL,
  `orden` int(11) NOT NULL,
  `visible` varchar(3) NOT NULL,
  `label` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcolumnas`
--

LOCK TABLES `tblcolumnas` WRITE;
/*!40000 ALTER TABLE `tblcolumnas` DISABLE KEYS */;
INSERT INTO `tblcolumnas` VALUES (1,'id',0,'on',''),(2,'nombre',1,'on',''),(3,'ip',2,'on',''),(4,'saldo',16,'',''),(5,'ipap',3,'',''),(6,'correo',11,'on',''),(7,'telefono',12,'',''),(8,'movil',15,'',''),(9,'mac',8,'',''),(10,'instalado',19,'',''),(11,'cedula',20,'',''),(12,'codigo',23,'',''),(13,'direccion',7,'',''),(14,'plan',13,'on',''),(15,'pasarela',22,'',''),(16,'pppuser',21,'',''),(17,'nodo',18,'on',''),(18,'coordenadas',25,'',''),(19,'emisor',17,'',''),(20,'user_ubnt',24,'',''),(21,'status',28,'on',''),(22,'total_cobrar',26,'',''),(23,'dia_pago',9,'on',''),(24,'ultimo_vencimiento',4,'',''),(25,'proximo_pago',14,'',''),(26,'zona',27,'on',''),(27,'facturas_no_pagadas',10,'on',''),(28,'plan_voip',6,'',''),(29,'direccion_principal',5,'on',''),(30,'ultimo_pago',4,'',''),(31,'fecha_suspendido',5,'',''),(32,'tipo_estrato',4,'',''),(33,'caja_nap',4,'',''),(34,'servicios_personalizados',99,'',''),(35,'fecha_retirado',37,'','Fecha Retirado');
/*!40000 ALTER TABLE `tblcolumnas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblconfiguration`
--

DROP TABLE IF EXISTS `tblconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblconfiguration` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `setting` text NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `setting` (`setting`(32))
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblconfiguration`
--

LOCK TABLES `tblconfiguration` WRITE;
/*!40000 ALTER TABLE `tblconfiguration` DISABLE KEYS */;
INSERT INTO `tblconfiguration` VALUES (1,'nombre_empresa','Mikrowisp'),(2,'userlic',''),(3,'passlic',''),(4,'clientes_sistema','2000'),(5,'version_sistema','6'),(6,'tokenlic','VST40w5Av6u+j7+6VWsq7w==::MUIEAFmxPLyulHAx-_mPNn_0XgKzLVEUWtY1HgIckijcv3cvHBAqDe_aQQBdkKfU0femiyXIEU0_1cogh7tDJssNZJNhURN7dGhrg3M29C4Aj4Lu42G5a8H8Xs6DVlX0n1pDtXKgnmOoOWh92xGL0pPFrG6wrGA7bsqTkuoXWrtskmsKH40jJV5Rf9G5u1CdM5jOJiiJdQ0Zt35CgHgQsd--CJA1l-He-1lVAg1KP90Ol08muCB6Vs6U3NQ-nC282rnD19PrLG569s80sMtEwE-64yWQruAs3ZqnaO0V7bJLBKlDSAStXxz0GV1IxJegSciKMzRFPzwYjF1IwvIWQ7zog2QaBpaTNdLMnCAK_CK2sQZvLGH5ZpvaxFhdm5XiXuzT9VvRaF26EObMCRg6a_oJjsR3rnhqQ65Mh5CAx6ugLOJaHyiGZdfzTeTLMzV_uMvBVeTfS482BToyePBAYa2_duo8Jbp2ykrWFYvBoO8='),(7,'correo_backup','backup@miempresa.com'),(8,'correo_soporte','soporte@miempresa.com'),(9,'correo_factura','facturacion@miempresa.com'),(10,'moneda','$'),(11,'ini_impuesto','21'),(12,'nfacturalegal','1'),(13,'titulo_portal','Acceso Clientes'),(14,'pestana','Lugares de Pagos'),(15,'html_personalizado','<div style=\"padding:20px\">\n<div class=\"panel panel-inverse\">\n<div class=\"panel-heading\"><strong>Lugares de Pagos</strong></div>\n\n<div class=\"panel-body\">\n<ul>\n	<li>Lugar de pago 1</li>\n	<li>Lugar de pago 2</li>\n	<li>Lugar de pago 33</li>\n</ul>\n</div>\n</div>\n</div>\n'),(16,'urltest','https://fast.com/es/'),(17,'tamano_papel','A4'),(18,'orientacion_papel',''),(19,'currency','PEN'),(20,'correo_host','smtp.gmail.com'),(21,'correo_port','465'),(22,'correo_secure','ssl'),(23,'correo_aun','true'),(24,'correo_user','correo@gmail.com'),(25,'correo_pass','dFZEcFQwUXVLYlVaQ0ZkTFFDY3RLUT09'),(26,'zona_horaria','America/Lima'),(27,'correo_firma','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html>\n<head>\n	<title></title>\n</head>\n<body>\n<p>Atentamente Mi Empresa.</p>\n</body>\n</html>\n'),(28,'url_logo','https://mikroimage.net/images/2018/05/26/logo_1669885_print179371efd24a0086.png'),(29,'moneda_letra','Sol'),(30,'ruc_empresa','123456789'),(31,'direccion_empresa','Av. los angeles 3364 ATE - VITARTE'),(32,'telefono_empresa','999999999'),(33,'url_portal','https://mikrowisp.club'),(34,'reconexion_cliente','0'),(35,'mora_cliente','0'),(36,'tamano_recibo','A4'),(37,'orientacion_recibo',''),(38,'optlegal','2'),(39,'npqr','946'),(40,'marca_factura','on'),(41,'custom_tamano','80,200'),(42,'custom_recibo','80,200'),(43,'pdf_generado','on'),(44,'keyapigoogle',''),(45,'send_pagado',''),(46,'correo_notificacion',''),(47,'sms_numero',''),(48,'notificacion_nodo',''),(49,'revision','63'),(50,'correo_reporte',''),(51,'salida_reporte','<div style=\"padding:20px\">\n<div class=\"panel panel-success\">\n<div class=\"panel-heading\"><b><i class=\"fa fa-envelope-o\"></i> REPORTE ENVIADO</b></div>\n\n<div class=\"panel-body\">\n<p><strong>Gracias por enviar la informaci&oacute;n de su pago. </strong></p>\n\n<p>En un periodo no mayor a 1 &nbsp;hora, ser&aacute; revisado por nuestro personal contable, y en caso de estar correcta la informaci&oacute;n, el pago se abonar&aacute; a su cuenta en la plataforma correspondiente.</p>\n\n<p>Saludos cordiales Tu Empresa.&nbsp;</p>\n\n<p><span style=\"font-size:11px;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><strong>Horario de Atenci&oacute;n: Lunes a viernes de 9:30 a 14:00 horas y de 15:30 a 18:00 horas. S&aacute;bado de 9:00 a 14:00 horas.</strong></span></span></p>\n</div>\n</div>\n</div>\n'),(52,'coempresa','2246'),(53,'valida_pago','on'),(54,'tipo_reconexion','1'),(55,'facturacontinua',''),(56,'afip_punto_venta',''),(57,'afip_crt_homo',''),(58,'afip_key_homo',''),(59,'afip_crt_prod',''),(60,'afip_key_prod',''),(61,'afip_homo',''),(62,'moneda_unidad','CÃ©ntimos'),(63,'send_recibo','on'),(64,'imgloginadmin','login-bg-4.jpg'),(65,'imglogincliente','login-bg-15.jpg'),(66,'cron_pantalla','04:30'),(67,'cron_pago1','08:30'),(68,'cron_pago2','13:30'),(69,'cron_pago3','17:00'),(70,'cron_corte','02:30'),(71,'cron_factura','03:30'),(72,'cron_backup','17:11'),(73,'permiso_portal','a:12:{s:12:\"comprobantes\";s:2:\"on\";s:7:\"soporte\";s:2:\"on\";s:10:\"documentos\";s:2:\"on\";s:7:\"reporte\";s:2:\"on\";s:9:\"velocidad\";s:2:\"on\";s:7:\"trafico\";s:2:\"on\";s:6:\"banner\";s:2:\"on\";s:13:\"personalizado\";s:0:\"\";s:8:\"password\";s:2:\"on\";s:5:\"datos\";s:2:\"on\";s:9:\"autologin\";s:2:\"on\";s:14:\"widget_trafico\";s:2:\"on\";}'),(74,'newversion','63'),(75,'lastupdate','01/04/2025 02:27:31 pm'),(76,'limite_mail','dia'),(77,'valor_limite_mail','1000'),(78,'contador_mail','0'),(79,'fecha_hora_mail','01/04/2025'),(80,'sms_suspendido','on'),(81,'afip_csr_prod',''),(82,'telegram',''),(83,'afip_monotributo',''),(84,'afip_a5','on'),(85,'cron_comprime_trafico','0'),(86,'migrado',''),(87,'vpnweb',''),(88,'vpnssh',''),(89,'tokenssh',''),(90,'mora_texto','Mora factura vencida'),(91,'openfactura_debug',''),(92,'openfactura_key',''),(93,'template_login','1'),(94,'template_portal','material'),(95,'template_color','blue'),(96,'onesignal',''),(97,'onesignalid',''),(98,'smart_url',''),(99,'smart_api',''),(100,'zendesk_correo',''),(101,'zendesk_dominio',''),(102,'zendesk_token',''),(103,'correo_autentificacion','0'),(104,'oauth_id',''),(105,'oauth_secret',''),(106,'oauth_token',''),(107,'sms_alpagar',''),(108,'openfactura_custom',''),(109,'openfactura_pdf_tamano','LETTER'),(110,'openfactura_rut_emisor',''),(111,'openfactura_giro_emisor',''),(112,'openfactura_actividad_emisor',''),(113,'openfactura_direccion_emisor',''),(114,'openfactura_comuna_emisor',''),(115,'openfactura_telefono_emisor',''),(116,'openfactura_razon_emisor',''),(117,'openfactura_siisucursal_emisor',''),(118,'wlogeado',''),(119,'reconexion_texto','ReconexiÃ³n del servicio por Corte'),(120,'enable_pso',''),(121,'smart_corte_onu','0'),(122,'recapcha_web',''),(123,'recapcha_secreta',''),(124,'update_alpagar',''),(125,'formato_fecha','d/m/Y'),(126,'token_hetrixtools',''),(127,'idcontacto_hetrixtools',''),(128,'ipv6',''),(129,'mikrotik_bytes','1000'),(130,'impuesto911','0'),(131,'idioma','es'),(132,'disablemail',''),(133,'limitlog','10000'),(134,'validatecedula',''),(135,'validate_cedula',''),(136,'last_backup',''),(137,'last_backup_remote',''),(138,'puerto_openvpn','1194'),(139,'protocolo_vpn','tcp'),(140,'ip_openvpn',''),(141,'rango_openvpn','10.8.0.0'),(142,'trapemn_url',''),(143,'trapemn_api',''),(144,'trapemn_corte','0'),(145,'source_maps','openstreetmap'),(146,'token_simplefactura',''),(147,'exp_token_simplefactura','');
/*!40000 ALTER TABLE `tblconfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblservicios`
--

DROP TABLE IF EXISTS `tblservicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblservicios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(6) unsigned zerofill NOT NULL,
  `idperfil` int(11) NOT NULL,
  `nodo` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `costo` decimal(12,2) NOT NULL,
  `ipap` varchar(30) NOT NULL,
  `mac` varchar(80) NOT NULL,
  `ip` varchar(700) NOT NULL,
  `instalado` date NOT NULL,
  `antena` int(4) NOT NULL,
  `pppuser` varchar(60) NOT NULL,
  `ppppass` varchar(60) NOT NULL,
  `emisor` int(6) NOT NULL,
  `user_ubnt` text NOT NULL,
  `pass_ubnt` text NOT NULL,
  `tiposervicio` varchar(9) NOT NULL DEFAULT 'internet',
  `status_user` varchar(8) NOT NULL DEFAULT 'OFFLINE',
  `tipoipv4` int(1) NOT NULL,
  `redipv4` int(4) NOT NULL,
  `coordenadas` varchar(150) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `snmp_comunidad` varchar(100) NOT NULL DEFAULT 'public',
  `firewall_state` varchar(2) NOT NULL,
  `smartolt` text NOT NULL,
  `limitado` int(1) NOT NULL,
  `ppp_routes` varchar(50) NOT NULL,
  `ppp_localaddress` varchar(50) NOT NULL,
  `idnap` int(11) NOT NULL,
  `portnap` int(11) NOT NULL,
  `onu_sn` varchar(100) NOT NULL,
  `onu_ssid_wifi` varchar(100) NOT NULL,
  `onu_password_wifi` varchar(100) NOT NULL,
  `personalizados` mediumtext NOT NULL,
  `smartolt_catv` int(1) NOT NULL DEFAULT '1',
  `ipv6` varchar(120) NOT NULL,
  `ipv6_duid` varchar(100) NOT NULL,
  `last_connected` datetime NOT NULL,
  `trapemn_id` int(11) NOT NULL DEFAULT '0',
  `trapemn_data` text,
  PRIMARY KEY (`id`),
  KEY `plan` (`idperfil`),
  KEY `ip` (`ip`),
  KEY `tblservicios_idx_idcliente_nodo` (`idcliente`,`nodo`),
  KEY `idnap` (`idnap`),
  KEY `emisor` (`emisor`),
  KEY `redipv4` (`redipv4`),
  KEY `status_user` (`status_user`),
  KEY `cliente_emisor` (`idcliente`,`emisor`),
  KEY `total_cobrar` (`idcliente`,`costo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblservicios`
--

LOCK TABLES `tblservicios` WRITE;
/*!40000 ALTER TABLE `tblservicios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblservicios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `LogStatusUser` AFTER UPDATE ON `tblservicios` FOR EACH ROW IF OLD.status_user='OFFLINE' and NEW.status_user='ONLINE'  THEN

INSERT INTO logsistema(log,idcliente,tipolog) VALUES (CONCAT('Servicio Cliente ONLINE ({{cliente}}) - ','',NEW.ip), NEW.idcliente,'1');

ELSEIF OLD.status_user='ONLINE' and NEW.status_user='OFFLINE'  THEN

INSERT INTO logsistema(log,idcliente,tipolog) VALUES (CONCAT('Servicio Cliente OFFLINE ({{cliente}}) - ','',OLD.ip), NEW.idcliente,'1');

END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tblserviciosvoip`
--

DROP TABLE IF EXISTS `tblserviciosvoip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblserviciosvoip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` int(6) unsigned zerofill NOT NULL,
  `server` varchar(120) NOT NULL,
  `sipuser` varchar(100) NOT NULL,
  `sipid` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `codigoverificacion` varchar(50) NOT NULL,
  `numerotelefono` varchar(30) NOT NULL,
  `costo` decimal(10,2) NOT NULL,
  `instalacion` date NOT NULL,
  `notas` text NOT NULL,
  `idperfil` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente` (`cliente`),
  KEY `tblserviciosvoip_idx_cliente_idperfil` (`cliente`,`idperfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblserviciosvoip`
--

LOCK TABLES `tblserviciosvoip` WRITE;
/*!40000 ALTER TABLE `tblserviciosvoip` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblserviciosvoip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idticket` int(7) unsigned zerofill NOT NULL,
  `contenido` text CHARACTER SET latin1 NOT NULL,
  `adjunto` text CHARACTER SET latin1 NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `idtecnico` int(3) NOT NULL,
  `state` int(1) NOT NULL,
  `nota` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idticket` (`idticket`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeout`
--

DROP TABLE IF EXISTS `timeout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timeout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` int(1) NOT NULL,
  `idequipo` int(11) NOT NULL,
  `contador` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeout`
--

LOCK TABLES `timeout` WRITE;
/*!40000 ALTER TABLE `timeout` DISABLE KEYS */;
/*!40000 ALTER TABLE `timeout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmpfactura`
--

DROP TABLE IF EXISTS `tmpfactura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmpfactura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(6) unsigned zerofill NOT NULL,
  `fechaingreso` date NOT NULL,
  `productoid` int(11) NOT NULL,
  `tipoa` varchar(15) NOT NULL,
  `monto` decimal(12,2) NOT NULL,
  `state` varchar(12) NOT NULL DEFAULT 'pendiente',
  `nfactura` int(8) unsigned zerofill NOT NULL,
  `idinstall` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmpfactura`
--

LOCK TABLES `tmpfactura` WRITE;
/*!40000 ALTER TABLE `tmpfactura` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmpfactura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmptl`
--

DROP TABLE IF EXISTS `tmptl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmptl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `mensaje` text NOT NULL,
  `archivo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmptl`
--

LOCK TABLES `tmptl` WRITE;
/*!40000 ALTER TABLE `tmptl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmptl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trafico_tmp`
--

DROP TABLE IF EXISTS `trafico_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trafico_tmp` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(22) NOT NULL,
  `bytes` bigint(20) NOT NULL,
  `user` varchar(60) NOT NULL,
  `tipo` int(1) NOT NULL,
  `router` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`src`),
  KEY `router` (`router`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trafico_tmp`
--

LOCK TABLES `trafico_tmp` WRITE;
/*!40000 ALTER TABLE `trafico_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `trafico_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroup`
--

DROP TABLE IF EXISTS `usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroup` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UserName` varchar(64) NOT NULL DEFAULT '',
  `GroupName` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `UserName` (`UserName`(32))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroup`
--

LOCK TABLES `usergroup` WRITE;
/*!40000 ALTER TABLE `usergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nombre` varchar(400) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` varchar(300) CHARACTER SET utf8 DEFAULT 'ACTIVO',
  `correo` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(50) CHARACTER SET utf8 NOT NULL,
  `movil` text COLLATE utf8_spanish_ci NOT NULL,
  `cedula` varchar(100) CHARACTER SET utf8 NOT NULL,
  `pasarela` varchar(160) COLLATE utf8_spanish_ci NOT NULL,
  `codigo` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `direccion_principal` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `estado_user` (`estado`(255)),
  KEY `nombre` (`nombre`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webproxy`
--

DROP TABLE IF EXISTS `webproxy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webproxy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(6) unsigned zerofill NOT NULL,
  `html` text NOT NULL,
  `tipo` int(1) NOT NULL,
  `fecha` datetime NOT NULL,
  `nodouser` int(3) NOT NULL,
  `idservicio` int(11) NOT NULL,
  `nombreplantilla` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `iduser` (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webproxy`
--

LOCK TABLES `webproxy` WRITE;
/*!40000 ALTER TABLE `webproxy` DISABLE KEYS */;
/*!40000 ALTER TABLE `webproxy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whatsapp`
--

DROP TABLE IF EXISTS `whatsapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whatsapp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text NOT NULL,
  `namepersonal` text NOT NULL,
  `chat` varchar(200) NOT NULL,
  `fecha` varchar(100) NOT NULL,
  `operador` int(11) NOT NULL,
  `avatar` text NOT NULL,
  `unread` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `lastmessge` text NOT NULL,
  `typemessage` text NOT NULL,
  `typechat` varchar(50) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `area` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chat` (`chat`(191)),
  KEY `fecha` (`fecha`),
  KEY `uread` (`unread`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whatsapp`
--

LOCK TABLES `whatsapp` WRITE;
/*!40000 ALTER TABLE `whatsapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `whatsapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zonas`
--

DROP TABLE IF EXISTS `zonas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zonas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zona` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `zonas_idx_id_zona` (`id`,`zona`(255))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zonas`
--

LOCK TABLES `zonas` WRITE;
/*!40000 ALTER TABLE `zonas` DISABLE KEYS */;
/*!40000 ALTER TABLE `zonas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-01 14:29:08
