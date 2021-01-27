-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tpbasededatos
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `automovil`
--

DROP TABLE IF EXISTS `automovil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `automovil` (
  `id_chasis` varchar(10) NOT NULL,
  `modelo_id` int(11) NOT NULL,
  `fechafinal` date DEFAULT NULL,
  `pedido_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_chasis`),
  KEY `modelo_id` (`modelo_id`),
  KEY `fk_pedido` (`pedido_id`),
  CONSTRAINT `automovil_ibfk_1` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id_modelo`),
  CONSTRAINT `fk_pedido` FOREIGN KEY (`pedido_id`) REFERENCES `pedidoautomovil` (`id_pedidoAuto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automovil`
--

LOCK TABLES `automovil` WRITE;
/*!40000 ALTER TABLE `automovil` DISABLE KEYS */;
INSERT INTO `automovil` VALUES ('1314',4,NULL,2),('1352',3,NULL,3),('18652',3,NULL,3),('5363',1,'2020-11-11',1),('56220',1,'2020-11-13',1),('56390',2,NULL,1),('65010',2,'2020-11-13',1),('65431',2,NULL,1),('66396',2,NULL,1),('86920',2,NULL,1),('89747',4,NULL,2),('90199',1,NULL,1),('92814',4,NULL,4),('94117',4,NULL,4);
/*!40000 ALTER TABLE `automovil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concesionaria`
--

DROP TABLE IF EXISTS `concesionaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concesionaria` (
  `id_concesionaria` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id_concesionaria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concesionaria`
--

LOCK TABLES `concesionaria` WRITE;
/*!40000 ALTER TABLE `concesionaria` DISABLE KEYS */;
INSERT INTO `concesionaria` VALUES (1,'Rodriguez e hijos'),(2,'Automotor'),(3,'Lomas Auto');
/*!40000 ALTER TABLE `concesionaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estaciontrabajo`
--

DROP TABLE IF EXISTS `estaciontrabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estaciontrabajo` (
  `id_estacionTrabajo` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `lineaMontaje_id` int(11) DEFAULT NULL,
  `numero_orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_estacionTrabajo`),
  KEY `lineaMontaje_id` (`lineaMontaje_id`),
  CONSTRAINT `estaciontrabajo_ibfk_1` FOREIGN KEY (`lineaMontaje_id`) REFERENCES `lineamontaje` (`id_lineamontaje`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estaciontrabajo`
--

LOCK TABLES `estaciontrabajo` WRITE;
/*!40000 ALTER TABLE `estaciontrabajo` DISABLE KEYS */;
INSERT INTO `estaciontrabajo` VALUES (1,'Chasis',1,1),(2,'Pintura',1,2),(3,'Tren delantero y trasero',1,3),(4,'Electricidad',1,4),(5,'Motorizacion y  banco de prueba',1,5),(6,'Chasis',2,1),(7,'Pintura',2,2),(8,'Tren delantero y trasero',2,3),(9,'Electricidad',2,4),(10,'Motorizacion y  banco de prueba',2,5),(11,'Chasis',3,1),(12,'Pintura',3,2),(13,'Tren delantero y trasero',3,3),(14,'Electricidad',3,4),(15,'Motorizacion y  banco de prueba',3,5);
/*!40000 ALTER TABLE `estaciontrabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insumo`
--

DROP TABLE IF EXISTS `insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insumo` (
  `id_insumo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `unidadMedidad` varchar(10) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_insumo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumo`
--

LOCK TABLES `insumo` WRITE;
/*!40000 ALTER TABLE `insumo` DISABLE KEYS */;
INSERT INTO `insumo` VALUES (1,'Pintura antioxido','Litros',NULL),(2,'Cable','Metros',NULL),(3,'Cubiertas','Pulgadas',NULL),(4,'Lamparas','Watts',NULL),(5,'Motor','Cilindrada',NULL),(6,'Caja de direccion',NULL,NULL),(7,'Bomba de freno',NULL,NULL),(8,'Tablero',NULL,NULL),(9,'Pintura color principal','Litros',NULL),(10,'Pintura color secundario','Litros',NULL),(11,'Pintura para llantas','Litros',NULL),(12,'Topes de goma',NULL,NULL),(13,'Espirales',NULL,NULL),(14,'Amortiguadores',NULL,NULL),(15,'Faros',NULL,NULL),(16,'Fusibles','Amperes',NULL),(17,'Caño de escape','Metros',NULL),(18,'Combustiblle','Litros',NULL),(19,'Liquidos refrigerantes de frenos e hidraulico','Litros',NULL);
/*!40000 ALTER TABLE `insumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insumoxestacion`
--

DROP TABLE IF EXISTS `insumoxestacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insumoxestacion` (
  `insumo_id` int(11) NOT NULL,
  `estacionTrabajo_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`insumo_id`,`estacionTrabajo_id`),
  KEY `estacionTrabajo_id` (`estacionTrabajo_id`),
  CONSTRAINT `insumoxestacion_ibfk_1` FOREIGN KEY (`insumo_id`) REFERENCES `insumo` (`id_insumo`),
  CONSTRAINT `insumoxestacion_ibfk_2` FOREIGN KEY (`estacionTrabajo_id`) REFERENCES `estaciontrabajo` (`id_estacionTrabajo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumoxestacion`
--

LOCK TABLES `insumoxestacion` WRITE;
/*!40000 ALTER TABLE `insumoxestacion` DISABLE KEYS */;
INSERT INTO `insumoxestacion` VALUES (1,1,2),(1,2,6),(1,6,2),(1,7,6),(1,12,6),(2,4,50),(2,9,50),(2,11,15),(2,14,50),(3,3,4),(3,8,4),(3,13,4),(4,4,20),(4,9,20),(4,14,20),(5,5,1),(5,10,1),(5,15,1),(6,1,1),(6,6,1),(6,11,1),(7,1,1),(7,6,1),(7,11,1),(8,1,1),(8,6,1),(8,11,1),(9,2,10),(9,7,10),(9,12,10),(10,2,5),(10,7,5),(10,12,5),(11,2,2),(11,7,2),(11,12,4),(12,3,8),(12,8,8),(12,13,8),(13,3,2),(13,8,2),(13,13,2),(14,3,4),(14,8,4),(14,13,4),(15,4,4),(15,9,4),(15,14,4),(16,4,10),(16,9,10),(16,14,10),(17,5,1),(17,10,1),(17,15,1),(18,5,15),(18,10,15),(18,15,15),(19,5,5),(19,10,5),(19,15,5);
/*!40000 ALTER TABLE `insumoxestacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineamontaje`
--

DROP TABLE IF EXISTS `lineamontaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lineamontaje` (
  `id_lineamontaje` int(11) NOT NULL,
  `modelo_id` int(11) NOT NULL,
  `prom_produccion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_lineamontaje`),
  KEY `modelo_id` (`modelo_id`),
  CONSTRAINT `lineamontaje_ibfk_1` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id_modelo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineamontaje`
--

LOCK TABLES `lineamontaje` WRITE;
/*!40000 ALTER TABLE `lineamontaje` DISABLE KEYS */;
INSERT INTO `lineamontaje` VALUES (1,1,50),(2,2,50),(3,3,NULL),(4,4,NULL);
/*!40000 ALTER TABLE `lineamontaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo`
--

DROP TABLE IF EXISTS `modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo` (
  `id_modelo` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id_modelo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo`
--

LOCK TABLES `modelo` WRITE;
/*!40000 ALTER TABLE `modelo` DISABLE KEYS */;
INSERT INTO `modelo` VALUES (1,'Palio'),(2,'Alfa Romeo'),(3,'Audi'),(4,'BMW');
/*!40000 ALTER TABLE `modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidoautomovil`
--

DROP TABLE IF EXISTS `pedidoautomovil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidoautomovil` (
  `id_pedidoAuto` int(11) NOT NULL,
  `concesionaria_id` int(11) NOT NULL,
  `fechaPedido` date DEFAULT NULL,
  PRIMARY KEY (`id_pedidoAuto`),
  KEY `concesionaria_id` (`concesionaria_id`),
  CONSTRAINT `pedidoautomovil_ibfk_1` FOREIGN KEY (`concesionaria_id`) REFERENCES `concesionaria` (`id_concesionaria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidoautomovil`
--

LOCK TABLES `pedidoautomovil` WRITE;
/*!40000 ALTER TABLE `pedidoautomovil` DISABLE KEYS */;
INSERT INTO `pedidoautomovil` VALUES (1,1,'2020-08-10'),(2,1,'2020-08-11'),(3,1,'2020-08-12'),(4,2,'2020-10-11');
/*!40000 ALTER TABLE `pedidoautomovil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidoinsumo`
--

DROP TABLE IF EXISTS `pedidoinsumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidoinsumo` (
  `id_pedidoIns` int(11) NOT NULL AUTO_INCREMENT,
  `proveedorIns_id` int(11) DEFAULT NULL,
  `fechaPedido` date DEFAULT NULL,
  PRIMARY KEY (`id_pedidoIns`),
  KEY `proveedorIns_id` (`proveedorIns_id`),
  CONSTRAINT `pedidoinsumo_ibfk_1` FOREIGN KEY (`proveedorIns_id`) REFERENCES `proveedorinsumo` (`id_proveedorIns`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidoinsumo`
--

LOCK TABLES `pedidoinsumo` WRITE;
/*!40000 ALTER TABLE `pedidoinsumo` DISABLE KEYS */;
INSERT INTO `pedidoinsumo` VALUES (1,1,'2018-01-12'),(2,2,'2018-01-12'),(3,3,'2018-01-12'),(4,9,'2018-01-20'),(5,10,'2018-01-20'),(7,5,'2019-08-20'),(8,6,'2019-08-20'),(9,7,'2019-08-20'),(10,5,'2018-12-01'),(11,6,'2018-12-01'),(12,9,'2018-12-01'),(13,4,'2018-12-01');
/*!40000 ALTER TABLE `pedidoinsumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidoxinsumo`
--

DROP TABLE IF EXISTS `pedidoxinsumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidoxinsumo` (
  `pedidoIns_id` int(11) NOT NULL,
  `insumo_id` int(11) NOT NULL,
  `precio` float NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`pedidoIns_id`,`insumo_id`),
  KEY `insumo_id` (`insumo_id`),
  CONSTRAINT `pedidoxinsumo_ibfk_1` FOREIGN KEY (`insumo_id`) REFERENCES `insumo` (`id_insumo`),
  CONSTRAINT `pedidoxinsumo_ibfk_2` FOREIGN KEY (`pedidoIns_id`) REFERENCES `pedidoinsumo` (`id_pedidoIns`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidoxinsumo`
--

LOCK TABLES `pedidoxinsumo` WRITE;
/*!40000 ALTER TABLE `pedidoxinsumo` DISABLE KEYS */;
INSERT INTO `pedidoxinsumo` VALUES (1,1,1000,42),(1,2,30,345),(1,3,5000,24),(1,4,300,120),(1,5,20000,6),(2,6,5000,6),(2,7,1000,6),(2,8,5000,6),(2,9,400,60),(2,10,400,30),(3,11,500,12),(3,12,300,48),(3,13,5000,12),(4,14,15000,24),(4,15,2000,24),(4,16,30,60),(5,17,5000,6),(5,18,45,90),(5,19,40,30),(7,1,1000,50),(7,2,30,395),(7,3,5000,28),(7,4,300,140),(7,5,20000,7),(7,6,5000,7),(7,7,1000,7),(8,8,5000,7),(8,9,400,70),(8,10,400,35),(8,11,500,14),(8,12,300,56),(8,13,5000,14),(9,14,15000,28),(9,15,2000,28),(9,16,30,70),(9,17,5000,7),(9,18,45,105),(9,19,40,35),(10,1,1000,42),(10,2,30,345),(10,3,5000,24),(10,4,300,120),(10,5,20000,6),(10,6,5000,6),(10,7,1000,6),(11,8,5000,6),(11,9,400,60),(11,10,400,30),(11,11,500,12),(11,12,300,48),(11,13,5000,12),(12,14,15000,24),(12,15,2000,24),(12,16,30,60),(13,17,5000,6),(13,18,45,90),(13,19,40,30);
/*!40000 ALTER TABLE `pedidoxinsumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidoxmodelo`
--

DROP TABLE IF EXISTS `pedidoxmodelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidoxmodelo` (
  `pedidoAuto_id` int(11) NOT NULL,
  `modelo_id` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fechaentrega` date DEFAULT NULL,
  PRIMARY KEY (`pedidoAuto_id`,`modelo_id`),
  KEY `modelo_id` (`modelo_id`),
  KEY `INDICE1` (`pedidoAuto_id`),
  CONSTRAINT `pedidoxmodelo_ibfk_1` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id_modelo`),
  CONSTRAINT `pedidoxmodelo_ibfk_2` FOREIGN KEY (`pedidoAuto_id`) REFERENCES `pedidoautomovil` (`id_pedidoAuto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidoxmodelo`
--

LOCK TABLES `pedidoxmodelo` WRITE;
/*!40000 ALTER TABLE `pedidoxmodelo` DISABLE KEYS */;
INSERT INTO `pedidoxmodelo` VALUES (1,1,200,3,'2020-10-10'),(1,2,500,5,'2020-10-10'),(1,3,500,1,'2020-10-10'),(2,4,1000,2,'2020-10-11'),(3,3,1000,2,'2020-10-11'),(4,4,2000,2,'2021-02-10');
/*!40000 ALTER TABLE `pedidoxmodelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produccion`
--

DROP TABLE IF EXISTS `produccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produccion` (
  `id_produccion` int(11) NOT NULL AUTO_INCREMENT,
  `chasis_id` varchar(10) DEFAULT NULL,
  `estacionTrabajo_id` int(11) NOT NULL,
  `fechaHoraIngreso` datetime DEFAULT NULL,
  `fechaHoraEgreso` datetime DEFAULT NULL,
  PRIMARY KEY (`id_produccion`),
  KEY `chasis_id` (`chasis_id`),
  KEY `estacionTrabajo_id` (`estacionTrabajo_id`),
  CONSTRAINT `produccion_ibfk_1` FOREIGN KEY (`chasis_id`) REFERENCES `automovil` (`id_chasis`),
  CONSTRAINT `produccion_ibfk_2` FOREIGN KEY (`estacionTrabajo_id`) REFERENCES `estaciontrabajo` (`id_estacionTrabajo`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produccion`
--

LOCK TABLES `produccion` WRITE;
/*!40000 ALTER TABLE `produccion` DISABLE KEYS */;
INSERT INTO `produccion` VALUES (4,'5363',1,'2020-10-29 05:25:57','2020-11-11 02:28:53'),(7,'56390',6,'2020-10-29 05:49:42',NULL),(8,'1352',11,'2020-10-29 06:08:27','2020-11-11 05:26:22'),(12,'65010',6,'2020-11-10 20:36:30','2020-11-13 22:44:10'),(18,'1352',12,'2020-11-10 23:49:10','2020-11-11 05:26:22'),(19,'5363',2,'2020-11-11 00:44:45','2020-11-11 02:28:53'),(20,'5363',3,'2020-11-11 00:45:09','2020-11-11 02:28:53'),(21,'5363',4,'2020-11-11 00:45:11','2020-11-11 02:28:53'),(23,'5363',5,'2020-11-11 01:05:01','2020-11-11 02:28:53'),(28,'56220',1,'2020-11-11 02:36:37','2020-11-13 23:21:45'),(29,'56220',2,'2020-11-11 02:36:46','2020-11-13 23:21:45'),(30,'90199',1,'2020-11-11 02:38:53','2020-11-11 05:08:09'),(33,'56220',3,'2020-11-11 03:43:41','2020-11-13 23:21:45'),(36,'90199',2,'2020-11-11 04:47:48','2020-11-11 05:08:09'),(38,'56220',4,'2020-11-11 05:08:03','2020-11-13 23:21:45'),(39,'90199',3,'2020-11-11 05:08:09',NULL),(40,'1352',13,'2020-11-11 05:10:02','2020-11-11 05:26:22'),(41,'18652',11,'2020-11-11 05:10:21','2020-11-11 05:26:50'),(42,'18652',12,'2020-11-11 05:10:25','2020-11-11 05:26:50'),(43,'65010',7,'2020-11-11 05:20:21','2020-11-13 22:44:10'),(44,'65431',6,'2020-11-11 05:20:48',NULL),(45,'1352',14,'2020-11-11 05:26:22',NULL),(46,'18652',13,'2020-11-11 05:26:50',NULL),(47,'65010',8,'2020-11-13 22:44:02','2020-11-13 22:44:10'),(48,'65010',9,'2020-11-13 22:44:05','2020-11-13 22:44:10'),(49,'65010',10,'2020-11-13 22:44:08','2020-11-13 22:44:10'),(50,'56220',5,'2020-11-13 22:54:48','2020-11-13 23:21:45');
/*!40000 ALTER TABLE `produccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedorinsumo`
--

DROP TABLE IF EXISTS `proveedorinsumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedorinsumo` (
  `id_proveedorIns` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_proveedorIns`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedorinsumo`
--

LOCK TABLES `proveedorinsumo` WRITE;
/*!40000 ALTER TABLE `proveedorinsumo` DISABLE KEYS */;
INSERT INTO `proveedorinsumo` VALUES (1,'ACCESORIOS GDT SRL'),(2,'SONAX'),(3,'3D DETAILING Products'),(4,'EURATOM S.A.'),(5,'Revigal S.A.'),(6,'RAM Polarizados'),(7,'TYT S.A.'),(8,'Tirso Gómez S.R.L.'),(9,'Neagas'),(10,'CARAM S.A.');
/*!40000 ALTER TABLE `proveedorinsumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedorxinsumo`
--

DROP TABLE IF EXISTS `proveedorxinsumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedorxinsumo` (
  `insumo_id` int(11) DEFAULT NULL,
  `proveedorIns_id` int(11) DEFAULT NULL,
  KEY `insumo_id` (`insumo_id`),
  KEY `proveedorIns_id` (`proveedorIns_id`),
  CONSTRAINT `proveedorxinsumo_ibfk_1` FOREIGN KEY (`insumo_id`) REFERENCES `insumo` (`id_insumo`),
  CONSTRAINT `proveedorxinsumo_ibfk_2` FOREIGN KEY (`proveedorIns_id`) REFERENCES `proveedorinsumo` (`id_proveedorIns`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedorxinsumo`
--

LOCK TABLES `proveedorxinsumo` WRITE;
/*!40000 ALTER TABLE `proveedorxinsumo` DISABLE KEYS */;
INSERT INTO `proveedorxinsumo` VALUES (1,1),(1,1),(2,1),(3,1),(4,1),(5,1),(6,2),(7,2),(8,2),(9,2),(10,2),(11,3),(12,3),(13,3),(14,3),(15,3),(16,4),(17,4),(18,4),(19,4),(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(7,6),(8,6),(9,6),(10,6),(11,6),(12,6),(13,6),(14,7),(15,7),(16,7),(17,7),(18,7),(19,7),(11,8),(12,8),(13,8),(14,9),(15,9),(16,9),(17,10),(18,10),(19,10);
/*!40000 ALTER TABLE `proveedorxinsumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'tpbasededatos'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_AltaAutomovil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AltaAutomovil`(id varchar(10),idModelo INT,fechaFinal DATE, idPedido INT)
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(30);
DECLARE nResultado INT;
IF EXISTS(select id_chasis from Automovil WHERE id_chasis=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT -1 INTO nResultado;	
        SELECT 'Ya existe el ID ingresado' INTO cMensaje;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
		
	ELSE
    
		SELECT 0 INTO nResultado;	
        SELECT 'SE REGISTRO EN LA BASE DE DATOS'  INTO cMensaje  ;
       INSERT INTO automovil (id_chasis,modelo_id,fechafinal,pedido_id) values(id,idModelo,fechaFinal,IdPedido);
	SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
        
	
    END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_AltaConcecionaria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AltaConcecionaria`(in id int,in nombre varchar(30))
BEGIN

DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;
IF EXISTS(select id_concesionaria from concesionaria WHERE id_concesionaria=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT -1 INTO nResultado;	
        SELECT 'Ya existe el ID ingresado' INTO cMensaje;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
		
	ELSE
    
		SELECT 0 INTO nResultado;	
        SELECT 'SE REGISTRO EN LA BASE DE DATOS'  INTO cMensaje  ;
       INSERT INTO concesionaria (id_concesionaria,nombre) values(id,nombre);
	SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
        
        
	
    END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_altaEstacionTrabajo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_altaEstacionTrabajo`(id INT,descrip VARCHAR(50),idLineaMontaje INT,numeroOrden INT)
BEGIN

DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;
IF EXISTS(select id_estacionTrabajo from estaciontrabajo WHERE id_estacionTrabajo=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT -1 INTO nResultado;	
        SELECT 'Ya existe el ID ingresado' INTO cMensaje;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
		
	ELSE
    
		SELECT 0 INTO nResultado;	
        SELECT 'SE REGISTRO EN LA BASE DE DATOS'  INTO cMensaje  ;
      INSERT INTO estaciontrabajo(id_estacionTrabajo,descripcion,lineaMontaje_id,numero_orden) VALUES
 (id ,descrip ,idLineaMontaje ,numeroOrden);
	SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
        
	
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_AltaInsumo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AltaInsumo`(in id int,in nombre varchar(50),in unidadMedida varchar(10),in descripcion varchar(100))
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(30);
DECLARE nResultado INT;
IF EXISTS(select id_insumo from insumo WHERE id_insumo=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT -1 INTO nResultado;
        SELECT 'Ya existe el ID ingresado' INTO cMensaje;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;

    ELSE

        SELECT 0 INTO nResultado;
        SELECT 'SE REGISTRO EN LA BASE DE DATOS'  INTO cMensaje  ;
       INSERT INTO insumo values(id,nombre,unidadMedida,descripcion);
    SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;


    END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_AltaLineaMontaje` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AltaLineaMontaje`(in id int, in modelo_id int, in prom_produccion int)
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;
IF EXISTS(select id_lineamontaje from lineamontaje WHERE id_lineamontaje=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT -1 INTO nResultado;
        SELECT 'Ya existe el ID ingresado' INTO cMensaje;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;

    ELSE

        SELECT 0 INTO nResultado;
        SELECT 'SE REGISTRO EN LA BASE DE DATOS'  INTO cMensaje  ;
       INSERT INTO lineamontaje values(id,modelo_id,prom_produccion);
    SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;


    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_AltaModelo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AltaModelo`(id INT , nombre VARCHAR(30))
BEGIN
DECLARE nCantidad INT DEFAULT 0;
 DECLARE nResultado INT;
DECLARE cMensaje varchar(50);

	SELECT COUNT(*) 
    INTO nCantidad
    FROM MODELO
    WHERE ID_MODELO = ID ;
    SELECT nCantidad;

IF (nCantidad > 0) THEN

		SELECT -1 INTO nResultado;	
        SELECT 'Ya existe el ID ingresado' INTO cMensaje;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
		
	ELSE
    
		SELECT 0 INTO nResultado;	
        SELECT 'No Encontro E INSERTO'  INTO cMensaje  ;
        INSERT INTO modelo (id_modelo,nombre) values (id,nombre);
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
        
		        
	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_AltaPedidoAutomovil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AltaPedidoAutomovil`(id INT, idConcesionaria INT, fechaPedido date )
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;
IF EXISTS(select id_PedidoAuto from pedidoautomovil WHERE id_PedidoAuto=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT -1 INTO nResultado;	
        SELECT 'Ya existe el ID ingresado' INTO cMensaje;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
		
	ELSE
    
		SELECT 0 INTO nResultado;	
        SELECT 'SE REGISTRO EN LA BASE DE DATOS'  INTO cMensaje  ;
       INSERT INTO pedidoautomovil (id_PedidoAuto,concesionaria_id,fechapedido) VALUES
(id,idConcesionaria,fechaPedido);
	SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
        
	
    END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_AltaPedidoInsumo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AltaPedidoInsumo`(id INT, id_proveedor INT, fecha date)
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(30);
DECLARE nResultado INT;
IF EXISTS(select id_pedidoIns from PedidoInsumo WHERE id_pedidoIns=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT -1 INTO nResultado;	
        SELECT 'Ya existe el ID ingresado' INTO cMensaje;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
		
	ELSE
    
		SELECT 0 INTO nResultado;	
        SELECT 'SE REGISTRO EN LA BASE DE DATOS'  INTO cMensaje  ;
       INSERT INTO PedidoInsumo (id_pedidoIns,proveedorIns_id,fechaPedido) values(id, id_proveedor,fecha);
	SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
        
	
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_AltaPedidoXModelo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AltaPedidoXModelo`(idPedidoAuto int, idmodelo int,precio int ,cantidad int, fechaentrega DATE)
BEGIN

DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;
IF EXISTS(select pedidoAuto_id from pedidoxmodelo WHERE pedidoAuto_id=idPedidoAuto) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT -1 INTO nResultado;	
        SELECT 'Ya existe el ID ingresado' INTO cMensaje;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
		
	ELSE
    
		SELECT 0 INTO nResultado;	
        SELECT 'SE REGISTRO EN LA BASE DE DATOS'  INTO cMensaje  ;
       INSERT INTO pedidoxmodelo (pedidoAuto_id,modelo_id,precio,cantidad,fechaentrega) VALUES (idPedidoAuto, idmodelo ,precio ,cantidad,fechaentrega);
	SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
        
	
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_AltaProducccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AltaProducccion`(id INT, idchasis VARCHAR (10),idEstacionTrabajo INT, fechaHoraIngreso datetime,fechaEgreso datetime)
BEGIN

DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(30);
DECLARE nResultado INT;
IF EXISTS(select id_produccion from produccion WHERE id_produccion=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT -1 INTO nResultado;	
        SELECT 'Ya existe el ID ingresado' INTO cMensaje;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
		
	ELSE
    
		SELECT 0 INTO nResultado;	
        SELECT 'SE REGISTRO EN LA BASE DE DATOS'  INTO cMensaje  ;
       INSERT INTO produccion (id_produccion,chasis_id, estacionTrabajo_id,fechaHoraIngreso,fechaEgreso)
VALUES (id,idchasis,idEstacionTrabajo,fechaHoraIngreso,fechaEgreso);
	SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
        
	
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AltaProveedorInsumo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AltaProveedorInsumo`(idproveedor int, nombre varchar(50))
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(30);
DECLARE nResultado INT;
IF EXISTS(select id_proveedor_ins from ProveedorInsumo WHERE id_proveedor_ins=idproveedor) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT -1 INTO nResultado;	
        SELECT 'Ya existe el ID ingresado' INTO cMensaje;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
		
	ELSE
    
		SELECT 0 INTO nResultado;	
        SELECT 'SE REGISTRO EN LA BASE DE DATOS'  INTO cMensaje  ;
       INSERT INTO ProveedorInsumo (id_proveedor_ins,nombre) values(idproveedor, nombre);
	SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
        
	
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Altaproveedorxinsumo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Altaproveedorxinsumo`(idinsumo INT, proveedorId INT)
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(30);
DECLARE nResultado INT;
IF EXISTS(select insumo_id,proveedorIns_id from proveedorxinsumo WHERE insumo_id=idinsumo AND proveedorIns_id=proveedorId ) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT -1 INTO nResultado;	
        SELECT 'Ya existe el ID ingresado' INTO cMensaje;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
		
	ELSE
    
		SELECT 0 INTO nResultado;	
        SELECT 'SE REGISTRO EN LA BASE DE DATOS'  INTO cMensaje  ;
       INSERT INTO proveedorxinsumo (insumo_id,proveedorIns_id) values(idinsumo, proveedorId);
	SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_BajaAutomovil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_BajaAutomovil`(id_chasis VARCHAR(10))
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;

IF EXISTS(select id_chasis from Automovil WHERE id_chasis=id_chasis) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;
        SELECT 'SE ELIMINARON LOS DATOS' INTO cMensaje;
		DELETE FROM Automovil where id_chasis = id_chasis;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;

    ELSE

        SELECT -1 INTO nResultado;
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY ELIMINACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_BajaConcesionaria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_BajaConcesionaria`(in id int)
BEGIN
    DELETE FROM concesionaria where id_concesionaria = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_BajaEstacionTrabajo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_BajaEstacionTrabajo`(idEstacion INT)
BEGIN

DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;

IF EXISTS(select id_estacionTrabajo from estaciontrabajo WHERE id_estacionTrabajo=idEstacion) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;
        SELECT 'SE ELIMINARON LOS DATOS' INTO cMensaje;
	DELETE FROM estaciontrabajo WHERE id_estacionTrabajo=idEstacion;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;

    ELSE

        SELECT -1 INTO nResultado;
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY ELIMINACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_BajaInsumo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_BajaInsumo`(in id int)
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;

IF EXISTS(select id_insumo from insumo WHERE id_insumo=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;
        SELECT 'SE ELIMINARON LOS DATOS' INTO cMensaje;
		DELETE FROM insumo where id_insumo = id;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;

    ELSE

        SELECT -1 INTO nResultado;
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY ELIMINACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_BajaLineaMontaje` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_BajaLineaMontaje`(in id int)
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;

IF EXISTS(select id_lineamontaje from lineamontaje WHERE id_lineamontaje=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;
        SELECT 'SE ELIMINARON LOS DATOS' INTO cMensaje;
		DELETE FROM lineamontaje where id_lineamontaje = id;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;

    ELSE

        SELECT -1 INTO nResultado;
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY ELIMINACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_bajaModelo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_bajaModelo`(idModelo INT)
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE FK BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;

IF EXISTS(select modelo_id from lineaMontaje WHERE modelo_id=idmodelo) THEN SET FK = TRUE;
IF EXISTS(select id_modelo from modelo WHERE id_modelo=idmodelo) THEN SET EXISTE = TRUE;
END IF;
END IF;
IF (FK=TRUE ) THEN
SELECT -2 INTO nResultado;
        SELECT 'ANTES DE ELIMINAR TENDRIA QUE BORRAR LOS DATOS DE LA TABLA LINEA DE MONTAJE RELACIONADOS'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
   
ELSE 

IF (EXISTE = TRUE) THEN 

SELECT 0 INTO nResultado;
        SELECT 'SE ELIMINARON LOS DATOS' INTO cMensaje;
		DELETE FROM modelo where id_modelo = idmodelo;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
 END IF;
  END IF;
    
IF (EXISTE=FALSE) THEN
        SELECT -1 INTO nResultado;
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY ELIMINACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
   
     END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_BajaPedidoAuto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_BajaPedidoAuto`(idpedido INT)
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;

IF EXISTS(select id_PedidoAutomovil from pedidoAuto WHERE id_PedidoAutomovil=idpedido) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;
        SELECT 'SE ELIMINARON LOS DATOS' INTO cMensaje;
		DELETE FROM pedidoAuto where id_PedidoAutomovil = idpedido;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;

    ELSE

        SELECT -1 INTO nResultado;
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY ELIMINACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_BajaPedidoInsumo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_BajaPedidoInsumo`(id INT)
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;

IF EXISTS(select id_pedidoIns from PedidoInsumo WHERE id_pedidoIns=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;
        SELECT 'SE ELIMINARON LOS DATOS' INTO cMensaje;
		DELETE FROM PedidoInsumo where id_pedidoIns = id;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;

    ELSE

        SELECT -1 INTO nResultado;
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY ELIMINACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_bajaPedidoxModelo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_bajaPedidoxModelo`(id INT, idmodelo INT)
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;

IF EXISTS(select pedidoAuto_id,modelo_id from PedidoXModelo WHERE pedidoAuto_id=idpedido AND modelo_id=idmodelo ) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;
        SELECT 'SE ELIMINARON LOS DATOS' INTO cMensaje;
		DELETE FROM PedidoXModelo where pedidoAuto_id = idpedido AND modelo_id=idmodelo ;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;

    ELSE

        SELECT -1 INTO nResultado;
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY ELIMINACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_bajaProduccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_bajaProduccion`(id INT)
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;

IF EXISTS(select id_produccion from produccion WHERE id_produccion=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;
        SELECT 'SE ELIMINARON LOS DATOS' INTO cMensaje;
		DELETE FROM produccion where id_produccion=id;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;

    ELSE

        SELECT -1 INTO nResultado;
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY ELIMINACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_BajaProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_BajaProveedor`(in id int)
BEGIN
    DELETE FROM proveedorInsumo where id_proveedorIns = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_bajaProveedorXInsumo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_bajaProveedorXInsumo`(idinsumo INT, proveedorId INT )
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;

IF EXISTS(select insumo_id,proveedorIns_id from proveedorxinsumo WHERE insumo_id=idinsumo AND proveedorIns_id=proveedorId ) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;
        SELECT 'SE ELIMINARON LOS DATOS' INTO cMensaje;
		DELETE FROM proveedorxinsumo where insumo_id=idinsumo AND proveedorIns_id=proveedorId ;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;

    ELSE

        SELECT -1 INTO nResultado;
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY ELIMINACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PUNTO10` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PUNTO10`(chasis VARCHAR(10))
proc_end:BEGIN

DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE EXIS BOOLEAN DEFAULT FALSE;
DECLARE ULTIMORDEN INT;
DECLARE PARAMETROMODELO INT;
DECLARE SUM INT;
DECLARE PARAMETROLINEAMONTAJE INT;
DECLARE PARAMETROESTACIONTRABAJO INT;
DECLARE cMensaje VARCHAR(200);
DECLARE nResultado INT;
DECLARE contador int  DEFAULT 0;
DECLARE CONT INT DEFAULT 0;

-- PREGUNTA SI EXISTE EN LA LINEA DE PRODUCCION
IF EXISTS(SELECT chasis_id from produccion where chasis_id=chasis) then set EXISTE=TRUE;
END IF;

IF (EXISTE=FALSE) THEN
SELECT 'EL CHASIS NO EXISTE EN LA LINEA DE PRODUCCION SE COLOCA CON EL SP 9 EN EL CASO QUE NO ESTE OCUPADA LA LINEA' into cMensaje ;
select cmensaje as MENSAJE; 
call sp_punto9(chasis);

ELSE

--  CONSULTA SI SE ENCUENTRA FINALIZADA EN LA LINEA DE PRODUCCION
if exists(SELECT chasis_id FROM produccion p
INNER JOIN estaciontrabajo e ON p.estaciontrabajo_id=e.id_estaciontrabajo
WHERE p.chasis_id=chasis and e.numero_orden=5 and p.fechahoraegreso IS NOT NULL) then set exis= true; 
end if;

if (exis =true) then
SELECT 'LA PRODUCCION DEL CHASIS INGRESADO SE ENCUENTRA FINALIZADO' AS MENSAJE;
leave proc_end; 
END IF;


--  QUE ME TRAIGA EL ULTIMO NUMERO DE ORDEN DE LA ESTACION DE TRABAJO DEL CHASIS QUE INGRESO. 
-- EL NUMERO DE ORDEN ES DEL 1 A 5  

SELECT count(*),e.numero_orden INTO cont ,ULTIMORDEN FROM produccion p 
INNER JOIN estaciontrabajo e  ON p.estaciontrabajo_id=e.id_estaciontrabajo
WHERE p.chasis_id=chasis AND  p.fechahoraegreso IS NULL AND e.numero_orden<6;

 
 -- Aca obtengo el modelo del chasis id que entro.  
SELECT  modelo_id INTO PARAMETROMODELO FROM AUTOMOVIL WHERE id_chasis=chasis;

-- ACA OBTENGO LA LINEA DE MONTAJE
SELECT  ID_LINEAMONTAJE INTO PARAMETROLINEAMONTAJE FROM lineaMontaje l INNER JOIN modelo m 
ON m.id_modelo=l.modelo_id WHERE L.modelo_id=PARAMETROMODELO;

-- la estacion de trabajo mas alta que se encuentra 
-- select COUNT(*),max(e.numero_orden) INTO CON, NUM from produccion p inner join
-- estaciontrabajo e on p.estaciontrabajo_id=e.id_estaciontrabajo
-- where lineamontaje_id=PARAMETROLINEAMONTAJE AND fechahoraegreso is null;


-- OBTIENE LA ESTACION DE TRABAJO PARA LINEA DE MONTAJE DEL CHASIS QUE ENTRO.  
SELECT id_estaciontrabajo INTO PARAMETROESTACIONTRABAJO FROM estaciontrabajo e INNER JOIN lineamontaje l
ON e.lineamontaje_id=l.id_lineamontaje WHERE L.modelo_id=PARAMETROMODELO and numero_orden=ULTIMORDEN ;



 -- IF EXISTS (SELECT chasis_id from produccion where estaciontrabajo_id=PARAMETROESTACIONTRABAJO 
 -- AND chasis_id!=chasis AND fechahoraegreso is null ) then SET EXIS=true;
 -- END IF;

IF (PARAMETROESTACIONTRABAJO<ULTIMORDEN) THEN
SET SUM=SUM+1;
ELSE
SET SUM=SUM;
END IF;
-- HACER QUE ESTO NO SE VAYA A LA SIGUIENTE LINEA
IF EXISTS (SELECT chasis_id from produccion where estaciontrabajo_id=SUM 
AND chasis_id!=chasis AND fechahoraegreso is null ) then SET EXIS=true;
END IF;


IF ( EXIS=TRUE OR EXIS=true ) THEN
SELECT CONCAT('LA LINEA ESTA OCUPADA POR EL CHASIS ', (SELECT chasis_id from produccion where estaciontrabajo_id=PARAMETROESTACIONTRABAJO+1 
AND chasis_id!=chasis AND fechahoraegreso is null  ) )AS MENSAJE;
leave proc_end; 

 ELSE

 IF (cont>0 ) THEN

UPDATE PRODUCCION SET fechahoraegreso=(select now()) WHERE chasis_id=chasis ;
SELECT  ('SE FINALIZO EN LA ESTACION DONDE SE ENCONTRABA Y SE PASO A LA SIGUIENTE')as MENSAJE ;

if(ULTIMORDEN=5) THEN
UPDATE AUTOMOVIL SET fechafinal=(select now()) WHERE id_chasis=chasis ;
END IF;

if exists(SELECT chasis_id FROM produccion p
INNER JOIN estaciontrabajo e ON p.estaciontrabajo_id=e.id_estaciontrabajo
WHERE p.chasis_id=chasis and e.numero_orden=5 and p.fechahoraegreso IS NOT NULL) then set exis= true; 
end if;
if (exis =true) then
SELECT 'LA PRODUCCION DEL CHASIS INGRESADO SE ENCUENTRA FINALIZADO' AS MENSAJE;
leave proc_end; 
END IF;


 INSERT INTO PRODUCCION (id_produccion,chasis_id,estaciontrabajo_id,fechaHoraingreso,fechaHoraegreso)  
 VALUES (contador,chasis,PARAMETROESTACIONTRABAJO+1,(select now()),null); 
 

END IF;

END IF;

END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PUNTO11` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PUNTO11`(IDPEDIDO INT)
BEGIN

/*
Dado un número de pedido, se requiere listar los vehículos indicando el chasis, si se
encuentra finalizado, y si no esta terminado, indicar en qué estación se encuentra.
*/
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE CMENSAJE VARCHAR(100);


IF EXISTS (SELECT *  from pedidoautomovil where id_pedidoAuto=IDPEDIDO) THEN SET EXISTE=TRUE;
END IF;
IF (EXISTE=FALSE) THEN
SELECT ' EL NUMERO DE PEDIDO INGRESADO NO EXISTE' INTO CMENSAJE;
SELECT CMENSAJE;

ELSE

SELECT p.chasis_id , 'TERMINADO' AS  EstadouEstacionTrabajo FROM produccion p INNER JOIN automovil a 
ON p.chasis_id=a.id_chasis 
INNER JOIN estaciontrabajo e 
ON p.estaciontrabajo_id=e.id_estaciontrabajo where a.fechafinal IS NOT NULL AND pedido_id=IDPEDIDO group by p.chasis_id
UNION
SELECT p.chasis_id ,max(p.estacionTrabajo_id) AS EstadouEstacionTrabajo FROM produccion p INNER JOIN automovil a 
ON p.chasis_id=a.id_chasis 
INNER JOIN estaciontrabajo e 
ON p.estaciontrabajo_id=e.id_estaciontrabajo WHERE  p.fechahoraegreso IS NULL AND pedido_id=IDPEDIDO group by p.chasis_id
UNION
select a.id_chasis, 'A Fabricar' as EstadouEstacionTrabajo 
from automovil a 
left join produccion as p on p.chasis_id= a.id_chasis
where p.chasis_id IS NULL AND pedido_id=IDPEDIDO ;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PUNTO12` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PUNTO12`(IDPEDIDO INT)
BEGIN
/* Dado un número de pedido, se requiere listar los insumos que será necesario
solicitar, indicando código de insumo y cantidad requerida para ese pedido. 

*/

-- NO SE SI ES LO CORRECTO PERO COMO HAY 4 MODELOS 1 2 3 4 SE USA PARA LAS CONDICIONES. No creo que
-- sea optimo ya que si crece el numero de modelo habria que modificar el sp agregando mas modelos 
-- pero no se de que otra manera se puede realizar.

DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE CMENSAJE VARCHAR(100);


IF EXISTS (SELECT *  from pedidoautomovil where id_pedidoAuto=IDPEDIDO) THEN SET EXISTE=TRUE;
END IF;
IF (EXISTE=FALSE) THEN
SELECT ' EL NUMERO DE PEDIDO INGRESADO NO EXISTE' INTO CMENSAJE;
SELECT CMENSAJE;

ELSE



select insumo_id,sum(cantidad) from( select insumo_id ,(sum(ie.cantidad))* 
(select sum(cantidad) from pedidoxmodelo where pedidoauto_id=IDPEDIDO and modelo_id=1)
as cantidad 
from modelo m
inner join lineaMontaje lm on m.id_modelo = lm.modelo_id
inner join pedidoxmodelo p on m.id_modelo = p.modelo_id
inner join estacionTrabajo et on lm.id_lineaMontaje = et.lineaMontaje_id
inner join insumoXestacion ie on et.id_estacionTrabajo = ie.estacionTrabajo_id
where p.pedidoauto_id=IDPEDIDO  and lm.modelo_id=1 group by ie.insumo_id  
union 
select insumo_id ,(sum(ie.cantidad))*
(select sum(cantidad) from pedidoxmodelo where pedidoauto_id=IDPEDIDO and modelo_id=2)
as cantidad 
from modelo m
inner join lineaMontaje lm on m.id_modelo = lm.modelo_id
inner join pedidoxmodelo p on m.id_modelo = p.modelo_id
inner join estacionTrabajo et on lm.id_lineaMontaje = et.lineaMontaje_id
inner join insumoXestacion ie on et.id_estacionTrabajo = ie.estacionTrabajo_id
where p.pedidoauto_id=IDPEDIDO  and lm.modelo_id=2 group by ie.insumo_id 
union 
select insumo_id ,(sum(ie.cantidad))*
(select sum(cantidad) from pedidoxmodelo where pedidoauto_id=IDPEDIDO and modelo_id=3)
as cantidad 
from modelo m
inner join lineaMontaje lm on m.id_modelo = lm.modelo_id
inner join pedidoxmodelo p on m.id_modelo = p.modelo_id
inner join estacionTrabajo et on lm.id_lineaMontaje = et.lineaMontaje_id
inner join insumoXestacion ie on et.id_estacionTrabajo = ie.estacionTrabajo_id
where p.pedidoauto_id=IDPEDIDO  and lm.modelo_id=3 group by insumo_id 
UNION
select insumo_id ,(sum(ie.cantidad))*
(select sum(cantidad) from pedidoxmodelo where pedidoauto_id=IDPEDIDO and modelo_id=4)
as cantidad 
from modelo m
inner join lineaMontaje lm on m.id_modelo = lm.modelo_id
inner join pedidoxmodelo p on m.id_modelo = p.modelo_id
inner join estacionTrabajo et on lm.id_lineaMontaje = et.lineaMontaje_id
inner join insumoXestacion ie on et.id_estacionTrabajo = ie.estacionTrabajo_id
where p.pedidoauto_id=IDPEDIDO and lm.modelo_id=4 group by insumo_id 
UNION
select insumo_id ,(sum(ie.cantidad))*
(select sum(cantidad) from pedidoxmodelo where pedidoauto_id=IDPEDIDO and modelo_id=5)
as cantidad 
from modelo m
inner join lineaMontaje lm on m.id_modelo = lm.modelo_id
inner join pedidoxmodelo p on m.id_modelo = p.modelo_id
inner join estacionTrabajo et on lm.id_lineaMontaje = et.lineaMontaje_id
inner join insumoXestacion ie on et.id_estacionTrabajo = ie.estacionTrabajo_id
where p.pedidoauto_id=IDPEDIDO and lm.modelo_id=5 group by insumo_id ) as t group by insumo_id;

END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PUNTO13` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PUNTO13`(IDLINEA INT)
BEGIN
/*
 Dada una línea de montaje, indicar el tiempo promedio de construcción de los
vehículos (tener en cuenta sólo los vehículos terminados). 
*/

DECLARE LINEA INT DEFAULT 0;
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE MENSAJE VARCHAR(100);

IF EXISTS(SELECT ID_LINEAMONTAJE FROM LINEAMONTAJE WHERE ID_LINEAMONTAJE=IDLINEA) THEN SET EXISTE=TRUE;
END IF;

-- SI NO HAY CHASIS TERMINADO PARA LA LINEA DE MESAJE QUE INDIQUE QUE NO HAY TERMINADOS.
 SELECT COUNT(*) FROM MODELO M 
 INNER JOIN LINEAMONTAJE L ON L.MODELO_ID=M.ID_MODELO
 INNER JOIN AUTOMOVIL A ON A.MODELO_ID=M.ID_MODELO
 WHERE ID_LINEAMONTAJE=IDLINEA AND FECHAFINAL IS NOT NULL;
 



IF (EXISTE=TRUE) THEN

-- ME DA LA PRIMERA ESTACION DE TRABAJOPARA LUEGO SACAR LA DIF DE LA FECHA DE INGRESO EMPEZANDO EL PRIMERO.
SELECT MIN(ID_ESTACIONTRABAJO) INTO LINEA FROM LINEAMONTAJE L 
INNER JOIN ESTACIONTRABAJO E ON L.ID_LINEAMONTAJE = E.LINEAMONTAJE_ID WHERE ID_LINEAMONTAJE=IDLINEA;


-- LO DA EN DIAS LA DIFERENCIA
SELECT  AVG(DATEDIFF(a.fechafinal,fechahoraingreso)) as promedio FROM ESTACIONTRABAJO  E
INNER JOIN LINEAMONTAJE L ON L.ID_LINEAMONTAJE=E.LINEAMONTAJE_ID
INNER JOIN PRODUCCION P ON P.ESTACIONTRABAJO_ID=E.ID_ESTACIONTRABAJO
INNER JOIN AUTOMOVIL A ON P.CHASIS_ID=A.ID_CHASIS
where ID_LINEAMONTAJE=IDLINEA AND A.FECHAFINAL IS NOT NULL AND estaciontrabajo_id=LINEA ;

ELSE

SELECT ' LA LINEA DE MONTAJE INGRESADA NO EXISTE' INTO MENSAJE;
SELECT MENSAJE;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PUNTO14` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PUNTO14`()
BEGIN
CREATE INDEX INDICE1 ON PEDIDOXMODELO (PEDIDO_ID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PUNTO8` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PUNTO8`(idPedido INT)
BEGIN
DECLARE idPedidoParametro INT DEFAULT 0;  --  EN DETAlle    
-- DECLARE idChasis INT DEFAULT 0;        --  en automovil
DECLARE dFechaIngreso DATETIME;           -- produccion
DECLARE finished INT;

DECLARE idModeloParametro INTEGER;      -- en detalle
DECLARE nCantidadDetalle INT;     --  en detallle
DECLARE nInsertados INT;    
   
DECLARE curDetallePedido CURSOR FOR
	SELECT modelo_id, cantidad FROM Pedidoxmodelo WHERE pedidoAuto_id = idPedido; -- te muestra el modelo y la cantidad quer hay en detalle



-- La instrucción DECLARE … HANDLER asocia una o más condiciones con una
-- instrucción a ser ejecutada cuando alguna de las condiciones ocurre. El valor del
-- handler_type indica qué ocurre cuando la condición se ejecuta. Con la instrucción
-- CONTINUE , la ejecución de la instrucción continúa, con la instrucción EXIT el bloque
-- BEGIN actual terminará.

DECLARE CONTINUE HANDLER
FOR NOT FOUND SET finished = 1;    -- que continue la ejecucion y si no encuentra datos y  que finished =1;
   
OPEN curDetallePedido;
-- Aca comienzo el loop recorriendo el cursor.
    getDetalle: LOOP

        FETCH curDetallePedido INTO idModeloParametro, nCantidadDetalle; -- que modelo es y que cantidad.

        IF finished = 1 THEN
            LEAVE getDetalle;
        END IF;

	SET nInsertados = 0;

	-- Aca loopeo para hacer N inserts.
	WHILE nInsertados < nCantidadDetalle DO

	INSERT INTO automovil (id_chasis,Modelo_id,fechafinal,pedido_id)
VALUES ((select round( rand()*100000)),idModeloParametro,null,idPedido);




SET nInsertados = nInsertados  +1;

	END WHILE;
 INSERT INTO lineamontaje (id_lineaMontaje,Modelo_id,prom_produccion)
 VALUES (idModeloParametro,idModeloParametro,null);
 
 
    END LOOP getDetalle;

-- Elimino el cursor de memoria

    CLOSE curDetallePedido;
    
    drop table datos;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PUNTO9` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PUNTO9`(IN chasis VARCHAR(10))
proc_end:BEGIN


DECLARE EXISTE boolean;
DECLARE PARAMETROID VARCHAR(10);
DECLARE PARAMETROMODELO INT;
DECLARE PARAMETROLINEAMONTAJE INT;
DECLARE PARAMETROESTACIONTRABAJO INT;
DECLARE cMensaje VARCHAR(60);
DECLARE nResultado INT;
DECLARE contador int  DEFAULT 0;
DECLARE CON INT DEFAULT 0;

IF EXISTS(SELECT chasis_id from produccion where chasis_id=chasis) then set EXISTE=TRUE;
END IF;

IF (EXISTE=TRUE) THEN
SELECT 'EL CHASIS YA EXISTE EN LA PRODUCCION' into cMensaje ;
select cmensaje as MENSAJE;
leave proc_end;  
END IF;

-- Aca obtengo el modelo del chasis id que entro.
SELECT id_chasis, modelo_id INTO PARAMETROID,PARAMETROMODELO FROM AUTOMOVIL WHERE id_chasis=chasis;

-- LINEA DE MONTAJE DEL MODELO
SELECT count(*), ID_LINEAMONTAJE INTO con,PARAMETROLINEAMONTAJE FROM lineaMontaje l INNER JOIN modelo m 
ON m.id_modelo=l.modelo_id WHERE L.modelo_id=PARAMETROMODELO;
-- SELECT PARAMETROMODELO AS MENSAJE;

IF (CON=0) THEN
SELECT 'NO EXISTE LINEA DE MONTAJE CREADA PARA EL MODELO' AS MENSAJE; --  VER QUE SI NO EXISTE CREADA LINEA DE MONTAJE PARA EL MODELO PASA DE LARGO E INTENTA AGREGARLO. TIENE QUE SALIR DE SP si no esta
leave proc_end; 
END IF;


-- OBTIENE LA 1 ESTACION DE TRABAJO PARA LINEA DE MONTAJE POR EL CHASIS QUE ENTRO.
SELECT id_estaciontrabajo INTO PARAMETROESTACIONTRABAJO FROM estaciontrabajo e INNER JOIN lineamontaje l
ON e.lineamontaje_id=l.id_lineamontaje WHERE L.modelo_id=PARAMETROMODELO and e.numero_orden=1;
select PARAMETROESTACIONTRABAJO as mensaje;

IF EXISTS (SELECT chasis_id from produccion where estaciontrabajo_id=PARAMETROESTACIONTRABAJO AND fechahoraegreso IS NULL) then SET EXISTE=true;
END IF;

IF (EXISTE=TRUE) THEN
SELECT CONCAT('LA LINEA ESTA OCUPADA POR EL CHASIS ', (SELECT chasis_id from produccion where estaciontrabajo_id=PARAMETROESTACIONTRABAJO))AS MENSAJE;

ELSE

SELECT 'SE INSERTO EN LA LINEA DE PRODUCCION' AS MENSAJE;
INSERT INTO PRODUCCION (id_produccion,chasis_id,estaciontrabajo_id,fechaHoraingreso,fechaHoraegreso) 
VALUES (contador,chasis,PARAMETROESTACIONTRABAJO,(select now()),null);

END IF;

-- SET contador = contador  +1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_updateAutomovil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateAutomovil`(id varchar(10),idModelo INT,fechafinal DATE, IdPedido INT)
BEGIN

DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;
IF EXISTS(select id_chasis from Automovil WHERE id_chasis=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;	
        SELECT 'SE MODIFICARON LOS CAMPOS' INTO cMensaje;
        UPDATE Automovil SET modelo_id=idmodelo,
        fechafinal=fechafinal,
        pedido_id=idPedido
		WHERE id_chasis=id;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
		
	ELSE
    
		SELECT -1 INTO nResultado;	
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY MODIFICACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_updateConcecionaria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateConcecionaria`(in id int, in nombre varchar(30))
BEGIN

DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;

IF EXISTS(select id_concesionaria from concesionaria WHERE id_concesionaria=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;
        SELECT 'SE MODIFICARON LOS CAMPOS' INTO cMensaje;
        UPDATE concesionaria
		SET nombre=nombre WHERE id_concesionaria=id;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;

    ELSE

        SELECT -1 INTO nResultado;
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY MODIFICACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_updateEstacionTrabajo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateEstacionTrabajo`(id INT,descrip VARCHAR(50),idLineaMontaje INT,numeroOrden INT)
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;
IF EXISTS(select id_estacionTrabajo from estaciontrabajo WHERE id_estacionTrabajo=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;	
        SELECT 'SE MODIFICARON LOS CAMPOS' INTO cMensaje;
      UPDATE estaciontrabajo SET
		descripcion=descrip,
		lineaMontaje_id=idLineaMontaje,
		numero_orden=numeroOrden
		WHERE id_estacionTrabajo=id;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
		
	ELSE
    
		SELECT -1 INTO nResultado;	
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY MODIFICACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_updateInsumo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateInsumo`(in id int, in nom varchar(50),in unidad varchar(10),in descr varchar(100))
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;

IF EXISTS(select id_insumo from insumo WHERE id_insumo=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;
        SELECT 'SE MODIFICARON LOS CAMPOS' INTO cMensaje;
        UPDATE insumo SET nombre=nom,
        unidadMedidad = unidad,
        descripcion = descr
        WHERE id_insumo = id;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;

    ELSE

        SELECT -1 INTO nResultado;
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY MODIFICACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_updateLineaMontaje` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateLineaMontaje`(in id int, in modelo int, in prom int)
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;

IF EXISTS(select id_lineamontaje from lineamontaje WHERE id_lineamontaje=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;
        SELECT 'SE MODIFICARON LOS CAMPOS' INTO cMensaje;
        UPDATE lineamontaje SET modelo_id=modelo,
        prom_produccion=prom
        WHERE id_lineamontaje=id;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;

    ELSE

        SELECT -1 INTO nResultado;
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY MODIFICACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateModelo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdateModelo`(idModelo INT, nombre VARCHAR(50))
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;
IF EXISTS(select id_Modelo from modelo WHERE id_Modelo=idModelo) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;	
        SELECT 'SE MODIFICARON LOS CAMPOS' INTO cMensaje;
        UPDATE modelo SET nombre=nombre WHERE id_Modelo=idModelo;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
		
	ELSE
    
		SELECT -1 INTO nResultado;	
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY MODIFICACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdatepedidoAuto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdatepedidoAuto`(idPedidoAuto INT ,idConcesionaria INT,fechaPedido DATE)
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;
IF EXISTS(select id_PedidoAuto from pedidoautomovil WHERE id_PedidoAuto=idPedidoAuto) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;	
        SELECT 'SE MODIFICARON LOS CAMPOS' INTO cMensaje;
        UPDATE pedidoautomovil SET 
		concesionaria_id=idConcesionaria,
		fechaPedido=fechaPedido
		
		WHERE id_PedidoAuto= idpedidoAuto;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
		
	ELSE
    
		SELECT -1 INTO nResultado;	
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY MODIFICACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdatePedidoInsumo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdatePedidoInsumo`(idpedidoIns INT,idproveedor INT, fecha DATE)
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;

IF EXISTS(select id_PedidoIns from PedidoInsumo WHERE id_PedidoIns=idpedidoIns) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;
        SELECT 'SE MODIFICARON LOS CAMPOS' INTO cMensaje;
        UPDATE PedidoInsumo SET proveedorIns_id=idproveedor,
        fechaPedido = fecha
        WHERE id_PedidoIns = idpedidoIns;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;

    ELSE

        SELECT -1 INTO nResultado;
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY MODIFICACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateProduccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdateProduccion`(id INT , idchasis VARCHAR (10),idEstacionTrabajo INT, fechaHoraIngreso datetime,fechaEgreso datetime)
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;
IF EXISTS(select id_produccion from produccion WHERE id_produccion=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;	
        SELECT 'SE MODIFICARON LOS CAMPOS' INTO cMensaje;
       UPDATE produccion SET
chasis_id=idchasis,
estacionTrabajo_id=idEstacionTrabajo,
fechaHoraIngreso=fechaHoraIngreso,
fechaEgreso=fechaEgreso
WHERE id_produccion=id;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
		
	ELSE
    
		SELECT -1 INTO nResultado;	
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY MODIFICACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Update_PedidoxModelo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Update_PedidoxModelo`(idPedidoAuto INT, idmodelo INT,precio INT ,cantidad INT,fechaentrega DATE)
BEGIN
UPDATE pedidoxmodelo SET modelo_id=idmodelo,
precio=precio,
cantidad=cantidad,
fechaentrega=fechaentrega
WHERE pedidoAuto_id=idPedidoAuto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Update_ProveedorInsumo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Update_ProveedorInsumo`(id INT, nombre varchar (30))
BEGIN
DECLARE EXISTE BOOLEAN DEFAULT FALSE;
DECLARE cMensaje VARCHAR(50);
DECLARE nResultado INT;

IF EXISTS(select id_proveedorins from ProveedorInsumo WHERE id_proveedorins=id) THEN SET EXISTE = TRUE;
END IF;
IF (EXISTE = TRUE) THEN
SELECT 0 INTO nResultado;
        SELECT 'SE MODIFICARON LOS CAMPOS' INTO cMensaje;
        UPDATE ProveedorInsumo SET nombre=nombre
        WHERE id_proveedorIns = id;
        SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;

    ELSE

        SELECT -1 INTO nResultado;
        SELECT 'NO EXISTE EL ID INGRESADO, NO HAY MODIFICACIONES'  INTO cMensaje ;
       SELECT CONCAT(cmensaje )AS CMENSAJE, (nResultado) as NRESULTADO;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-14  0:25:36
