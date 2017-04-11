-- MySQL dump 10.13  Distrib 5.6.26, for Win64 (x86_64)
--
-- Host: 192.168.1.200    Database: gym
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
  `peso` float DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `frequenciaAtividadeFisica` int(11) DEFAULT NULL,
  `qtdRefeicoesDia` int(11) DEFAULT NULL,
  `qtdHorasSono` int(11) DEFAULT NULL,
  `suplementacao` tinyint(1) DEFAULT NULL,
  `dieta` tinyint(1) DEFAULT NULL,
  `fumante` tinyint(1) DEFAULT NULL,
  `consomeBebidaAlcoolica` tinyint(1) DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `cpf` varchar(50) DEFAULT NULL,
  `informacaoAdicional` varchar(500) DEFAULT NULL,
  `idObjetivo` int(11) DEFAULT NULL,
  `dataComposicaoFicha` date DEFAULT NULL,
  `idInstrutorFicha` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` (`idAluno`, `nomeAluno`, `idade`, `dataNascimento`, `email`, `sexo`, `cidade`, `bairro`, `rua`, `numero`, `cep`, `tel1`, `tel2`, `nomeResponsavel`, `parentescoResponsavel`, `telResponsavel`, `peso`, `altura`, `frequenciaAtividadeFisica`, `qtdRefeicoesDia`, `qtdHorasSono`, `suplementacao`, `dieta`, `fumante`, `consomeBebidaAlcoolica`, `dataCadastro`, `ativo`, `cpf`, `informacaoAdicional`, `idObjetivo`, `dataComposicaoFicha`, `idInstrutorFicha`) VALUES (4,'RUAN VELASQUEZ NICOLINI',25,'1991-08-10','ruan_03@hotmail.com','M','RESPLENDOR','NORTE','EDUARDO MENEGUSSI',93,35230000,'(33)9913-21006','(33)3263-1851','WELLINGTON NICOLINI DA SILVAA','PAI','(33)3263-2920',63,1.73,NULL,6,7,1,1,0,0,NULL,NULL,'110.149.126-44','TESTE. AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRrrr',3,'2017-02-14',1),(5,'JULIA T.',25,'1991-08-10','juliat@gmail.com','F','RESPLENDOR','NORTE','RUA 3',103,35230000,'(33)9881-35792','(33)3263- 5566',NULL,NULL,NULL,63,1.73,NULL,6,8,1,0,0,0,NULL,NULL,'318.945.367-54','Nada a declarar',3,'2017-02-20',NULL),(7,'JOÃO JOSÉ',NULL,NULL,'wellingtonnicolini@gmail.com','M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'LETÍCIA FERREIRA',NULL,NULL,NULL,'F',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'2017-02-23',1),(47,'EMY',17,'1999-07-13','emillynicolini@gmail.com','F','RESPLENDOR','NORTE','EDUARDO MENEGUSSI',93,35230000,'(33)9844-82404','(33)3263-2920','DINALVA VELASQUEZ GONÇALVES DA SILVA','MÃE','(33)3263-2920',54,1.58,NULL,4,5,0,0,0,0,NULL,NULL,'743.432.814-26',NULL,2,'2017-02-26',1);
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
	-- Delete AlunoPatologia
	DELETE FROM alunoPatologia WHERE alunoPatologia.idAluno = old.idAluno;
    
    -- Delete AlunoModalidade
	DELETE FROM alunoModalidade WHERE alunomodalidade.idAluno = old.idAluno;
    
    -- Delete Serie
	DELETE FROM serie WHERE serie.idAluno = old.idAluno;
    
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
INSERT INTO `alunomodalidade` (`idAluno`, `idmodalidade`, `dataInscrição`, `diavencimento`) VALUES (4,1,'2017-02-23',23),(5,1,'2017-02-11',11),(7,2,'2017-02-11',11),(47,1,'2017-02-26',26);
/*!40000 ALTER TABLE `alunomodalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alunopatologia`
--

DROP TABLE IF EXISTS `alunopatologia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alunopatologia` (
  `idAluno` int(11) NOT NULL,
  `idPatologia` int(11) NOT NULL,
  `observacaoMedica` varchar(700) DEFAULT NULL,
  PRIMARY KEY (`idAluno`,`idPatologia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunopatologia`
--

LOCK TABLES `alunopatologia` WRITE;
/*!40000 ALTER TABLE `alunopatologia` DISABLE KEYS */;
INSERT INTO `alunopatologia` (`idAluno`, `idPatologia`, `observacaoMedica`) VALUES (4,1,'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'),(5,1,'Ainda não consultou um especialista.'),(47,2,'ESCOLIOSe = Desvio no formato de \'S\'.');
/*!40000 ALTER TABLE `alunopatologia` ENABLE KEYS */;
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
  PRIMARY KEY (`idExercicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercicio`
--

LOCK TABLES `exercicio` WRITE;
/*!40000 ALTER TABLE `exercicio` DISABLE KEYS */;
INSERT INTO `exercicio` (`idExercicio`, `nomeExercicio`, `idEquipamento`, `idGrupoExercicio`) VALUES (3,'SUPINO RETO',1,1),(4,'REMADA ALTA',3,10),(5,'ROSCA ALTERNADA COM HALTERES',19,4),(6,'ROSCA BÍCEPS POLIA BAIXA',13,4),(7,'ROSCA DIRETA COM BARRA RETA',15,4),(8,'ROSCA DIRETA COM BARRA W',16,4),(9,'ROSCA DIRETA COM BARRA H',16,4),(10,'TRICEPS BANCO',17,7),(11,'DESENVOLVIMENTO COM HALTERES',19,9),(12,'ELEVAÇÃO FRONTAL COM POLIA BAIXA',13,9),(13,'PUXADA FRENTE ABERTA',13,10),(14,'PUXADA FRENTE FECHADA',13,10),(15,'PUXADA TRÁS',14,10),(16,'REMADA UNILATERAL BANCO',19,10),(17,'REMADA ALTA BARRA',15,11),(18,'ENCOLHIMENTO FRENTE COM BARRA',15,11),(19,'LEG PRESS 45',5,12),(20,'HACK SQUAT',20,12),(21,'CADEIRA EXTENSORA',11,12),(22,'PANTURRILHA NO LEGPRESS',5,13),(23,'MESA FLEXORA',12,14),(24,'RETO SOLO',18,3),(25,'RETO POLIA ALTA',13,3),(26,'INFRA SOLO',18,3),(27,'OBRIQUO EM PÉ POLIA ALTA',21,3),(28,'DESENVOLVIMENTO CONVERGENTE',22,9),(29,'SUPINO VERTICAL',2,1),(30,'PULL OVER COM BARRA',15,1),(31,'TRICEPS CORDA',13,7),(32,'TRICEPS TESTA NO BANCO RETO',15,7),(33,'TRICEPS APARELHO',23,7),(34,'SUPINO INCLINADO',2,1);
/*!40000 ALTER TABLE `exercicio` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `fichapredefinida` (`idFichaPreDefinida`, `descricaoFicha`, `dataComposicao`) VALUES (1,'FICHA INICIANTE','2017-02-17'),(2,'FICHA INTERMEDIÁRIO',NULL),(3,'FICHA AVANÇADO',NULL);
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
INSERT INTO `fichapredefinidaserie` (`idFichaPreDefinida`, `idTreino`, `idExercicio`, `qtdSerie`, `qtdRepeticao`) VALUES (1,1,3,3,15),(1,1,5,3,10),(1,1,6,3,12),(1,1,7,3,10),(1,1,8,3,10),(1,1,9,3,10),(1,1,29,3,12),(1,1,30,3,15),(1,1,34,3,12);
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
INSERT INTO `interface` (`idInterface`, `idModulo`, `descricaoInterface`, `TELA`) VALUES (1,1,'ALUNO','01001'),(2,1,'PAGAMENTO','01002'),(3,1,'EQUIPAMENTO','01003'),(4,1,'GRUPOEXERCICIO','01004'),(5,1,'FICHAPREDEFINIDA','01005'),(6,1,'EXERCICIO','01006'),(7,1,'PATOLOGIA','01007'),(8,1,'USUARIO','01008'),(9,1,'BACKUP','01009'),(12,1,'MODALIDADE','01012');
/*!40000 ALTER TABLE `interface` ENABLE KEYS */;
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
INSERT INTO `modalidade` (`idModalidade`, `descricaoModalidade`, `valor`) VALUES (1,'MUSCULAÇÃO',30),(2,'NATAÇÃO',65);
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
INSERT INTO `pagamento` (`idPagamento`, `idAluno`, `idmodalidade`, `valorModalidade`, `valorCobrado`, `dataVencimento`, `dataPagamento`, `idstatusPagamento`, `LOGUsuarioResponsavel`) VALUES (94,4,1,40,40,'2017-02-10','2017-02-27',2,'PAGAMENTO RECEBIDO POR: ADMINISTRADOR EM 27/02/2017'),(154,5,1,100,100,'2017-02-11','2017-02-20',2,'PAGAMENTO RECEBIDO POR: ADMINISTRADOR EM 20/02/2017'),(166,7,2,65,NULL,'2017-02-11',NULL,1,'Pagamento cancelado por ADMINISTRADOR em 22/02/2017'),(443,5,1,30,NULL,'2017-03-11',NULL,1,'Pagamento cancelado por ADMINISTRADOR em 28/02/2017'),(444,5,1,30,NULL,'2017-04-11',NULL,1,'Gerado Automaticamente.'),(445,5,1,30,NULL,'2017-05-11',NULL,1,'Gerado Automaticamente.'),(446,5,1,30,NULL,'2017-06-11',NULL,1,'Gerado Automaticamente.'),(447,5,1,30,NULL,'2017-07-11',NULL,1,'Gerado Automaticamente.'),(448,5,1,30,NULL,'2017-08-11',NULL,1,'Gerado Automaticamente.'),(449,5,1,30,NULL,'2017-09-11',NULL,1,'Gerado Automaticamente.'),(450,5,1,30,NULL,'2017-10-11',NULL,1,'Gerado Automaticamente.'),(451,5,1,30,NULL,'2017-11-11',NULL,1,'Gerado Automaticamente.'),(452,5,1,30,NULL,'2017-12-11',NULL,1,'Gerado Automaticamente.'),(453,5,1,30,NULL,'2018-01-11',NULL,1,'Gerado Automaticamente.'),(454,5,1,30,NULL,'2018-02-11',NULL,1,'Gerado Automaticamente.'),(455,7,2,65,NULL,'2017-03-11',NULL,1,'Gerado Automaticamente.'),(456,7,2,65,NULL,'2017-04-11',NULL,1,'Gerado Automaticamente.'),(457,7,2,65,NULL,'2017-05-11',NULL,1,'Gerado Automaticamente.'),(458,7,2,65,NULL,'2017-06-11',NULL,1,'Gerado Automaticamente.'),(459,7,2,65,NULL,'2017-07-11',NULL,1,'Gerado Automaticamente.'),(460,7,2,65,NULL,'2017-08-11',NULL,1,'Gerado Automaticamente.'),(461,7,2,65,NULL,'2017-09-11',NULL,1,'Gerado Automaticamente.'),(462,7,2,65,NULL,'2017-10-11',NULL,1,'Gerado Automaticamente.'),(463,7,2,65,NULL,'2017-11-11',NULL,1,'Gerado Automaticamente.'),(464,7,2,65,NULL,'2017-12-11',NULL,1,'Gerado Automaticamente.'),(465,7,2,65,NULL,'2018-01-11',NULL,1,'Gerado Automaticamente.'),(466,7,2,65,NULL,'2018-02-11',NULL,1,'Gerado Automaticamente.'),(491,47,1,20,20,'2017-02-26','2017-02-28',2,'PAGAMENTO RECEBIDO POR: ADMINISTRADOR EM 28/02/2017'),(492,47,1,30,NULL,'2017-03-26',NULL,1,'GERADO POR: ADMINISTRADOR em 26/02/2017'),(493,47,1,30,NULL,'2017-04-26',NULL,1,'GERADO POR: ADMINISTRADOR em 26/02/2017'),(494,47,1,30,NULL,'2017-05-26',NULL,1,'GERADO POR: ADMINISTRADOR em 26/02/2017'),(495,47,1,30,NULL,'2017-06-26',NULL,1,'GERADO POR: ADMINISTRADOR em 26/02/2017'),(496,47,1,30,NULL,'2017-07-26',NULL,1,'GERADO POR: ADMINISTRADOR em 26/02/2017'),(497,47,1,30,NULL,'2017-08-26',NULL,1,'GERADO POR: ADMINISTRADOR em 26/02/2017'),(498,47,1,30,NULL,'2017-09-26',NULL,1,'GERADO POR: ADMINISTRADOR em 26/02/2017'),(499,47,1,30,NULL,'2017-10-26',NULL,1,'GERADO POR: ADMINISTRADOR em 26/02/2017'),(500,47,1,30,NULL,'2017-11-26',NULL,1,'GERADO POR: ADMINISTRADOR em 26/02/2017'),(501,47,1,30,NULL,'2017-12-26',NULL,1,'GERADO POR: ADMINISTRADOR em 26/02/2017'),(502,47,1,30,NULL,'2018-01-26',NULL,1,'GERADO POR: ADMINISTRADOR em 26/02/2017'),(527,4,1,30,NULL,'2017-03-10',NULL,1,'Gerado Automaticamente.'),(528,4,1,30,NULL,'2017-04-10',NULL,1,'Gerado Automaticamente.'),(529,4,1,30,NULL,'2017-05-10',NULL,1,'Gerado Automaticamente.'),(530,4,1,30,NULL,'2017-06-10',NULL,1,'Gerado Automaticamente.'),(531,4,1,30,NULL,'2017-07-10',NULL,1,'Gerado Automaticamente.'),(532,4,1,30,NULL,'2017-08-10',NULL,1,'Gerado Automaticamente.'),(533,4,1,30,NULL,'2017-09-10',NULL,1,'Gerado Automaticamente.'),(534,4,1,30,NULL,'2017-10-10',NULL,1,'Gerado Automaticamente.'),(535,4,1,30,NULL,'2017-11-10',NULL,1,'Gerado Automaticamente.'),(536,4,1,30,NULL,'2017-12-10',NULL,1,'Gerado Automaticamente.'),(537,4,1,30,NULL,'2018-01-10',NULL,1,'Gerado Automaticamente.'),(538,4,1,30,NULL,'2018-02-10',NULL,1,'Gerado Automaticamente.');
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
INSERT INTO `parametros` (`parametro`, `descricao`, `valor`) VALUES ('aluno',NULL,70),('AlunoPatologia',NULL,1),('duracaoFichaEmMeses',NULL,3),('equipamento',NULL,24),('exercicio',NULL,35),('ficha',NULL,1),('fichaPreDefinida',NULL,4),('grupoexercicio',NULL,15),('idAlunoModalidade',NULL,1),('modalidade',NULL,2),('pagamento',NULL,539),('patologia',NULL,4),('serie',NULL,1),('tipousuario',NULL,3),('usuario',NULL,5);
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
INSERT INTO `patologia` (`idpatologia`, `nomePatologia`, `observacao`) VALUES (1,'DOR DE JOELHO',NULL),(2,'DOR NAS COSTAS',NULL),(3,'LESÃO NO FEMO',NULL);
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
INSERT INTO `seguranca` (`idSeguranca`, `idInterface`, `idTipoUsuario`, `cadastrar`, `alterar`, `consultar`, `excluir`) VALUES (1,1,1,1,1,1,1),(2,1,2,1,1,1,1),(3,2,1,0,1,1,0),(4,2,2,0,0,0,0),(5,3,1,1,1,1,1),(6,3,2,1,1,1,1),(7,4,1,1,1,1,1),(8,4,2,1,1,1,1),(9,5,1,1,1,1,1),(10,5,2,1,1,1,1),(11,6,1,1,1,1,1),(12,6,2,1,1,1,1),(13,7,1,1,1,1,1),(14,7,2,1,1,1,1),(15,8,1,1,1,1,1),(16,8,2,0,0,0,0),(17,12,1,1,1,1,1),(18,12,2,0,0,0,0);
/*!40000 ALTER TABLE `seguranca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serie`
--

DROP TABLE IF EXISTS `serie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serie` (
  `idAluno` int(11) NOT NULL,
  `idTreino` int(11) NOT NULL,
  `idExercicio` int(11) NOT NULL,
  `qtdSerie` int(11) DEFAULT NULL,
  `qtdRepeticao` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAluno`,`idTreino`,`idExercicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serie`
--

LOCK TABLES `serie` WRITE;
/*!40000 ALTER TABLE `serie` DISABLE KEYS */;
INSERT INTO `serie` (`idAluno`, `idTreino`, `idExercicio`, `qtdSerie`, `qtdRepeticao`) VALUES (4,1,3,3,15),(4,1,10,3,15),(4,1,29,3,20),(4,1,30,3,20),(4,1,31,4,10),(4,1,32,3,12),(4,1,33,3,15),(4,1,34,4,10),(4,2,11,3,10),(4,2,12,3,12),(4,2,17,3,12),(4,2,18,3,15),(4,2,19,4,10),(4,2,20,4,10),(4,2,21,3,20),(4,2,22,3,20),(4,2,23,3,20),(4,2,24,4,20),(4,2,25,4,12),(4,2,26,3,20),(4,2,27,4,15),(4,2,28,4,8),(4,3,5,3,15),(4,3,7,4,8),(4,3,8,4,8),(4,3,13,4,10),(4,3,14,4,10),(4,3,15,3,12),(4,3,16,3,12),(5,1,3,3,15),(5,1,5,3,10),(5,1,6,3,12),(5,1,7,3,10),(5,1,8,3,10),(5,1,9,3,10),(5,1,29,3,12),(5,1,30,3,15),(5,1,34,3,12),(44,1,3,3,15),(44,1,5,3,10),(44,1,6,3,12),(44,1,7,3,10),(44,1,8,3,10),(44,1,9,3,10),(44,1,29,3,12),(44,1,30,3,15),(44,1,34,3,12),(47,1,3,3,15),(47,1,5,3,10),(47,1,6,3,12),(47,1,7,3,10),(47,1,8,3,10),(47,1,9,3,10),(47,1,29,3,12),(47,1,30,3,15),(47,1,34,3,12);
/*!40000 ALTER TABLE `serie` ENABLE KEYS */;
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
INSERT INTO `statuspagamento` (`idStatusPagamento`, `descricaoStatusPagamento`) VALUES (1,'EM ABERTO'),(2,'RECEBIDO'),(3,'ISENTO');
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
INSERT INTO `tipousuario` (`idTipoUsuario`, `descricaoTipoUsuario`) VALUES (1,'ADMINISTRADOR'),(2,'INSTRUTOR');
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
  `idTipoUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`idusuario`, `nomeUsuario`, `username`, `senha`, `idTipoUsuario`) VALUES (1,'ADMINISTRADOR','admin','21232F297A57A5A743894A0E4A801FC3',1),(2,'RUAN NICOLINI','ruannicolini','A4709C38C4D40DD7F64C9D755BF5668A',1),(4,'MARIANA','teste','A7DFB624DD850AFDEA29E9B05CD3AEF2',2);
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

-- Dump completed on 2017-03-02 11:47:08
