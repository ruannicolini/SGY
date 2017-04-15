-- MySQL dump 10.13  Distrib 5.6.26, for Win64 (x86_64)
--
-- Host: 192.168.1.200    Database: gym
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `gym`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `gym` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gym`;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno` (
  `idAluno` int(11) NOT NULL,
  `nomeAluno` varchar(80) NOT NULL,
  `idade` int(11) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `tel1` varchar(50) DEFAULT NULL,
  `tel2` varchar(50) DEFAULT NULL,
  `nomeResponsavel` varchar(80) DEFAULT NULL,
  `parentescoResponsavel` varchar(50) DEFAULT NULL,
  `telResponsavel` varchar(50) DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `cpf` varchar(50) DEFAULT NULL,
  `idInstrutor` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` (`idAluno`, `nomeAluno`, `idade`, `dataNascimento`, `email`, `sexo`, `cidade`, `bairro`, `rua`, `numero`, `cep`, `tel1`, `tel2`, `nomeResponsavel`, `parentescoResponsavel`, `telResponsavel`, `dataCadastro`, `cpf`, `idInstrutor`) VALUES (1,'RUAN NICOLINI',NULL,'1991-08-10','ruan_03@hotmail.com','M','RESPLENDOR','NORTE','EDUARDO MENEGUSSI 93',93,35230000,'(33)9913-21006','(33)3263-2920',NULL,NULL,NULL,NULL,'110.149.126-44',1);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER TRIGGER_Aluno_Delete 
AFTER DELETE ON aluno for each row
BEGIN
	-- Delete anamnese
	DELETE FROM anamnese WHERE anamnese.idAluno = old.idAluno;
    
    -- Delete AlunoModalidade
	DELETE FROM alunoModalidade WHERE alunomodalidade.idAluno = old.idAluno;
    
    -- Delete fichaaluno
	DELETE FROM fichaaluno WHERE fichaaluno.idAluno = old.idAluno;
    
    -- Delete Pagamentos em aberto
	DELETE FROM pagamento WHERE pagamento.idAluno = old.idAluno and pagamento.idstatusPagamento = 1;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `alunomodalidade`
--

DROP TABLE IF EXISTS `alunomodalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alunomodalidade` (
  `idAluno` int(11) NOT NULL,
  `idmodalidade` int(11) NOT NULL,
  `dataInscrição` date DEFAULT NULL,
  `diavencimento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAluno`,`idmodalidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunomodalidade`
--

LOCK TABLES `alunomodalidade` WRITE;
/*!40000 ALTER TABLE `alunomodalidade` DISABLE KEYS */;
INSERT INTO `alunomodalidade` (`idAluno`, `idmodalidade`, `dataInscrição`, `diavencimento`) VALUES (1,1,'2017-04-15',15);
/*!40000 ALTER TABLE `alunomodalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anamnese`
--

DROP TABLE IF EXISTS `anamnese`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anamnese` (
  `idAnamnese` int(11) NOT NULL,
  `idAluno` int(11) NOT NULL,
  `dataAnamnese` date NOT NULL,
  `frequenciaSemanalTreino` int(11) DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `qtdHorasSono` int(11) DEFAULT NULL,
  `qtdRefeicoesDia` int(11) DEFAULT NULL,
  `fuma` tinyint(1) DEFAULT NULL,
  `dieta` tinyint(1) DEFAULT NULL,
  `suplementacao` tinyint(1) DEFAULT NULL,
  `consumoAlcoolico` tinyint(1) DEFAULT NULL,
  `informacaoAdicional` varchar(700) DEFAULT NULL,
  `idObjetivo` int(11) NOT NULL,
  `nomeAvaliador` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idAnamnese`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anamnese`
--

LOCK TABLES `anamnese` WRITE;
/*!40000 ALTER TABLE `anamnese` DISABLE KEYS */;
INSERT INTO `anamnese` (`idAnamnese`, `idAluno`, `dataAnamnese`, `frequenciaSemanalTreino`, `peso`, `altura`, `qtdHorasSono`, `qtdRefeicoesDia`, `fuma`, `dieta`, `suplementacao`, `consumoAlcoolico`, `informacaoAdicional`, `idObjetivo`, `nomeAvaliador`) VALUES (1,1,'2017-04-15',5,60,1.7,8,6,0,1,1,0,'nada a declarar',2,'ADMINISTRADOR');
/*!40000 ALTER TABLE `anamnese` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER TRIGGER_Anamnese_Delete 
AFTER DELETE ON anamnese for each row
BEGIN
	-- Delete anamnese
	DELETE FROM anamnesepatologia WHERE anamnesepatologia.idAnamnese = old.idAnamnese;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `anamnesepatologia`
--

DROP TABLE IF EXISTS `anamnesepatologia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anamnesepatologia` (
  `idAnamnese` int(11) NOT NULL,
  `idPatologia` int(11) NOT NULL,
  `observacaoMedica` varchar(700) DEFAULT NULL,
  PRIMARY KEY (`idAnamnese`,`idPatologia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anamnesepatologia`
--

LOCK TABLES `anamnesepatologia` WRITE;
/*!40000 ALTER TABLE `anamnesepatologia` DISABLE KEYS */;
INSERT INTO `anamnesepatologia` (`idAnamnese`, `idPatologia`, `observacaoMedica`) VALUES (1,1,NULL),(1,2,NULL),(1,3,NULL);
/*!40000 ALTER TABLE `anamnesepatologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campolog`
--

DROP TABLE IF EXISTS `campolog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campolog` (
  `idCampolog` int(11) NOT NULL,
  `nomeField` varchar(50) DEFAULT NULL,
  `valorAntigo` varchar(50) DEFAULT NULL,
  `valornovo` varchar(50) DEFAULT NULL,
  `idLogSistema` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCampolog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campolog`
--

LOCK TABLES `campolog` WRITE;
/*!40000 ALTER TABLE `campolog` DISABLE KEYS */;
INSERT INTO `campolog` (`idCampolog`, `nomeField`, `valorAntigo`, `valornovo`, `idLogSistema`) VALUES (1,'tipoMedida','1','T',1),(2,'idYoutube','','bQmKTKObDfU',2),(3,'tipoMedida','T','U',2),(4,'idusuario',NULL,'2',3),(5,'nomeUsuario',NULL,'ATENDENTE',3),(6,'username',NULL,'atendente',3),(7,'senha',NULL,'D4A1D4CF923C881FC54B2F6E13FED99B',3),(8,'ativo',NULL,'True',3),(9,'administrador',NULL,'False',3),(10,'atendente',NULL,'True',3),(11,'instrutor',NULL,'False',3),(12,'avaliador',NULL,'False',3),(13,'instrutor','False','True',4),(14,'idpatologia',NULL,'1',5),(15,'nomePatologia',NULL,'DOR NO JOELHO',5),(16,'observacao',NULL,'',5),(17,'idpatologia',NULL,'2',6),(18,'nomePatologia',NULL,'DIABETES',6),(19,'observacao',NULL,'',6),(20,'idpatologia',NULL,'3',7),(21,'nomePatologia',NULL,'HIPERTENSÃO',7),(22,'observacao',NULL,'',7),(23,'idpatologia',NULL,'4',8),(24,'nomePatologia',NULL,'LESÃO FEMO',8),(25,'observacao',NULL,'',8),(26,'idpatologia',NULL,'5',9),(27,'nomePatologia',NULL,'DOR LOMBAR',9),(28,'observacao',NULL,'',9),(29,'idAnamnese',NULL,'1',10),(30,'idAluno',NULL,'1',10),(31,'frequenciaSemanalTreino',NULL,'5',10),(32,'peso',NULL,'60',10),(33,'altura',NULL,'1,70000004768372',10),(34,'qtdHorasSono',NULL,'8',10),(35,'qtdRefeicoesDia',NULL,'6',10),(36,'dieta',NULL,'True',10),(37,'suplementacao',NULL,'True',10),(38,'dataAnamnese',NULL,'15/04/2017',10),(39,'NOMEALUNO',NULL,'RUAN NICOLINI',10),(40,'consumoAlcoolico',NULL,'False',10),(41,'fuma',NULL,'False',10),(42,'informacaoAdicional',NULL,'nada a declarar',10),(43,'idObjetivo',NULL,'2',10),(44,'DESCRICAOOBJETIVO',NULL,'GANHO DE MASSA MUSCULAR',10),(45,'nomeAvaliador',NULL,'ADMINISTRADOR',10),(46,'idAluno',NULL,'1',11),(47,'nomeAluno',NULL,'RUAN NICOLINI',11),(48,'dataNascimento',NULL,'10/08/1991',11),(49,'email',NULL,'ruan_03@hotmail.com',11),(50,'sexo',NULL,'',11),(51,'cidade',NULL,'RESPLENDOR',11),(52,'bairro',NULL,'NORTE',11),(53,'rua',NULL,'EDUARDO MENEGUSSI 93',11),(54,'numero',NULL,'933',11),(55,'cep',NULL,'35230000',11),(56,'tel1',NULL,'3332632920',11),(57,'tel2',NULL,'3332632920',11),(58,'nomeResponsavel',NULL,'',11),(59,'parentescoResponsavel',NULL,'',11),(60,'telResponsavel',NULL,'',11),(61,'dataCadastro',NULL,'',11),(62,'cpf',NULL,'11014912644',11),(63,'idInstrutor',NULL,'1',11),(64,'NOMEINSTRUTORFICHA',NULL,'ADMINISTRADOR',11),(65,'idAluno',NULL,'1',12),(66,'idmodalidade',NULL,'1',12),(67,'dataInscrição',NULL,'15/04/2017',12),(68,'diavencimento',NULL,'15',12),(69,'DESCRICAOMODALIDADE',NULL,'',12),(70,'valor',NULL,'',12),(71,'idPagamento',NULL,'1',13),(72,'idAluno',NULL,'1',13),(73,'idmodalidade',NULL,'1',13),(74,'valorModalidade',NULL,'30',13),(75,'valorCobrado',NULL,'',13),(76,'dataVencimento',NULL,'15/04/2017',13),(77,'dataPagamento',NULL,'',13),(78,'idstatusPagamento',NULL,'1',13),(79,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',13),(80,'descricaoModalidade',NULL,'',13),(81,'descricaoStatusPagamento',NULL,'',13),(82,'idPagamento',NULL,'2',14),(83,'idAluno',NULL,'1',14),(84,'idmodalidade',NULL,'1',14),(85,'valorModalidade',NULL,'30',14),(86,'valorCobrado',NULL,'',14),(87,'dataVencimento',NULL,'15/05/2017',14),(88,'dataPagamento',NULL,'',14),(89,'idstatusPagamento',NULL,'1',14),(90,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',14),(91,'descricaoModalidade',NULL,'',14),(92,'descricaoStatusPagamento',NULL,'',14),(93,'idPagamento',NULL,'3',15),(94,'idAluno',NULL,'1',15),(95,'idmodalidade',NULL,'1',15),(96,'valorModalidade',NULL,'30',15),(97,'valorCobrado',NULL,'',15),(98,'dataVencimento',NULL,'15/06/2017',15),(99,'dataPagamento',NULL,'',15),(100,'idstatusPagamento',NULL,'1',15),(101,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',15),(102,'descricaoModalidade',NULL,'',15),(103,'descricaoStatusPagamento',NULL,'',15),(104,'idPagamento',NULL,'4',16),(105,'idAluno',NULL,'1',16),(106,'idmodalidade',NULL,'1',16),(107,'valorModalidade',NULL,'30',16),(108,'valorCobrado',NULL,'',16),(109,'dataVencimento',NULL,'15/07/2017',16),(110,'dataPagamento',NULL,'',16),(111,'idstatusPagamento',NULL,'1',16),(112,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',16),(113,'descricaoModalidade',NULL,'',16),(114,'descricaoStatusPagamento',NULL,'',16),(115,'idPagamento',NULL,'5',17),(116,'idAluno',NULL,'1',17),(117,'idmodalidade',NULL,'1',17),(118,'valorModalidade',NULL,'30',17),(119,'valorCobrado',NULL,'',17),(120,'dataVencimento',NULL,'15/08/2017',17),(121,'dataPagamento',NULL,'',17),(122,'idstatusPagamento',NULL,'1',17),(123,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',17),(124,'descricaoModalidade',NULL,'',17),(125,'descricaoStatusPagamento',NULL,'',17),(126,'idPagamento',NULL,'6',18),(127,'idAluno',NULL,'1',18),(128,'idmodalidade',NULL,'1',18),(129,'valorModalidade',NULL,'30',18),(130,'valorCobrado',NULL,'',18),(131,'dataVencimento',NULL,'15/09/2017',18),(132,'dataPagamento',NULL,'',18),(133,'idstatusPagamento',NULL,'1',18),(134,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',18),(135,'descricaoModalidade',NULL,'',18),(136,'descricaoStatusPagamento',NULL,'',18),(137,'idPagamento',NULL,'7',19),(138,'idAluno',NULL,'1',19),(139,'idmodalidade',NULL,'1',19),(140,'valorModalidade',NULL,'30',19),(141,'valorCobrado',NULL,'',19),(142,'dataVencimento',NULL,'15/10/2017',19),(143,'dataPagamento',NULL,'',19),(144,'idstatusPagamento',NULL,'1',19),(145,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',19),(146,'descricaoModalidade',NULL,'',19),(147,'descricaoStatusPagamento',NULL,'',19),(148,'idPagamento',NULL,'8',20),(149,'idAluno',NULL,'1',20),(150,'idmodalidade',NULL,'1',20),(151,'valorModalidade',NULL,'30',20),(152,'valorCobrado',NULL,'',20),(153,'dataVencimento',NULL,'15/11/2017',20),(154,'dataPagamento',NULL,'',20),(155,'idstatusPagamento',NULL,'1',20),(156,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',20),(157,'descricaoModalidade',NULL,'',20),(158,'descricaoStatusPagamento',NULL,'',20),(159,'idPagamento',NULL,'9',21),(160,'idAluno',NULL,'1',21),(161,'idmodalidade',NULL,'1',21),(162,'valorModalidade',NULL,'30',21),(163,'valorCobrado',NULL,'',21),(164,'dataVencimento',NULL,'15/12/2017',21),(165,'dataPagamento',NULL,'',21),(166,'idstatusPagamento',NULL,'1',21),(167,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',21),(168,'descricaoModalidade',NULL,'',21),(169,'descricaoStatusPagamento',NULL,'',21),(170,'idPagamento',NULL,'10',22),(171,'idAluno',NULL,'1',22),(172,'idmodalidade',NULL,'1',22),(173,'valorModalidade',NULL,'30',22),(174,'valorCobrado',NULL,'',22),(175,'dataVencimento',NULL,'15/01/2018',22),(176,'dataPagamento',NULL,'',22),(177,'idstatusPagamento',NULL,'1',22),(178,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',22),(179,'descricaoModalidade',NULL,'',22),(180,'descricaoStatusPagamento',NULL,'',22),(181,'idPagamento',NULL,'11',23),(182,'idAluno',NULL,'1',23),(183,'idmodalidade',NULL,'1',23),(184,'valorModalidade',NULL,'30',23),(185,'valorCobrado',NULL,'',23),(186,'dataVencimento',NULL,'15/02/2018',23),(187,'dataPagamento',NULL,'',23),(188,'idstatusPagamento',NULL,'1',23),(189,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',23),(190,'descricaoModalidade',NULL,'',23),(191,'descricaoStatusPagamento',NULL,'',23),(192,'idPagamento',NULL,'12',24),(193,'idAluno',NULL,'1',24),(194,'idmodalidade',NULL,'1',24),(195,'valorModalidade',NULL,'30',24),(196,'valorCobrado',NULL,'',24),(197,'dataVencimento',NULL,'15/03/2018',24),(198,'dataPagamento',NULL,'',24),(199,'idstatusPagamento',NULL,'1',24),(200,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',24),(201,'descricaoModalidade',NULL,'',24),(202,'descricaoStatusPagamento',NULL,'',24),(203,'tel1','3332632920','(33)9913-21006',25),(204,'tel2','3332632920','(33)3263-2920',25),(205,'cpf','11014912644','110.149.126-44',25),(206,'idFichaAluno',NULL,'1',26),(207,'idAluno',NULL,'1',26),(208,'dataComposicao',NULL,'15/04/2017',26),(209,'nomeInstrutor',NULL,'ADMINISTRADOR',26),(210,'NOMEALUNO',NULL,'RUAN NICOLINI',26),(211,'dataVencimento',NULL,'15/04/2017',26),(212,'sexo','','M',27),(213,'numero','933','93',28);
/*!40000 ALTER TABLE `campolog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuracaounidade`
--

DROP TABLE IF EXISTS `configuracaounidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuracaounidade` (
  `idConfiguracaoUnidade` int(11) NOT NULL,
  `cnpj` varchar(50) NOT NULL,
  `razaoSocial` varchar(100) NOT NULL,
  `nomeFantasia` varchar(100) NOT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `vencimentoFicha` int(11) NOT NULL,
  `videoYoutube` tinyint(1) NOT NULL,
  `avaAnamnese` tinyint(1) NOT NULL,
  `avaFisica` tinyint(1) NOT NULL,
  `avaPostural` tinyint(1) NOT NULL,
  `avaDadosClinicos` tinyint(1) NOT NULL,
  PRIMARY KEY (`idConfiguracaoUnidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracaounidade`
--

LOCK TABLES `configuracaounidade` WRITE;
/*!40000 ALTER TABLE `configuracaounidade` DISABLE KEYS */;
INSERT INTO `configuracaounidade` (`idConfiguracaoUnidade`, `cnpj`, `razaoSocial`, `nomeFantasia`, `telefone`, `vencimentoFicha`, `videoYoutube`, `avaAnamnese`, `avaFisica`, `avaPostural`, `avaDadosClinicos`) VALUES (1,'10','academia','academia','33',3,1,1,0,0,0);
/*!40000 ALTER TABLE `configuracaounidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipamento`
--

DROP TABLE IF EXISTS `equipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipamento` (
  `idEquipamento` int(11) NOT NULL,
  `descricaoEquipamento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idEquipamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipamento`
--

LOCK TABLES `equipamento` WRITE;
/*!40000 ALTER TABLE `equipamento` DISABLE KEYS */;
INSERT INTO `equipamento` (`idEquipamento`, `descricaoEquipamento`) VALUES (1,'SUPINO RETO'),(2,'SUPINO INCLINADO'),(3,'SUPINO DECLINADO'),(5,'LEGPRESS'),(6,'VOADOR'),(7,'ESTEIRA'),(8,'BICICLETA'),(9,'BARRA FIXA'),(11,'Cadeira Extensora'),(12,'Mesa flexora'),(13,'Pulley'),(14,'DESENVOLVIMENTO'),(15,'BARRA RETA'),(16,'BARRA PARALELA'),(17,'BANCO'),(18,'COLCHONETE'),(19,'DUMBBELL'),(20,'HACK'),(21,'CROSSOVER'),(22,'CONVERGENTE'),(23,'TRICEPS APARELHO');
/*!40000 ALTER TABLE `equipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercicio`
--

DROP TABLE IF EXISTS `exercicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercicio` (
  `idExercicio` int(11) NOT NULL,
  `nomeExercicio` varchar(50) DEFAULT NULL,
  `idEquipamento` int(11) DEFAULT NULL,
  `idGrupoExercicio` int(11) NOT NULL,
  `tipoMedida` char(1) DEFAULT NULL,
  `idYoutube` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idExercicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercicio`
--

LOCK TABLES `exercicio` WRITE;
/*!40000 ALTER TABLE `exercicio` DISABLE KEYS */;
INSERT INTO `exercicio` (`idExercicio`, `nomeExercicio`, `idEquipamento`, `idGrupoExercicio`, `tipoMedida`, `idYoutube`) VALUES (3,'SUPINO RETO',1,1,'U','bQmKTKObDfU'),(4,'REMADA ALTA',3,10,'U',NULL),(5,'ROSCA ALTERNADA COM HALTERES',19,4,'U',NULL),(6,'ROSCA BÍCEPS POLIA BAIXA',13,4,'U',NULL),(7,'ROSCA DIRETA COM BARRA RETA',15,4,'U',NULL),(8,'ROSCA DIRETA COM BARRA W',16,4,'U',NULL),(9,'ROSCA DIRETA COM BARRA H',16,4,'U',NULL),(10,'TRICEPS BANCO',17,7,'U',NULL),(11,'DESENVOLVIMENTO COM HALTERES',19,9,'U',NULL),(12,'ELEVAÇÃO FRONTAL COM POLIA BAIXA',13,9,'U',NULL),(13,'PUXADA FRENTE ABERTA',13,10,'U',NULL),(14,'PUXADA FRENTE FECHADA',13,10,'U',NULL),(15,'PUXADA TRÁS',14,10,'U',NULL),(16,'REMADA UNILATERAL BANCO',19,10,'U',NULL),(17,'REMADA ALTA BARRA',15,11,'U',NULL),(18,'ENCOLHIMENTO FRENTE COM BARRA',15,11,'U',NULL),(19,'LEG PRESS 45',5,12,'U',NULL),(20,'HACK SQUAT',20,12,'U',NULL),(21,'CADEIRA EXTENSORA',11,12,'U',NULL),(22,'PANTURRILHA NO LEGPRESS',5,13,'U',NULL),(23,'MESA FLEXORA',12,14,'U',NULL),(24,'RETO SOLO',18,3,'U',NULL),(25,'RETO POLIA ALTA',13,3,'U',NULL),(26,'INFRA SOLO',18,3,'U',NULL),(27,'OBRIQUO EM PÉ POLIA ALTA',21,3,'U',NULL),(28,'DESENVOLVIMENTO CONVERGENTE',22,9,'U',NULL),(29,'SUPINO VERTICAL',2,1,'U',NULL),(30,'PULL OVER COM BARRA',15,1,'U',NULL),(31,'TRICEPS CORDA',13,7,'U',NULL),(32,'TRICEPS TESTA NO BANCO RETO',15,7,'U',NULL),(33,'TRICEPS APARELHO',23,7,'U',NULL),(34,'SUPINO INCLINADO',2,1,'U',NULL);
/*!40000 ALTER TABLE `exercicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fichaaluno`
--

DROP TABLE IF EXISTS `fichaaluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fichaaluno` (
  `idFichaAluno` int(11) NOT NULL,
  `idAluno` int(11) NOT NULL,
  `dataComposicao` date DEFAULT NULL,
  `dataVencimento` date DEFAULT NULL,
  `nomeInstrutor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idFichaAluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fichaaluno`
--

LOCK TABLES `fichaaluno` WRITE;
/*!40000 ALTER TABLE `fichaaluno` DISABLE KEYS */;
INSERT INTO `fichaaluno` (`idFichaAluno`, `idAluno`, `dataComposicao`, `dataVencimento`, `nomeInstrutor`) VALUES (1,1,'2017-04-15','2017-04-15','ADMINISTRADOR');
/*!40000 ALTER TABLE `fichaaluno` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER TRIGGER_seriefichaaluno_Delete 
AFTER DELETE ON fichaaluno for each row
BEGIN
	-- Delete fichapredefinidaserie
	DELETE FROM seriefichaaluno WHERE seriefichaaluno.idFichaaluno = old.idFichaAluno;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `fichapredefinida`
--

DROP TABLE IF EXISTS `fichapredefinida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fichapredefinida` (
  `idFichaPreDefinida` int(11) NOT NULL,
  `descricaoFicha` varchar(50) DEFAULT NULL,
  `dataComposicao` date DEFAULT NULL,
  PRIMARY KEY (`idFichaPreDefinida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fichapredefinida`
--

LOCK TABLES `fichapredefinida` WRITE;
/*!40000 ALTER TABLE `fichapredefinida` DISABLE KEYS */;
/*!40000 ALTER TABLE `fichapredefinida` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER TRIGGER_fichaPreDefinidaSerie_Delete 
AFTER DELETE ON fichapredefinida for each row
BEGIN
	-- Delete fichapredefinidaserie
	DELETE FROM fichapredefinidaserie WHERE fichapredefinidaserie.idFichaPreDefinida = old.idFichaPreDefinida;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `fichapredefinidaserie`
--

DROP TABLE IF EXISTS `fichapredefinidaserie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fichapredefinidaserie` (
  `idFichaPreDefinida` int(11) NOT NULL,
  `idTreino` int(11) NOT NULL,
  `idExercicio` int(11) NOT NULL,
  `qtdSerie` int(11) DEFAULT NULL,
  `qtdRepeticao` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFichaPreDefinida`,`idTreino`,`idExercicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fichapredefinidaserie`
--

LOCK TABLES `fichapredefinidaserie` WRITE;
/*!40000 ALTER TABLE `fichapredefinidaserie` DISABLE KEYS */;
/*!40000 ALTER TABLE `fichapredefinidaserie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupoexercicio`
--

DROP TABLE IF EXISTS `grupoexercicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupoexercicio` (
  `idGrupoExercicio` int(11) NOT NULL,
  `descricaoGrupoExercicio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idGrupoExercicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupoexercicio`
--

LOCK TABLES `grupoexercicio` WRITE;
/*!40000 ALTER TABLE `grupoexercicio` DISABLE KEYS */;
INSERT INTO `grupoexercicio` (`idGrupoExercicio`, `descricaoGrupoExercicio`) VALUES (1,'PEITORAIS'),(2,'COSTAS'),(3,'ABDOMEN'),(4,'BICEPS'),(5,'GLÚTEOS'),(6,'CARDIO VASCULAR'),(7,'TRICEPS'),(8,'ANTEBRRAÇO'),(9,'DELTOIDE'),(10,'DORSAIS'),(11,'TRAPÉZIO'),(12,'QUADRÍCEPS'),(13,'PANTURRILHA'),(14,'ISQUIOTIBIAIS');
/*!40000 ALTER TABLE `grupoexercicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interface`
--

DROP TABLE IF EXISTS `interface`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interface` (
  `idInterface` int(11) NOT NULL,
  `idModulo` int(11) NOT NULL,
  `descricaoInterface` varchar(50) NOT NULL,
  `TELA` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`idInterface`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interface`
--

LOCK TABLES `interface` WRITE;
/*!40000 ALTER TABLE `interface` DISABLE KEYS */;
INSERT INTO `interface` (`idInterface`, `idModulo`, `descricaoInterface`, `TELA`) VALUES (1,1,'ALUNO','01001'),(2,1,'PAGAMENTO','01002'),(3,1,'EQUIPAMENTO','01003'),(4,1,'GRUPOEXERCICIO','01004'),(5,1,'FICHAPREDEFINIDA','01005'),(6,1,'EXERCICIO','01006'),(7,1,'PATOLOGIA','01007'),(8,1,'USUARIO','01008'),(9,1,'BACKUP','01009'),(12,1,'MODALIDADE','01012'),(14,1,'FICHAALUNO','01014'),(16,1,'MODALIDADE','01016');
/*!40000 ALTER TABLE `interface` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logsistema`
--

DROP TABLE IF EXISTS `logsistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logsistema` (
  `idlogSistema` int(11) NOT NULL,
  `tabelaBanco` varchar(50) DEFAULT NULL,
  `dataLog` date DEFAULT NULL,
  `horaLog` time DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `nomeUsuario` varchar(50) DEFAULT NULL,
  `descricaoInterface` varchar(50) DEFAULT NULL,
  `idPkRegistro` int(11) DEFAULT NULL,
  `idPkRegistro2` int(11) DEFAULT NULL,
  `tipoCRUD` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idlogSistema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logsistema`
--

LOCK TABLES `logsistema` WRITE;
/*!40000 ALTER TABLE `logsistema` DISABLE KEYS */;
INSERT INTO `logsistema` (`idlogSistema`, `tabelaBanco`, `dataLog`, `horaLog`, `idUsuario`, `nomeUsuario`, `descricaoInterface`, `idPkRegistro`, `idPkRegistro2`, `tipoCRUD`) VALUES (1,'exercicio','2017-04-15','14:53:16',1,'ADMINISTRADOR','F01006',3,NULL,'modify'),(2,'exercicio','2017-04-15','14:58:37',1,'ADMINISTRADOR','F01006',3,NULL,'modify'),(3,'usuario','2017-04-15','16:12:54',1,'ADMINISTRADOR','F01008',2,NULL,'insert'),(4,'usuario','2017-04-15','16:13:00',1,'ADMINISTRADOR','F01008',1,NULL,'modify'),(5,'patologia','2017-04-15','16:15:16',1,'ADMINISTRADOR','F01007',1,NULL,'insert'),(6,'patologia','2017-04-15','16:15:25',1,'ADMINISTRADOR','F01007',2,NULL,'insert'),(7,'patologia','2017-04-15','16:16:02',1,'ADMINISTRADOR','F01007',3,NULL,'insert'),(8,'patologia','2017-04-15','16:16:14',1,'ADMINISTRADOR','F01007',4,NULL,'insert'),(9,'patologia','2017-04-15','16:16:23',1,'ADMINISTRADOR','F01007',5,NULL,'insert'),(10,'ANAMNESE','2017-04-15','16:16:39',1,'ADMINISTRADOR','F01016',1,NULL,'insert'),(11,'ALUNO','2017-04-15','16:19:00',1,'ADMINISTRADOR','F01001',1,NULL,'insert'),(12,'ALUNOMODALIDADE','2017-04-15','16:19:06',1,'ADMINISTRADOR','F01001',1,1,'insert'),(13,'pagamento','2017-04-15','16:19:06',1,'ADMINISTRADOR','F01001',1,NULL,'insert'),(14,'pagamento','2017-04-15','16:19:07',1,'ADMINISTRADOR','F01001',2,NULL,'insert'),(15,'pagamento','2017-04-15','16:19:07',1,'ADMINISTRADOR','F01001',3,NULL,'insert'),(16,'pagamento','2017-04-15','16:19:07',1,'ADMINISTRADOR','F01001',4,NULL,'insert'),(17,'pagamento','2017-04-15','16:19:07',1,'ADMINISTRADOR','F01001',5,NULL,'insert'),(18,'pagamento','2017-04-15','16:19:07',1,'ADMINISTRADOR','F01001',6,NULL,'insert'),(19,'pagamento','2017-04-15','16:19:07',1,'ADMINISTRADOR','F01001',7,NULL,'insert'),(20,'pagamento','2017-04-15','16:19:07',1,'ADMINISTRADOR','F01001',8,NULL,'insert'),(21,'pagamento','2017-04-15','16:19:07',1,'ADMINISTRADOR','F01001',9,NULL,'insert'),(22,'pagamento','2017-04-15','16:19:08',1,'ADMINISTRADOR','F01001',10,NULL,'insert'),(23,'pagamento','2017-04-15','16:19:08',1,'ADMINISTRADOR','F01001',11,NULL,'insert'),(24,'pagamento','2017-04-15','16:19:08',1,'ADMINISTRADOR','F01001',12,NULL,'insert'),(25,'ALUNO','2017-04-15','16:25:41',1,'ADMINISTRADOR','F01001',1,NULL,'modify'),(26,'FICHAALUNO','2017-04-15','16:42:40',1,'ADMINISTRADOR','F01014',1,NULL,'insert'),(27,'ALUNO','2017-04-15','18:01:07',1,'ADMINISTRADOR','F01001',1,NULL,'modify'),(28,'ALUNO','2017-04-15','18:24:36',1,'ADMINISTRADOR','F01001',1,NULL,'modify');
/*!40000 ALTER TABLE `logsistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalidade`
--

DROP TABLE IF EXISTS `modalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalidade` (
  `idModalidade` int(11) NOT NULL,
  `descricaoModalidade` varchar(50) NOT NULL,
  `valor` float DEFAULT NULL,
  PRIMARY KEY (`idModalidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidade`
--

LOCK TABLES `modalidade` WRITE;
/*!40000 ALTER TABLE `modalidade` DISABLE KEYS */;
INSERT INTO `modalidade` (`idModalidade`, `descricaoModalidade`, `valor`) VALUES (1,'MUSCULAÇÃO',30);
/*!40000 ALTER TABLE `modalidade` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER TRIGGER_Modalidade_Update 
AFTER UPDATE ON Modalidade for each row
BEGIN
	
    IF(NEW.valor <> OLD.valor)THEN
		--
        UPDATE PAGAMENTO SET pagamento.VALORMODALIDADE = NEW.valor WHERE PAGAMENTO.IDMODALIDADE = OLD.IDMODALIDADE AND PAGAMENTO.IDSTATUSPAGAMENTO = 1 AND CURDATE() <= PAGAMENTO.DATAVENCIMENTO;
    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `modulo`
--

DROP TABLE IF EXISTS `modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulo` (
  `idModulo` int(11) NOT NULL,
  `descricaoModulo` varchar(50) NOT NULL,
  PRIMARY KEY (`idModulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulo`
--

LOCK TABLES `modulo` WRITE;
/*!40000 ALTER TABLE `modulo` DISABLE KEYS */;
INSERT INTO `modulo` (`idModulo`, `descricaoModulo`) VALUES (1,'HOME');
/*!40000 ALTER TABLE `modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objetivo`
--

DROP TABLE IF EXISTS `objetivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objetivo` (
  `idObjetivo` int(11) NOT NULL,
  `descricaoObjetivo` varchar(50) NOT NULL,
  PRIMARY KEY (`idObjetivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objetivo`
--

LOCK TABLES `objetivo` WRITE;
/*!40000 ALTER TABLE `objetivo` DISABLE KEYS */;
INSERT INTO `objetivo` (`idObjetivo`, `descricaoObjetivo`) VALUES (1,'PERDA DE PESO'),(2,'GANHO DE MASSA MUSCULAR'),(3,'DEFINIÇÃO'),(4,'CORREÇÃO E REABILITAÇÃO'),(5,'PREPARAÇÃO FÍSICA');
/*!40000 ALTER TABLE `objetivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagamento` (
  `idPagamento` int(11) NOT NULL,
  `idAluno` int(11) NOT NULL,
  `idmodalidade` int(11) NOT NULL,
  `valorModalidade` float DEFAULT NULL,
  `valorCobrado` float DEFAULT NULL,
  `dataVencimento` date DEFAULT NULL,
  `dataPagamento` date DEFAULT NULL,
  `idstatusPagamento` int(11) DEFAULT NULL,
  `LOGUsuarioResponsavel` varchar(200) NOT NULL,
  PRIMARY KEY (`idPagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` (`idPagamento`, `idAluno`, `idmodalidade`, `valorModalidade`, `valorCobrado`, `dataVencimento`, `dataPagamento`, `idstatusPagamento`, `LOGUsuarioResponsavel`) VALUES (1,1,1,30,NULL,'2017-04-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(2,1,1,30,NULL,'2017-05-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(3,1,1,30,NULL,'2017-06-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(4,1,1,30,NULL,'2017-07-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(5,1,1,30,NULL,'2017-08-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(6,1,1,30,NULL,'2017-09-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(7,1,1,30,NULL,'2017-10-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(8,1,1,30,NULL,'2017-11-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(9,1,1,30,NULL,'2017-12-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(10,1,1,30,NULL,'2018-01-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(11,1,1,30,NULL,'2018-02-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(12,1,1,30,NULL,'2018-03-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017');
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametros`
--

DROP TABLE IF EXISTS `parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parametros` (
  `parametro` varchar(20) NOT NULL DEFAULT '',
  `descricao` varchar(45) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  PRIMARY KEY (`parametro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametros`
--

LOCK TABLES `parametros` WRITE;
/*!40000 ALTER TABLE `parametros` DISABLE KEYS */;
INSERT INTO `parametros` (`parametro`, `descricao`, `valor`) VALUES ('aluno',NULL,9),('AlunoPatologia',NULL,1),('Anamnese',NULL,2),('campolog',NULL,214),('equipamento',NULL,24),('exercicio',NULL,35),('ficha',NULL,1),('fichaPreDefinida',NULL,1),('grupoexercicio',NULL,15),('idAlunoModalidade',NULL,1),('idFichaAluno',NULL,2),('logsistema',NULL,29),('modalidade',NULL,2),('pagamento',NULL,13),('patologia',NULL,6),('serie',NULL,1),('tipousuario',NULL,5),('usuario',NULL,3);
/*!40000 ALTER TABLE `parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patologia`
--

DROP TABLE IF EXISTS `patologia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patologia` (
  `idpatologia` int(11) NOT NULL,
  `nomePatologia` varchar(50) NOT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idpatologia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patologia`
--

LOCK TABLES `patologia` WRITE;
/*!40000 ALTER TABLE `patologia` DISABLE KEYS */;
INSERT INTO `patologia` (`idpatologia`, `nomePatologia`, `observacao`) VALUES (1,'DOR NO JOELHO',NULL),(2,'DIABETES',NULL),(3,'HIPERTENSÃO',NULL),(4,'LESÃO FEMO',NULL),(5,'DOR LOMBAR',NULL);
/*!40000 ALTER TABLE `patologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguranca`
--

DROP TABLE IF EXISTS `seguranca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguranca` (
  `idSeguranca` int(11) NOT NULL,
  `idInterface` int(11) NOT NULL,
  `idTipoUsuario` int(11) NOT NULL,
  `cadastrar` tinyint(1) DEFAULT NULL,
  `alterar` tinyint(1) DEFAULT NULL,
  `consultar` tinyint(1) DEFAULT NULL,
  `excluir` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idSeguranca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguranca`
--

LOCK TABLES `seguranca` WRITE;
/*!40000 ALTER TABLE `seguranca` DISABLE KEYS */;
INSERT INTO `seguranca` (`idSeguranca`, `idInterface`, `idTipoUsuario`, `cadastrar`, `alterar`, `consultar`, `excluir`) VALUES (1,1,1,1,1,1,1),(2,1,2,0,1,1,0),(3,1,3,1,1,1,1),(4,1,4,0,1,1,0),(5,2,1,0,1,1,0),(6,2,2,0,0,0,0),(7,2,3,0,0,0,0),(8,2,4,0,0,0,0),(9,3,1,1,1,1,1),(10,3,2,0,0,1,0),(11,3,3,0,0,0,0),(12,3,4,0,0,0,0),(13,4,1,1,1,1,1),(14,4,2,0,0,1,0),(15,4,3,0,0,0,0),(16,4,4,0,0,0,0),(17,5,1,1,1,1,1),(18,5,2,1,1,1,0),(19,5,3,0,0,0,0),(20,5,4,0,0,0,0),(21,6,1,1,1,1,1),(22,6,2,0,0,1,0),(23,6,3,0,0,0,0),(24,6,4,0,0,0,0),(25,7,1,1,1,1,1),(26,7,2,0,0,0,0),(27,7,3,0,0,0,0),(28,7,4,1,1,1,0),(29,8,1,1,1,1,1),(30,8,2,0,0,0,0),(31,8,3,0,0,0,0),(32,8,4,0,0,0,0),(33,12,1,1,1,1,1),(34,12,2,0,0,0,0),(35,12,3,0,0,0,0),(36,12,4,0,0,0,0),(37,14,1,1,1,1,1),(38,14,2,1,1,1,1),(39,14,3,0,0,1,0),(40,14,4,0,0,0,0),(41,16,1,1,1,1,1),(42,16,2,0,0,1,0),(43,16,3,0,0,0,0),(44,16,4,1,1,1,1);
/*!40000 ALTER TABLE `seguranca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seriefichaaluno`
--

DROP TABLE IF EXISTS `seriefichaaluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seriefichaaluno` (
  `idFichaAluno` int(11) NOT NULL,
  `idTreino` int(11) NOT NULL,
  `idExercicio` int(11) NOT NULL,
  `qtdSerie` int(11) DEFAULT NULL,
  `qtdRepeticao` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFichaAluno`,`idTreino`,`idExercicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seriefichaaluno`
--

LOCK TABLES `seriefichaaluno` WRITE;
/*!40000 ALTER TABLE `seriefichaaluno` DISABLE KEYS */;
INSERT INTO `seriefichaaluno` (`idFichaAluno`, `idTreino`, `idExercicio`, `qtdSerie`, `qtdRepeticao`) VALUES (1,1,3,3,15),(1,1,10,3,15),(1,1,29,3,20),(1,1,30,3,20),(1,1,31,4,10),(1,1,32,3,12),(1,1,33,3,15),(1,1,34,4,10),(1,2,11,3,10),(1,2,12,3,12),(1,2,17,3,12),(1,2,18,3,15),(1,2,19,4,10),(1,2,20,4,10),(1,2,21,3,20),(1,2,22,3,20),(1,2,23,3,20),(1,2,24,4,20),(1,2,25,4,12),(1,2,26,3,20),(1,2,27,4,15),(1,2,28,4,8),(1,3,5,3,15),(1,3,6,3,15),(1,3,7,4,8),(1,3,8,4,8),(1,3,13,4,10),(1,3,14,4,10),(1,3,15,3,12),(1,3,16,3,12);
/*!40000 ALTER TABLE `seriefichaaluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuspagamento`
--

DROP TABLE IF EXISTS `statuspagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuspagamento` (
  `idStatusPagamento` int(11) NOT NULL,
  `descricaoStatusPagamento` varchar(50) NOT NULL,
  PRIMARY KEY (`idStatusPagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuspagamento`
--

LOCK TABLES `statuspagamento` WRITE;
/*!40000 ALTER TABLE `statuspagamento` DISABLE KEYS */;
INSERT INTO `statuspagamento` (`idStatusPagamento`, `descricaoStatusPagamento`) VALUES (1,'EM ABERTO'),(2,'PAGO'),(3,'ISENTO');
/*!40000 ALTER TABLE `statuspagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipousuario`
--

DROP TABLE IF EXISTS `tipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipousuario` (
  `idTipoUsuario` int(11) NOT NULL,
  `descricaoTipoUsuario` varchar(50) NOT NULL,
  PRIMARY KEY (`idTipoUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipousuario`
--

LOCK TABLES `tipousuario` WRITE;
/*!40000 ALTER TABLE `tipousuario` DISABLE KEYS */;
INSERT INTO `tipousuario` (`idTipoUsuario`, `descricaoTipoUsuario`) VALUES (1,'ADMINISTRADOR'),(2,'INSTRUTOR'),(3,'ATENDENTE'),(4,'AVALIADOR');
/*!40000 ALTER TABLE `tipousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treino`
--

DROP TABLE IF EXISTS `treino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treino` (
  `idTreino` int(11) NOT NULL,
  `descricaoTreino` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idTreino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treino`
--

LOCK TABLES `treino` WRITE;
/*!40000 ALTER TABLE `treino` DISABLE KEYS */;
INSERT INTO `treino` (`idTreino`, `descricaoTreino`) VALUES (1,'A'),(2,'B'),(3,'C'),(4,'D'),(5,'E');
/*!40000 ALTER TABLE `treino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nomeUsuario` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `senha` varchar(150) NOT NULL,
  `administrador` tinyint(1) DEFAULT NULL,
  `atendente` tinyint(1) DEFAULT NULL,
  `instrutor` tinyint(1) DEFAULT NULL,
  `avaliador` tinyint(1) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`idusuario`, `nomeUsuario`, `username`, `senha`, `administrador`, `atendente`, `instrutor`, `avaliador`, `ativo`) VALUES (1,'ADMINISTRADOR','admin','21232F297A57A5A743894A0E4A801FC3',1,0,1,0,1),(2,'ATENDENTE','atendente','D4A1D4CF923C881FC54B2F6E13FED99B',0,1,0,0,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gym'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `CHAMA_PROCEDURE_GERA_MENSALIDADE` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8 */ ;;
/*!50003 SET character_set_results = utf8 */ ;;
/*!50003 SET collation_connection  = utf8_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `CHAMA_PROCEDURE_GERA_MENSALIDADE` ON SCHEDULE EVERY 1 DAY STARTS '2017-02-27 10:20:00' ON COMPLETION PRESERVE ENABLE DO CALL geraMensalidade */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `renovaMatricula` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8 */ ;;
/*!50003 SET character_set_results = utf8 */ ;;
/*!50003 SET collation_connection  = utf8_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `renovaMatricula` ON SCHEDULE EVERY 3 HOUR STARTS '2017-03-01 09:40:00' ON COMPLETION PRESERVE ENABLE DO CALL geraMensalidade */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'gym'
--
/*!50003 DROP PROCEDURE IF EXISTS `GeraMensalidade` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GeraMensalidade`()
BEGIN
	-- Declaração variaveis
    DECLARE search_condition, idPagam, idA, idM INT;
    DECLARE dataI, dataV date;
    DECLARE valorMensalidade FLOAT;
    DECLARE done boolean;
    DECLARE log varchar(50);

	-- DECLARAÇÃO DO CURSOR
	-- SELECIONA TODAS AS MATRICULAS E A MENSALIDADE( TABELA ALUNOMODALIDADE ) COM A DATA DE VENCIMENTO MAIS DISTANTE
	DECLARE CUR_X CURSOR FOR (
		select am.idAluno, am.idModalidade, am.dataInscrição, P.dataVencimento from alunomodalidade am 
		INNER join pagamento p on p.idAluno = am.idAluno and p.idModalidade = am.idmodalidade 
		where p.datavencimento = (SELECT max(dataVencimento) FROM PAGAMENTO PA WHERE PA.idAluno= am.idAluno AND PA.idmodalidade = am.idmodalidade)
	);
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    -- ABRE CURSOR
    OPEN cur_X;
    
    set log = ('Gerado Automaticamente.');
    
    -- LAÇO DE REPETIÇÃO
    read_loop: LOOP
			-- Atribuição dos valores na ordem de retorno do select
			fetch CUR_X INTO idA, idM, dataI, dataV;
            
			-- CONDIÇÃO DE PARADA
			IF done THEN
			  LEAVE read_loop;
			END IF;
            
            -- VERIFICA SE A DATA ATUAL ESTA A MENOS DE UM MÊS DA DATA DE VENCIMENTO DA ULTIMA MENSALIDADE GERADA
            if(curdate() > DATE_ADD(datav, INTERVAL -1 MONTH))
            THEN
					SET search_condition = 0;
                    
					-- SE SIM, CRIA MAIS 12 MENSALIDADES
					WHILE (search_condition < 12) DO
							
                            SELECT valor INTO idPagam from parametros where parametro = 'pagamento';
                            SELECT valor INTO valorMensalidade from modalidade where idmodalidade = idM;
                            
							INSERT INTO pagamento (idPagamento, idAluno,idmodalidade,valorModalidade,datavencimento, 
                            idstatusPagamento, LOGUsuarioResponsavel) 
                            VALUES (
                            idPagam, idA, idM, valorMensalidade, 
                            DATE_ADD(dataV, INTERVAL (search_condition+1) MONTH), 1, 
                            log
                            );
                            
                            SET idPagam = idPagam + 1;
                            update parametros SET valor = idPagam where parametro = 'pagamento';
							SET search_condition = search_condition + 1;
					END WHILE;
            END IF;
    
    END LOOP;
    
    

	-- FECHA CURSOR
	CLOSE CUR_X;
    
    
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

-- Dump completed on 2017-04-15 18:26:07
