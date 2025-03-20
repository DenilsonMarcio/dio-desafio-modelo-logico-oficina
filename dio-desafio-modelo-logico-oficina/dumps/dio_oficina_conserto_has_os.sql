-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dio_oficina
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `conserto_has_os`
--

DROP TABLE IF EXISTS `conserto_has_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conserto_has_os` (
  `Conserto_idConserto` int NOT NULL,
  `Conserto_Mecanico_idMecanico` int NOT NULL,
  `Conserto_Mecanico_Veiculo_idVeiculo` int NOT NULL,
  `Conserto_Mecanico_Veiculo_Cliente_idCliente` int NOT NULL,
  `OS_idOS` int NOT NULL,
  PRIMARY KEY (`Conserto_idConserto`,`Conserto_Mecanico_idMecanico`,`Conserto_Mecanico_Veiculo_idVeiculo`,`Conserto_Mecanico_Veiculo_Cliente_idCliente`,`OS_idOS`),
  KEY `fk_Conserto_has_Ordem de serviço_Ordem de serviço1_idx` (`OS_idOS`),
  KEY `fk_Conserto_has_Ordem de serviço_Conserto1_idx` (`Conserto_idConserto`,`Conserto_Mecanico_idMecanico`,`Conserto_Mecanico_Veiculo_idVeiculo`,`Conserto_Mecanico_Veiculo_Cliente_idCliente`),
  CONSTRAINT `fk_Conserto_has_Ordem de serviço_Conserto1` FOREIGN KEY (`Conserto_idConserto`, `Conserto_Mecanico_idMecanico`, `Conserto_Mecanico_Veiculo_idVeiculo`, `Conserto_Mecanico_Veiculo_Cliente_idCliente`) REFERENCES `conserto` (`idConserto`, `Mecanico_idMecanico`, `Mecanico_Veiculo_idVeiculo`, `Mecanico_Veiculo_Cliente_idCliente`),
  CONSTRAINT `fk_Conserto_has_Ordem de serviço_Ordem de serviço1` FOREIGN KEY (`OS_idOS`) REFERENCES `os` (`idOS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conserto_has_os`
--

LOCK TABLES `conserto_has_os` WRITE;
/*!40000 ALTER TABLE `conserto_has_os` DISABLE KEYS */;
INSERT INTO `conserto_has_os` VALUES (1,1,1,1,1),(2,2,2,2,2),(3,3,3,3,3),(4,4,4,4,4),(5,5,5,5,5);
/*!40000 ALTER TABLE `conserto_has_os` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-19 20:39:24
