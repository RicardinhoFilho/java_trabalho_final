-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: beibe
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Sabonetes','2022-08-30 13:34:25'),(2,'Toalhas','2022-08-31 18:16:54'),(3,'Teste 2','2022-08-31 18:31:21');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chamado`
--

DROP TABLE IF EXISTS `chamado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chamado` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `texto` text NOT NULL,
  `cliente_id` int NOT NULL,
  `finalizado` tinyint(1) DEFAULT '0',
  `criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_CHAMAD_CLIENTE` (`cliente_id`),
  CONSTRAINT `FK_CHAMAD_CLIENTE` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chamado`
--

LOCK TABLES `chamado` WRITE;
/*!40000 ALTER TABLE `chamado` DISABLE KEYS */;
INSERT INTO `chamado` VALUES (1,'Estorno','Qurbo receber o estorno bláblávlá',1,1,'2022-08-29 11:56:03'),(2,'Teste 2','Somente um simples teste!',1,1,'2022-08-29 15:16:26'),(3,'Teste 23','Somente um simples teste!',1,0,'2022-08-29 20:48:31');
/*!40000 ALTER TABLE `chamado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) NOT NULL,
  `sobrenome` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `senha` varchar(250) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'fulano','silva','teste@email.com','teste');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) NOT NULL,
  `sobrenome` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `senha` varchar(250) NOT NULL,
  `admin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Ricardo','Filho','teste@email.com','teste',1),(2,'Ricardo','Filho','teste2@email.com','teste',0);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) NOT NULL,
  `preco` decimal(10,0) DEFAULT NULL,
  `data_criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `validade` date NOT NULL,
  `saldo` int NOT NULL,
  `categoria_id` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Produto 12',150,'2022-08-24 20:31:41','2022-08-31',500,NULL),(4,'Produto 2',13,'2022-08-24 21:06:37','2022-08-24',70,NULL);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resposta`
--

DROP TABLE IF EXISTS `resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resposta` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `texto` text NOT NULL,
  `funcionario_id` int DEFAULT NULL,
  `criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `chamado_id` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_RESP_FUNC` (`funcionario_id`),
  KEY `chamado_id` (`chamado_id`),
  CONSTRAINT `FK_RESP_FUNC` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionario` (`ID`),
  CONSTRAINT `resposta_ibfk_1` FOREIGN KEY (`chamado_id`) REFERENCES `chamado` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resposta`
--

LOCK TABLES `resposta` WRITE;
/*!40000 ALTER TABLE `resposta` DISABLE KEYS */;
INSERT INTO `resposta` VALUES (5,'AGUARDO RESPOSTA',NULL,'2022-08-29 12:02:23',1),(6,'Olá, consegue nos informar qual produto deseja retirar?',1,'2022-08-29 12:02:30',1),(7,'AGUARDO RESPOSTA',NULL,'2022-08-29 20:49:38',2),(8,'Testte',2,'2022-08-29 21:38:10',1),(9,'Deu certo!',2,'2022-08-29 21:39:29',1),(10,'',2,'2022-08-29 21:39:41',1),(11,'',2,'2022-08-29 21:43:29',1),(12,'Teste 50',NULL,'2022-08-29 21:49:54',1),(13,'tESTE',2,'2022-08-29 21:52:11',1),(14,'Teste r',2,'2022-08-29 21:54:12',1),(15,'',2,'2022-08-29 21:54:21',1),(16,'',2,'2022-08-29 21:54:38',1),(17,'O 1 da certpo!',2,'2022-08-29 21:55:20',1),(18,'11',2,'2022-08-29 21:55:24',1),(19,'',2,'2022-08-29 21:58:53',1),(20,'Primeiro teste!',2,'2022-08-29 22:02:10',2),(21,'Segundo ja n vai aparecer!',2,'2022-08-29 22:02:20',2),(22,'Deu certro!',2,'2022-08-29 22:02:34',3),(23,'Deu certinho, q vbom!',2,'2022-08-30 10:17:11',1),(24,'Deu certo aqui!',2,'2022-08-30 12:35:38',1),(25,'Showw',2,'2022-08-30 12:45:04',2),(26,'aa',2,'2022-08-30 12:45:31',1),(27,'Terminado',2,'2022-08-30 12:45:46',2),(28,'Teste final!',2,'2022-08-30 12:50:32',1),(29,'Deu tudo certo!',2,'2022-08-30 12:50:42',2),(30,'Legal , ultimo chamado!',2,'2022-08-30 13:13:28',3),(31,'Mais uma menssagem!',2,'2022-08-31 18:03:35',3),(32,'Outro Funcionario',1,'2022-08-31 19:36:48',3),(33,'A',2,'2022-08-31 20:01:00',3),(34,'Teste',NULL,'2022-08-31 20:21:28',3),(35,'Teste',NULL,'2022-08-31 20:23:10',3),(36,'Teste',NULL,'2022-08-31 20:24:50',3),(37,'MAIS UM TESTE',NULL,'2022-08-31 20:26:05',3),(38,'mAIS UM TESTE!',NULL,'2022-08-31 20:26:27',3),(39,'Deu Certinho!',NULL,'2022-08-31 20:30:19',3),(40,'Q bom q deu certo!',2,'2022-08-31 20:34:58',3);
/*!40000 ALTER TABLE `resposta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-13 19:51:49
