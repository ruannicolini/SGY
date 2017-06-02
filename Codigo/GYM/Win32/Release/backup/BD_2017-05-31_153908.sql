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
  `idProtocoloAvaFisica` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` (`idAluno`, `nomeAluno`, `dataNascimento`, `email`, `sexo`, `cidade`, `bairro`, `rua`, `numero`, `cep`, `tel1`, `tel2`, `nomeResponsavel`, `parentescoResponsavel`, `telResponsavel`, `dataCadastro`, `cpf`, `idInstrutor`, `idProtocoloAvaFisica`) VALUES (1,'RUAN NICOLINI','1991-08-10','ruan_03@hotmail.com','M','RESPLENDOR','NORTE','EDUARDO MENEGUSSI 93',93,35230000,'(33)9913-21006','(33)3263-2920',NULL,NULL,NULL,NULL,'110.149.126-44',4,3),(9,'LAYS ANHA','2013-04-10',NULL,'F',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),(10,'EMILLY NGUARUDA','2006-04-11','emilly@gmail.com',NULL,'RESPLENDOR','NORTE','EDUARDO MENEGUSSI',93,35230000,'(33)3263-2920',NULL,'DINALVA VELASQUEZ GONÇALVES','MÃE','(33)3263-2920',NULL,NULL,1,NULL);
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
INSERT INTO `alunomodalidade` (`idAluno`, `idmodalidade`, `dataInscrição`, `diavencimento`) VALUES (1,1,'2017-04-15',15),(9,1,'2017-04-16',16),(10,1,'2017-04-17',17);
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
INSERT INTO `anamnese` (`idAnamnese`, `idAluno`, `dataAnamnese`, `frequenciaSemanalTreino`, `peso`, `altura`, `qtdHorasSono`, `qtdRefeicoesDia`, `fuma`, `dieta`, `suplementacao`, `consumoAlcoolico`, `informacaoAdicional`, `idObjetivo`, `nomeAvaliador`) VALUES (1,1,'2017-04-15',5,60,1.7,8,6,0,1,1,0,'nada a declarar',2,'ADMINISTRADOR'),(2,10,'2017-04-17',4,58,1.6,6,8,0,0,0,0,NULL,4,'ADMINISTRADOR'),(3,9,'2017-04-29',3,50,1.4,6,NULL,0,1,0,0,NULL,1,'ADMINISTRADOR'),(4,1,'2017-04-29',3,68,1.733,6,4,0,0,0,0,NULL,2,'ADMINISTRADOR'),(5,1,'2017-04-29',NULL,65,1.7,NULL,5,0,0,0,0,NULL,3,'ADMINISTRADOR'),(8,1,'2017-05-30',5,60,1.7,6,6,1,1,1,1,'Nada de informações adicionais.',2,'ADMINISTRADOR');
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
INSERT INTO `anamnesepatologia` (`idAnamnese`, `idPatologia`, `observacaoMedica`) VALUES (1,1,NULL),(1,2,NULL),(1,3,NULL),(2,6,'Consultou o médico, que disse que é permanente.'),(4,1,NULL),(8,1,'observações médicas, dor no joelho.'),(8,3,NULL);
/*!40000 ALTER TABLE `anamnesepatologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliacaofisica`
--

DROP TABLE IF EXISTS `avaliacaofisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avaliacaofisica` (
  `idAvaliacaoFisica` int(11) NOT NULL,
  `idAluno` int(11) NOT NULL,
  `dataAvaliacaoFisica` date NOT NULL,
  `nomeAvaliador` varchar(60) DEFAULT NULL,
  `med_peso_cm` float DEFAULT NULL,
  `med_altura_cm` float DEFAULT NULL,
  `med_cervical_cm` float DEFAULT NULL,
  `med_torax_cm` float DEFAULT NULL,
  `med_quadril_cm` float DEFAULT NULL,
  `med_cintura_cm` float DEFAULT NULL,
  `med_abdomen_cm` float DEFAULT NULL,
  `med_bracoDireitoContraido_cm` float DEFAULT NULL,
  `med_bracoDireitoRelaxado_cm` float DEFAULT NULL,
  `med_antibracoDireito_cm` float DEFAULT NULL,
  `med_coxaDireita_cm` float DEFAULT NULL,
  `med_panturrilhaDireita_cm` float DEFAULT NULL,
  `med_bracoEsquerdoContraido_cm` float DEFAULT NULL,
  `med_bracoEsquerdoRelaxado_cm` float DEFAULT NULL,
  `med_antibracoEsquerdo_cm` float DEFAULT NULL,
  `med_coxaEsquerda_cm` float DEFAULT NULL,
  `med_panturrilhaEsquerda_cm` float DEFAULT NULL,
  `dobra_triciptal_mm` float DEFAULT NULL,
  `dobra_subescapular_mm` float DEFAULT NULL,
  `dobra_axiliar_mm` float DEFAULT NULL,
  `dobra_abdominal_mm` float DEFAULT NULL,
  `dobra_coxa_mm` float DEFAULT NULL,
  `dobra_panturrilha_mm` float DEFAULT NULL,
  `dobra_biciptal_mm` float DEFAULT NULL,
  `dobra_peitoral_mm` float DEFAULT NULL,
  `dobra_suprailiac_mm` float DEFAULT NULL,
  `tipoProtocolo` char(1) DEFAULT NULL,
  `do_BIESTILOIDE_cm` float DEFAULT NULL,
  `do_BIEPICONDILIANO_cm` float DEFAULT NULL,
  `do_BICONDILIANO_cm` float DEFAULT NULL,
  `do_BIMALEOLAR_cm` float DEFAULT NULL,
  PRIMARY KEY (`idAvaliacaoFisica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacaofisica`
--

LOCK TABLES `avaliacaofisica` WRITE;
/*!40000 ALTER TABLE `avaliacaofisica` DISABLE KEYS */;
INSERT INTO `avaliacaofisica` (`idAvaliacaoFisica`, `idAluno`, `dataAvaliacaoFisica`, `nomeAvaliador`, `med_peso_cm`, `med_altura_cm`, `med_cervical_cm`, `med_torax_cm`, `med_quadril_cm`, `med_cintura_cm`, `med_abdomen_cm`, `med_bracoDireitoContraido_cm`, `med_bracoDireitoRelaxado_cm`, `med_antibracoDireito_cm`, `med_coxaDireita_cm`, `med_panturrilhaDireita_cm`, `med_bracoEsquerdoContraido_cm`, `med_bracoEsquerdoRelaxado_cm`, `med_antibracoEsquerdo_cm`, `med_coxaEsquerda_cm`, `med_panturrilhaEsquerda_cm`, `dobra_triciptal_mm`, `dobra_subescapular_mm`, `dobra_axiliar_mm`, `dobra_abdominal_mm`, `dobra_coxa_mm`, `dobra_panturrilha_mm`, `dobra_biciptal_mm`, `dobra_peitoral_mm`, `dobra_suprailiac_mm`, `tipoProtocolo`, `do_BIESTILOIDE_cm`, `do_BIEPICONDILIANO_cm`, `do_BICONDILIANO_cm`, `do_BIMALEOLAR_cm`) VALUES (6,1,'2017-03-17','ADMINISTRADOR',60,1.73,10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,240,160,170,180,190,200,210,220,230,NULL,NULL,5,10,NULL),(7,1,'2017-04-18','ADMINISTRADOR',70,1.73,10,40,100,140,70,20,50,80,120,150,30,60,90,130,160,60,50,70,80,90,100,130,120,140,NULL,NULL,NULL,NULL,NULL),(8,1,'2017-05-18','ADMINISTRADOR',90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,1,'2017-06-18','ADMINISTRADOR',78,1.75,NULL,NULL,10,5,NULL,32,29.78,NULL,36.8,NULL,32,31,NULL,36.8,NULL,20,15,22,15,25,15,15,15,15,NULL,10,6.7,9.2,NULL);
/*!40000 ALTER TABLE `avaliacaofisica` ENABLE KEYS */;
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
INSERT INTO `campolog` (`idCampolog`, `nomeField`, `valorAntigo`, `valornovo`, `idLogSistema`) VALUES (1,'tipoMedida','1','T',1),(2,'idYoutube','','bQmKTKObDfU',2),(3,'tipoMedida','T','U',2),(4,'idusuario',NULL,'2',3),(5,'nomeUsuario',NULL,'ATENDENTE',3),(6,'username',NULL,'atendente',3),(7,'senha',NULL,'D4A1D4CF923C881FC54B2F6E13FED99B',3),(8,'ativo',NULL,'True',3),(9,'administrador',NULL,'False',3),(10,'atendente',NULL,'True',3),(11,'instrutor',NULL,'False',3),(12,'avaliador',NULL,'False',3),(13,'instrutor','False','True',4),(14,'idpatologia',NULL,'1',5),(15,'nomePatologia',NULL,'DOR NO JOELHO',5),(16,'observacao',NULL,'',5),(17,'idpatologia',NULL,'2',6),(18,'nomePatologia',NULL,'DIABETES',6),(19,'observacao',NULL,'',6),(20,'idpatologia',NULL,'3',7),(21,'nomePatologia',NULL,'HIPERTENSÃO',7),(22,'observacao',NULL,'',7),(23,'idpatologia',NULL,'4',8),(24,'nomePatologia',NULL,'LESÃO FEMO',8),(25,'observacao',NULL,'',8),(26,'idpatologia',NULL,'5',9),(27,'nomePatologia',NULL,'DOR LOMBAR',9),(28,'observacao',NULL,'',9),(29,'idAnamnese',NULL,'1',10),(30,'idAluno',NULL,'1',10),(31,'frequenciaSemanalTreino',NULL,'5',10),(32,'peso',NULL,'60',10),(33,'altura',NULL,'1,70000004768372',10),(34,'qtdHorasSono',NULL,'8',10),(35,'qtdRefeicoesDia',NULL,'6',10),(36,'dieta',NULL,'True',10),(37,'suplementacao',NULL,'True',10),(38,'dataAnamnese',NULL,'15/04/2017',10),(39,'NOMEALUNO',NULL,'RUAN NICOLINI',10),(40,'consumoAlcoolico',NULL,'False',10),(41,'fuma',NULL,'False',10),(42,'informacaoAdicional',NULL,'nada a declarar',10),(43,'idObjetivo',NULL,'2',10),(44,'DESCRICAOOBJETIVO',NULL,'GANHO DE MASSA MUSCULAR',10),(45,'nomeAvaliador',NULL,'ADMINISTRADOR',10),(46,'idAluno',NULL,'1',11),(47,'nomeAluno',NULL,'RUAN NICOLINI',11),(48,'dataNascimento',NULL,'10/08/1991',11),(49,'email',NULL,'ruan_03@hotmail.com',11),(50,'sexo',NULL,'',11),(51,'cidade',NULL,'RESPLENDOR',11),(52,'bairro',NULL,'NORTE',11),(53,'rua',NULL,'EDUARDO MENEGUSSI 93',11),(54,'numero',NULL,'933',11),(55,'cep',NULL,'35230000',11),(56,'tel1',NULL,'3332632920',11),(57,'tel2',NULL,'3332632920',11),(58,'nomeResponsavel',NULL,'',11),(59,'parentescoResponsavel',NULL,'',11),(60,'telResponsavel',NULL,'',11),(61,'dataCadastro',NULL,'',11),(62,'cpf',NULL,'11014912644',11),(63,'idInstrutor',NULL,'1',11),(64,'NOMEINSTRUTORFICHA',NULL,'ADMINISTRADOR',11),(65,'idAluno',NULL,'1',12),(66,'idmodalidade',NULL,'1',12),(67,'dataInscrição',NULL,'15/04/2017',12),(68,'diavencimento',NULL,'15',12),(69,'DESCRICAOMODALIDADE',NULL,'',12),(70,'valor',NULL,'',12),(71,'idPagamento',NULL,'1',13),(72,'idAluno',NULL,'1',13),(73,'idmodalidade',NULL,'1',13),(74,'valorModalidade',NULL,'30',13),(75,'valorCobrado',NULL,'',13),(76,'dataVencimento',NULL,'15/04/2017',13),(77,'dataPagamento',NULL,'',13),(78,'idstatusPagamento',NULL,'1',13),(79,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',13),(80,'descricaoModalidade',NULL,'',13),(81,'descricaoStatusPagamento',NULL,'',13),(82,'idPagamento',NULL,'2',14),(83,'idAluno',NULL,'1',14),(84,'idmodalidade',NULL,'1',14),(85,'valorModalidade',NULL,'30',14),(86,'valorCobrado',NULL,'',14),(87,'dataVencimento',NULL,'15/05/2017',14),(88,'dataPagamento',NULL,'',14),(89,'idstatusPagamento',NULL,'1',14),(90,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',14),(91,'descricaoModalidade',NULL,'',14),(92,'descricaoStatusPagamento',NULL,'',14),(93,'idPagamento',NULL,'3',15),(94,'idAluno',NULL,'1',15),(95,'idmodalidade',NULL,'1',15),(96,'valorModalidade',NULL,'30',15),(97,'valorCobrado',NULL,'',15),(98,'dataVencimento',NULL,'15/06/2017',15),(99,'dataPagamento',NULL,'',15),(100,'idstatusPagamento',NULL,'1',15),(101,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',15),(102,'descricaoModalidade',NULL,'',15),(103,'descricaoStatusPagamento',NULL,'',15),(104,'idPagamento',NULL,'4',16),(105,'idAluno',NULL,'1',16),(106,'idmodalidade',NULL,'1',16),(107,'valorModalidade',NULL,'30',16),(108,'valorCobrado',NULL,'',16),(109,'dataVencimento',NULL,'15/07/2017',16),(110,'dataPagamento',NULL,'',16),(111,'idstatusPagamento',NULL,'1',16),(112,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',16),(113,'descricaoModalidade',NULL,'',16),(114,'descricaoStatusPagamento',NULL,'',16),(115,'idPagamento',NULL,'5',17),(116,'idAluno',NULL,'1',17),(117,'idmodalidade',NULL,'1',17),(118,'valorModalidade',NULL,'30',17),(119,'valorCobrado',NULL,'',17),(120,'dataVencimento',NULL,'15/08/2017',17),(121,'dataPagamento',NULL,'',17),(122,'idstatusPagamento',NULL,'1',17),(123,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',17),(124,'descricaoModalidade',NULL,'',17),(125,'descricaoStatusPagamento',NULL,'',17),(126,'idPagamento',NULL,'6',18),(127,'idAluno',NULL,'1',18),(128,'idmodalidade',NULL,'1',18),(129,'valorModalidade',NULL,'30',18),(130,'valorCobrado',NULL,'',18),(131,'dataVencimento',NULL,'15/09/2017',18),(132,'dataPagamento',NULL,'',18),(133,'idstatusPagamento',NULL,'1',18),(134,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',18),(135,'descricaoModalidade',NULL,'',18),(136,'descricaoStatusPagamento',NULL,'',18),(137,'idPagamento',NULL,'7',19),(138,'idAluno',NULL,'1',19),(139,'idmodalidade',NULL,'1',19),(140,'valorModalidade',NULL,'30',19),(141,'valorCobrado',NULL,'',19),(142,'dataVencimento',NULL,'15/10/2017',19),(143,'dataPagamento',NULL,'',19),(144,'idstatusPagamento',NULL,'1',19),(145,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',19),(146,'descricaoModalidade',NULL,'',19),(147,'descricaoStatusPagamento',NULL,'',19),(148,'idPagamento',NULL,'8',20),(149,'idAluno',NULL,'1',20),(150,'idmodalidade',NULL,'1',20),(151,'valorModalidade',NULL,'30',20),(152,'valorCobrado',NULL,'',20),(153,'dataVencimento',NULL,'15/11/2017',20),(154,'dataPagamento',NULL,'',20),(155,'idstatusPagamento',NULL,'1',20),(156,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',20),(157,'descricaoModalidade',NULL,'',20),(158,'descricaoStatusPagamento',NULL,'',20),(159,'idPagamento',NULL,'9',21),(160,'idAluno',NULL,'1',21),(161,'idmodalidade',NULL,'1',21),(162,'valorModalidade',NULL,'30',21),(163,'valorCobrado',NULL,'',21),(164,'dataVencimento',NULL,'15/12/2017',21),(165,'dataPagamento',NULL,'',21),(166,'idstatusPagamento',NULL,'1',21),(167,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',21),(168,'descricaoModalidade',NULL,'',21),(169,'descricaoStatusPagamento',NULL,'',21),(170,'idPagamento',NULL,'10',22),(171,'idAluno',NULL,'1',22),(172,'idmodalidade',NULL,'1',22),(173,'valorModalidade',NULL,'30',22),(174,'valorCobrado',NULL,'',22),(175,'dataVencimento',NULL,'15/01/2018',22),(176,'dataPagamento',NULL,'',22),(177,'idstatusPagamento',NULL,'1',22),(178,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',22),(179,'descricaoModalidade',NULL,'',22),(180,'descricaoStatusPagamento',NULL,'',22),(181,'idPagamento',NULL,'11',23),(182,'idAluno',NULL,'1',23),(183,'idmodalidade',NULL,'1',23),(184,'valorModalidade',NULL,'30',23),(185,'valorCobrado',NULL,'',23),(186,'dataVencimento',NULL,'15/02/2018',23),(187,'dataPagamento',NULL,'',23),(188,'idstatusPagamento',NULL,'1',23),(189,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',23),(190,'descricaoModalidade',NULL,'',23),(191,'descricaoStatusPagamento',NULL,'',23),(192,'idPagamento',NULL,'12',24),(193,'idAluno',NULL,'1',24),(194,'idmodalidade',NULL,'1',24),(195,'valorModalidade',NULL,'30',24),(196,'valorCobrado',NULL,'',24),(197,'dataVencimento',NULL,'15/03/2018',24),(198,'dataPagamento',NULL,'',24),(199,'idstatusPagamento',NULL,'1',24),(200,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 15/04/2017',24),(201,'descricaoModalidade',NULL,'',24),(202,'descricaoStatusPagamento',NULL,'',24),(203,'tel1','3332632920','(33)9913-21006',25),(204,'tel2','3332632920','(33)3263-2920',25),(205,'cpf','11014912644','110.149.126-44',25),(206,'idFichaAluno',NULL,'1',26),(207,'idAluno',NULL,'1',26),(208,'dataComposicao',NULL,'15/04/2017',26),(209,'nomeInstrutor',NULL,'ADMINISTRADOR',26),(210,'NOMEALUNO',NULL,'RUAN NICOLINI',26),(211,'dataVencimento',NULL,'15/04/2017',26),(212,'sexo','','M',27),(213,'numero','933','93',28),(214,'valorCobrado','','30',29),(215,'dataPagamento','','16/04/2017',29),(216,'idstatusPagamento','1','2',29),(217,'LOGUsuarioResponsavel','GERADO POR: ADMINISTRADOR em 15/04/2017','PAGAMENTO RECEBIDO POR: ADMINISTRADOR EM 16/04/201',29),(218,'valorCobrado','','0',30),(219,'dataPagamento','','16/04/2017',30),(220,'idstatusPagamento','1','3',30),(221,'LOGUsuarioResponsavel','GERADO POR: ADMINISTRADOR em 15/04/2017','ISENÇÃO CONCEDIDA POR: ADMINISTRADOR EM 16/04/2017',30),(222,'valorCobrado','0','',31),(223,'dataPagamento','16/04/2017','',31),(224,'idstatusPagamento','3','1',31),(225,'LOGUsuarioResponsavel','ISENÇÃO CONCEDIDA POR: ADMINISTRADOR EM 16/04/2017','Isenção cancelada por ADMINISTRADOR em 16/04/2017',31),(226,'valorCobrado','30','',32),(227,'dataPagamento','16/04/2017','',32),(228,'idstatusPagamento','2','1',32),(229,'LOGUsuarioResponsavel','PAGAMENTO RECEBIDO POR: ADMINISTRADOR EM 16/04/201','Pagamento cancelado por ADMINISTRADOR em 16/04/201',32),(230,'valorCobrado','','30',33),(231,'dataPagamento','','16/04/2017',33),(232,'idstatusPagamento','1','2',33),(233,'LOGUsuarioResponsavel','Pagamento cancelado por ADMINISTRADOR em 16/04/201','PAGAMENTO RECEBIDO POR: ADMINISTRADOR EM 16/04/201',33),(234,'valorCobrado','','0',34),(235,'dataPagamento','','16/04/2017',34),(236,'idstatusPagamento','1','3',34),(237,'LOGUsuarioResponsavel','Isenção cancelada por ADMINISTRADOR em 16/04/2017','ISENÇÃO CONCEDIDA POR: ADMINISTRADOR EM 16/04/2017',34),(238,'valorCobrado','0','',35),(239,'dataPagamento','16/04/2017','',35),(240,'idstatusPagamento','3','1',35),(241,'LOGUsuarioResponsavel','ISENÇÃO CONCEDIDA POR: ADMINISTRADOR EM 16/04/2017','Isenção cancelada por ADMINISTRADOR em 16/04/2017',35),(242,'valorCobrado','','0',36),(243,'dataPagamento','','16/04/2017',36),(244,'idstatusPagamento','1','3',36),(245,'LOGUsuarioResponsavel','Isenção cancelada por ADMINISTRADOR em 16/04/2017','ISENÇÃO CONCEDIDA POR: ADMINISTRADOR EM 16/04/2017',36),(246,'valorCobrado','0','',37),(247,'dataPagamento','16/04/2017','',37),(248,'idstatusPagamento','3','1',37),(249,'LOGUsuarioResponsavel','ISENÇÃO CONCEDIDA POR: ADMINISTRADOR EM 16/04/2017','Isenção cancelada por ADMINISTRADOR em 16/04/2017',37),(250,'valorCobrado','','0',38),(251,'dataPagamento','','16/04/2017',38),(252,'idstatusPagamento','1','3',38),(253,'LOGUsuarioResponsavel','Isenção cancelada por ADMINISTRADOR em 16/04/2017','ISENÇÃO CONCEDIDA POR: ADMINISTRADOR EM 16/04/2017',38),(254,'valorCobrado','0','',39),(255,'dataPagamento','16/04/2017','',39),(256,'idstatusPagamento','3','1',39),(257,'LOGUsuarioResponsavel','ISENÇÃO CONCEDIDA POR: ADMINISTRADOR EM 16/04/2017','Isenção cancelada por ADMINISTRADOR em 16/04/2017',39),(258,'valorCobrado','30','',40),(259,'dataPagamento','16/04/2017','',40),(260,'idstatusPagamento','2','1',40),(261,'LOGUsuarioResponsavel','PAGAMENTO RECEBIDO POR: ADMINISTRADOR EM 16/04/201','Pagamento cancelado por ADMINISTRADOR em 16/04/201',40),(262,'valorCobrado','','30',41),(263,'dataPagamento','','16/04/2017',41),(264,'idstatusPagamento','1','2',41),(265,'LOGUsuarioResponsavel','Pagamento cancelado por ADMINISTRADOR em 16/04/201','PAGAMENTO RECEBIDO POR: ADMINISTRADOR EM 16/04/201',41),(266,'valorCobrado','','0',42),(267,'dataPagamento','','16/04/2017',42),(268,'idstatusPagamento','1','3',42),(269,'LOGUsuarioResponsavel','Isenção cancelada por ADMINISTRADOR em 16/04/2017','ISENÇÃO CONCEDIDA POR: ADMINISTRADOR EM 16/04/2017',42),(270,'valorCobrado','0','',43),(271,'dataPagamento','16/04/2017','',43),(272,'idstatusPagamento','3','1',43),(273,'LOGUsuarioResponsavel','ISENÇÃO CONCEDIDA POR: ADMINISTRADOR EM 16/04/2017','Isenção cancelada por ADMINISTRADOR em 16/04/2017',43),(274,'valorCobrado','30','',44),(275,'dataPagamento','16/04/2017','',44),(276,'idstatusPagamento','2','1',44),(277,'LOGUsuarioResponsavel','PAGAMENTO RECEBIDO POR: ADMINISTRADOR EM 16/04/201','Pagamento cancelado por ADMINISTRADOR em 16/04/201',44),(278,'valorCobrado','','30',45),(279,'dataPagamento','','16/04/2017',45),(280,'idstatusPagamento','1','2',45),(281,'LOGUsuarioResponsavel','Pagamento cancelado por ADMINISTRADOR em 16/04/201','PAGAMENTO RECEBIDO POR: ADMINISTRADOR EM 16/04/201',45),(282,'valorCobrado','30','',46),(283,'dataPagamento','16/04/2017','',46),(284,'idstatusPagamento','2','1',46),(285,'LOGUsuarioResponsavel','PAGAMENTO RECEBIDO POR: ADMINISTRADOR EM 16/04/201','Pagamento cancelado por ADMINISTRADOR em 16/04/201',46),(286,'idAluno',NULL,'9',47),(287,'nomeAluno',NULL,'LAYS ANHA',47),(288,'dataNascimento',NULL,'10/04/2013',47),(289,'email',NULL,'',47),(290,'sexo',NULL,'F',47),(291,'cidade',NULL,'',47),(292,'bairro',NULL,'',47),(293,'rua',NULL,'',47),(294,'numero',NULL,'',47),(295,'cep',NULL,'',47),(296,'tel1',NULL,'',47),(297,'tel2',NULL,'',47),(298,'nomeResponsavel',NULL,'',47),(299,'parentescoResponsavel',NULL,'',47),(300,'telResponsavel',NULL,'',47),(301,'dataCadastro',NULL,'',47),(302,'cpf',NULL,'',47),(303,'idInstrutor',NULL,'1',47),(304,'NOMEINSTRUTORFICHA',NULL,'ADMINISTRADOR',47),(305,'idAluno',NULL,'9',48),(306,'idmodalidade',NULL,'1',48),(307,'dataInscrição',NULL,'16/04/2017',48),(308,'diavencimento',NULL,'16',48),(309,'DESCRICAOMODALIDADE',NULL,'',48),(310,'valor',NULL,'',48),(311,'idPagamento',NULL,'13',49),(312,'idAluno',NULL,'9',49),(313,'idmodalidade',NULL,'1',49),(314,'valorModalidade',NULL,'30',49),(315,'valorCobrado',NULL,'',49),(316,'dataVencimento',NULL,'16/04/2017',49),(317,'dataPagamento',NULL,'',49),(318,'idstatusPagamento',NULL,'1',49),(319,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 16/04/2017',49),(320,'descricaoModalidade',NULL,'',49),(321,'descricaoStatusPagamento',NULL,'',49),(322,'idPagamento',NULL,'14',50),(323,'idAluno',NULL,'9',50),(324,'idmodalidade',NULL,'1',50),(325,'valorModalidade',NULL,'30',50),(326,'valorCobrado',NULL,'',50),(327,'dataVencimento',NULL,'16/05/2017',50),(328,'dataPagamento',NULL,'',50),(329,'idstatusPagamento',NULL,'1',50),(330,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 16/04/2017',50),(331,'descricaoModalidade',NULL,'',50),(332,'descricaoStatusPagamento',NULL,'',50),(333,'idPagamento',NULL,'15',51),(334,'idAluno',NULL,'9',51),(335,'idmodalidade',NULL,'1',51),(336,'valorModalidade',NULL,'30',51),(337,'valorCobrado',NULL,'',51),(338,'dataVencimento',NULL,'16/06/2017',51),(339,'dataPagamento',NULL,'',51),(340,'idstatusPagamento',NULL,'1',51),(341,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 16/04/2017',51),(342,'descricaoModalidade',NULL,'',51),(343,'descricaoStatusPagamento',NULL,'',51),(344,'idPagamento',NULL,'16',52),(345,'idAluno',NULL,'9',52),(346,'idmodalidade',NULL,'1',52),(347,'valorModalidade',NULL,'30',52),(348,'valorCobrado',NULL,'',52),(349,'dataVencimento',NULL,'16/07/2017',52),(350,'dataPagamento',NULL,'',52),(351,'idstatusPagamento',NULL,'1',52),(352,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 16/04/2017',52),(353,'descricaoModalidade',NULL,'',52),(354,'descricaoStatusPagamento',NULL,'',52),(355,'idPagamento',NULL,'17',53),(356,'idAluno',NULL,'9',53),(357,'idmodalidade',NULL,'1',53),(358,'valorModalidade',NULL,'30',53),(359,'valorCobrado',NULL,'',53),(360,'dataVencimento',NULL,'16/08/2017',53),(361,'dataPagamento',NULL,'',53),(362,'idstatusPagamento',NULL,'1',53),(363,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 16/04/2017',53),(364,'descricaoModalidade',NULL,'',53),(365,'descricaoStatusPagamento',NULL,'',53),(366,'idPagamento',NULL,'18',54),(367,'idAluno',NULL,'9',54),(368,'idmodalidade',NULL,'1',54),(369,'valorModalidade',NULL,'30',54),(370,'valorCobrado',NULL,'',54),(371,'dataVencimento',NULL,'16/09/2017',54),(372,'dataPagamento',NULL,'',54),(373,'idstatusPagamento',NULL,'1',54),(374,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 16/04/2017',54),(375,'descricaoModalidade',NULL,'',54),(376,'descricaoStatusPagamento',NULL,'',54),(377,'idPagamento',NULL,'19',55),(378,'idAluno',NULL,'9',55),(379,'idmodalidade',NULL,'1',55),(380,'valorModalidade',NULL,'30',55),(381,'valorCobrado',NULL,'',55),(382,'dataVencimento',NULL,'16/10/2017',55),(383,'dataPagamento',NULL,'',55),(384,'idstatusPagamento',NULL,'1',55),(385,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 16/04/2017',55),(386,'descricaoModalidade',NULL,'',55),(387,'descricaoStatusPagamento',NULL,'',55),(388,'idPagamento',NULL,'20',56),(389,'idAluno',NULL,'9',56),(390,'idmodalidade',NULL,'1',56),(391,'valorModalidade',NULL,'30',56),(392,'valorCobrado',NULL,'',56),(393,'dataVencimento',NULL,'16/11/2017',56),(394,'dataPagamento',NULL,'',56),(395,'idstatusPagamento',NULL,'1',56),(396,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 16/04/2017',56),(397,'descricaoModalidade',NULL,'',56),(398,'descricaoStatusPagamento',NULL,'',56),(399,'idPagamento',NULL,'21',57),(400,'idAluno',NULL,'9',57),(401,'idmodalidade',NULL,'1',57),(402,'valorModalidade',NULL,'30',57),(403,'valorCobrado',NULL,'',57),(404,'dataVencimento',NULL,'16/12/2017',57),(405,'dataPagamento',NULL,'',57),(406,'idstatusPagamento',NULL,'1',57),(407,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 16/04/2017',57),(408,'descricaoModalidade',NULL,'',57),(409,'descricaoStatusPagamento',NULL,'',57),(410,'idPagamento',NULL,'22',58),(411,'idAluno',NULL,'9',58),(412,'idmodalidade',NULL,'1',58),(413,'valorModalidade',NULL,'30',58),(414,'valorCobrado',NULL,'',58),(415,'dataVencimento',NULL,'16/01/2018',58),(416,'dataPagamento',NULL,'',58),(417,'idstatusPagamento',NULL,'1',58),(418,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 16/04/2017',58),(419,'descricaoModalidade',NULL,'',58),(420,'descricaoStatusPagamento',NULL,'',58),(421,'idPagamento',NULL,'23',59),(422,'idAluno',NULL,'9',59),(423,'idmodalidade',NULL,'1',59),(424,'valorModalidade',NULL,'30',59),(425,'valorCobrado',NULL,'',59),(426,'dataVencimento',NULL,'16/02/2018',59),(427,'dataPagamento',NULL,'',59),(428,'idstatusPagamento',NULL,'1',59),(429,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 16/04/2017',59),(430,'descricaoModalidade',NULL,'',59),(431,'descricaoStatusPagamento',NULL,'',59),(432,'idPagamento',NULL,'24',60),(433,'idAluno',NULL,'9',60),(434,'idmodalidade',NULL,'1',60),(435,'valorModalidade',NULL,'30',60),(436,'valorCobrado',NULL,'',60),(437,'dataVencimento',NULL,'16/03/2018',60),(438,'dataPagamento',NULL,'',60),(439,'idstatusPagamento',NULL,'1',60),(440,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 16/04/2017',60),(441,'descricaoModalidade',NULL,'',60),(442,'descricaoStatusPagamento',NULL,'',60),(443,'idpatologia',NULL,'6',61),(444,'nomePatologia',NULL,'REFLUXO',61),(445,'observacao',NULL,'',61),(446,'idAnamnese',NULL,'2',62),(447,'idAluno',NULL,'10',62),(448,'frequenciaSemanalTreino',NULL,'4',62),(449,'peso',NULL,'58',62),(450,'altura',NULL,'1,60000002384186',62),(451,'qtdHorasSono',NULL,'6',62),(452,'qtdRefeicoesDia',NULL,'8',62),(453,'dieta',NULL,'False',62),(454,'suplementacao',NULL,'False',62),(455,'dataAnamnese',NULL,'17/04/2017',62),(456,'NOMEALUNO',NULL,'EMILLY NGUARUDA',62),(457,'consumoAlcoolico',NULL,'False',62),(458,'fuma',NULL,'False',62),(459,'informacaoAdicional',NULL,'',62),(460,'idObjetivo',NULL,'1',62),(461,'DESCRICAOOBJETIVO',NULL,'PERDA DE PESO',62),(462,'nomeAvaliador',NULL,'ADMINISTRADOR',62),(463,'idAluno',NULL,'10',63),(464,'idmodalidade',NULL,'1',63),(465,'dataInscrição',NULL,'17/04/2017',63),(466,'diavencimento',NULL,'17',63),(467,'DESCRICAOMODALIDADE',NULL,'',63),(468,'valor',NULL,'',63),(469,'idPagamento',NULL,'25',64),(470,'idAluno',NULL,'10',64),(471,'idmodalidade',NULL,'1',64),(472,'valorModalidade',NULL,'30',64),(473,'valorCobrado',NULL,'',64),(474,'dataVencimento',NULL,'17/04/2017',64),(475,'dataPagamento',NULL,'',64),(476,'idstatusPagamento',NULL,'1',64),(477,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 17/04/2017',64),(478,'descricaoModalidade',NULL,'',64),(479,'descricaoStatusPagamento',NULL,'',64),(480,'idPagamento',NULL,'26',65),(481,'idAluno',NULL,'10',65),(482,'idmodalidade',NULL,'1',65),(483,'valorModalidade',NULL,'30',65),(484,'valorCobrado',NULL,'',65),(485,'dataVencimento',NULL,'17/05/2017',65),(486,'dataPagamento',NULL,'',65),(487,'idstatusPagamento',NULL,'1',65),(488,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 17/04/2017',65),(489,'descricaoModalidade',NULL,'',65),(490,'descricaoStatusPagamento',NULL,'',65),(491,'idPagamento',NULL,'27',66),(492,'idAluno',NULL,'10',66),(493,'idmodalidade',NULL,'1',66),(494,'valorModalidade',NULL,'30',66),(495,'valorCobrado',NULL,'',66),(496,'dataVencimento',NULL,'17/06/2017',66),(497,'dataPagamento',NULL,'',66),(498,'idstatusPagamento',NULL,'1',66),(499,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 17/04/2017',66),(500,'descricaoModalidade',NULL,'',66),(501,'descricaoStatusPagamento',NULL,'',66),(502,'idPagamento',NULL,'28',67),(503,'idAluno',NULL,'10',67),(504,'idmodalidade',NULL,'1',67),(505,'valorModalidade',NULL,'30',67),(506,'valorCobrado',NULL,'',67),(507,'dataVencimento',NULL,'17/07/2017',67),(508,'dataPagamento',NULL,'',67),(509,'idstatusPagamento',NULL,'1',67),(510,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 17/04/2017',67),(511,'descricaoModalidade',NULL,'',67),(512,'descricaoStatusPagamento',NULL,'',67),(513,'idPagamento',NULL,'29',68),(514,'idAluno',NULL,'10',68),(515,'idmodalidade',NULL,'1',68),(516,'valorModalidade',NULL,'30',68),(517,'valorCobrado',NULL,'',68),(518,'dataVencimento',NULL,'17/08/2017',68),(519,'dataPagamento',NULL,'',68),(520,'idstatusPagamento',NULL,'1',68),(521,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 17/04/2017',68),(522,'descricaoModalidade',NULL,'',68),(523,'descricaoStatusPagamento',NULL,'',68),(524,'idPagamento',NULL,'30',69),(525,'idAluno',NULL,'10',69),(526,'idmodalidade',NULL,'1',69),(527,'valorModalidade',NULL,'30',69),(528,'valorCobrado',NULL,'',69),(529,'dataVencimento',NULL,'17/09/2017',69),(530,'dataPagamento',NULL,'',69),(531,'idstatusPagamento',NULL,'1',69),(532,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 17/04/2017',69),(533,'descricaoModalidade',NULL,'',69),(534,'descricaoStatusPagamento',NULL,'',69),(535,'idPagamento',NULL,'31',70),(536,'idAluno',NULL,'10',70),(537,'idmodalidade',NULL,'1',70),(538,'valorModalidade',NULL,'30',70),(539,'valorCobrado',NULL,'',70),(540,'dataVencimento',NULL,'17/10/2017',70),(541,'dataPagamento',NULL,'',70),(542,'idstatusPagamento',NULL,'1',70),(543,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 17/04/2017',70),(544,'descricaoModalidade',NULL,'',70),(545,'descricaoStatusPagamento',NULL,'',70),(546,'idPagamento',NULL,'32',71),(547,'idAluno',NULL,'10',71),(548,'idmodalidade',NULL,'1',71),(549,'valorModalidade',NULL,'30',71),(550,'valorCobrado',NULL,'',71),(551,'dataVencimento',NULL,'17/11/2017',71),(552,'dataPagamento',NULL,'',71),(553,'idstatusPagamento',NULL,'1',71),(554,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 17/04/2017',71),(555,'descricaoModalidade',NULL,'',71),(556,'descricaoStatusPagamento',NULL,'',71),(557,'idPagamento',NULL,'33',72),(558,'idAluno',NULL,'10',72),(559,'idmodalidade',NULL,'1',72),(560,'valorModalidade',NULL,'30',72),(561,'valorCobrado',NULL,'',72),(562,'dataVencimento',NULL,'17/12/2017',72),(563,'dataPagamento',NULL,'',72),(564,'idstatusPagamento',NULL,'1',72),(565,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 17/04/2017',72),(566,'descricaoModalidade',NULL,'',72),(567,'descricaoStatusPagamento',NULL,'',72),(568,'idPagamento',NULL,'34',73),(569,'idAluno',NULL,'10',73),(570,'idmodalidade',NULL,'1',73),(571,'valorModalidade',NULL,'30',73),(572,'valorCobrado',NULL,'',73),(573,'dataVencimento',NULL,'17/01/2018',73),(574,'dataPagamento',NULL,'',73),(575,'idstatusPagamento',NULL,'1',73),(576,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 17/04/2017',73),(577,'descricaoModalidade',NULL,'',73),(578,'descricaoStatusPagamento',NULL,'',73),(579,'idPagamento',NULL,'35',74),(580,'idAluno',NULL,'10',74),(581,'idmodalidade',NULL,'1',74),(582,'valorModalidade',NULL,'30',74),(583,'valorCobrado',NULL,'',74),(584,'dataVencimento',NULL,'17/02/2018',74),(585,'dataPagamento',NULL,'',74),(586,'idstatusPagamento',NULL,'1',74),(587,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 17/04/2017',74),(588,'descricaoModalidade',NULL,'',74),(589,'descricaoStatusPagamento',NULL,'',74),(590,'idPagamento',NULL,'36',75),(591,'idAluno',NULL,'10',75),(592,'idmodalidade',NULL,'1',75),(593,'valorModalidade',NULL,'30',75),(594,'valorCobrado',NULL,'',75),(595,'dataVencimento',NULL,'17/03/2018',75),(596,'dataPagamento',NULL,'',75),(597,'idstatusPagamento',NULL,'1',75),(598,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 17/04/2017',75),(599,'descricaoModalidade',NULL,'',75),(600,'descricaoStatusPagamento',NULL,'',75),(601,'idAluno',NULL,'10',76),(602,'nomeAluno',NULL,'EMILLY NGUARUDA',76),(603,'dataNascimento',NULL,'11/04/2007',76),(604,'email',NULL,'emilly@gmail.com',76),(605,'sexo',NULL,'',76),(606,'cidade',NULL,'RESPLENDOR',76),(607,'bairro',NULL,'NORTE',76),(608,'rua',NULL,'EDUARDO MENEGUSSI',76),(609,'numero',NULL,'93',76),(610,'cep',NULL,'35230000',76),(611,'tel1',NULL,'(33)3263-2920',76),(612,'tel2',NULL,'',76),(613,'nomeResponsavel',NULL,'DINALVA VELASQUEZ GONÇALVES',76),(614,'parentescoResponsavel',NULL,'MÃE',76),(615,'telResponsavel',NULL,'(33)3263-2920',76),(616,'dataCadastro',NULL,'',76),(617,'cpf',NULL,'',76),(618,'idInstrutor',NULL,'1',76),(619,'NOMEINSTRUTORFICHA',NULL,'ADMINISTRADOR',76),(620,'idModalidade',NULL,'2',77),(621,'descricaoModalidade',NULL,'PILATES 3X SEG-QUA-SEX',77),(622,'valor',NULL,'210',77),(623,'idAvaliacaoFisica',NULL,'3',78),(624,'idAluno',NULL,'1',78),(625,'dataAvaliacaoFisica',NULL,'17/04/2017',78),(626,'nomeAvaliador',NULL,'ADMINISTRADOR',78),(627,'med_peso_cm',NULL,'60',78),(628,'med_altura_cm',NULL,'1,72000002861023',78),(629,'med_cervical_cm',NULL,'',78),(630,'med_torax_cm',NULL,'',78),(631,'med_quadril_cm',NULL,'',78),(632,'med_cintura_cm',NULL,'',78),(633,'med_abdomen_cm',NULL,'',78),(634,'med_bracoDireitoContraido_cm',NULL,'',78),(635,'med_bracoDireitoRelaxado_cm',NULL,'',78),(636,'med_antibracoDireito_cm',NULL,'',78),(637,'med_coxaDireita_cm',NULL,'',78),(638,'med_panturrilhaDireita_cm',NULL,'',78),(639,'med_bracoEsquerdoContraido_cm',NULL,'',78),(640,'med_bracoEsquerdoRelaxado_cm',NULL,'',78),(641,'med_antibracoEsquerdo_cm',NULL,'',78),(642,'med_coxaEsquerda_cm',NULL,'',78),(643,'med_panturrilhaEsquerda_cm',NULL,'',78),(644,'dobra_triciptal_mm',NULL,'',78),(645,'dobra_subescapular_mm',NULL,'',78),(646,'dobra_axiliar_mm',NULL,'',78),(647,'dobra_abdominal_mm',NULL,'',78),(648,'dobra_coxa_mm',NULL,'',78),(649,'dobra_panturrilha_mm',NULL,'',78),(650,'dobra_biciptal_mm',NULL,'',78),(651,'dobra_peitoral_mm',NULL,'',78),(652,'dobra_suprailiac_mm',NULL,'',78),(653,'tipoProtocolo',NULL,'',78),(654,'porcentagemGordura',NULL,'',78),(655,'NOMEALUNO',NULL,'RUAN NICOLINI',78),(656,'idAvaliacaoFisica',NULL,'6',79),(657,'idAluno',NULL,'1',79),(658,'dataAvaliacaoFisica',NULL,'17/04/2017',79),(659,'nomeAvaliador',NULL,'ADMINISTRADOR',79),(660,'med_peso_cm',NULL,'60',79),(661,'med_altura_cm',NULL,'1,73000001907349',79),(662,'med_cervical_cm',NULL,'10',79),(663,'med_torax_cm',NULL,'20',79),(664,'med_quadril_cm',NULL,'30',79),(665,'med_cintura_cm',NULL,'40',79),(666,'med_abdomen_cm',NULL,'50',79),(667,'med_bracoDireitoContraido_cm',NULL,'60',79),(668,'med_bracoDireitoRelaxado_cm',NULL,'70',79),(669,'med_antibracoDireito_cm',NULL,'80',79),(670,'med_coxaDireita_cm',NULL,'90',79),(671,'med_panturrilhaDireita_cm',NULL,'100',79),(672,'med_bracoEsquerdoContraido_cm',NULL,'110',79),(673,'med_bracoEsquerdoRelaxado_cm',NULL,'120',79),(674,'med_antibracoEsquerdo_cm',NULL,'130',79),(675,'med_coxaEsquerda_cm',NULL,'140',79),(676,'med_panturrilhaEsquerda_cm',NULL,'150',79),(677,'dobra_triciptal_mm',NULL,'240',79),(678,'dobra_subescapular_mm',NULL,'160',79),(679,'dobra_axiliar_mm',NULL,'170',79),(680,'dobra_abdominal_mm',NULL,'180',79),(681,'dobra_coxa_mm',NULL,'190',79),(682,'dobra_panturrilha_mm',NULL,'200',79),(683,'dobra_biciptal_mm',NULL,'210',79),(684,'dobra_peitoral_mm',NULL,'220',79),(685,'dobra_suprailiac_mm',NULL,'230',79),(686,'tipoProtocolo',NULL,'',79),(687,'porcentagemGordura',NULL,'',79),(688,'NOMEALUNO',NULL,'RUAN NICOLINI',79),(689,'flex_colunaCervicalFlexaoLateral_grau',NULL,'10',79),(690,'flex_troncoFlexao_grau',NULL,'20',79),(691,'flex_ombroDireitoAbducao_grau',NULL,'30',79),(692,'flex_ombroEsquerdoAbducao_grau',NULL,'40',79),(693,'flex_quadrilDireitoFlexao_grau',NULL,'50',79),(694,'flex_quadrilEsquerdoFlexao_grau',NULL,'60',79),(695,'flex_quadrilAbducao_grau',NULL,'70',79),(696,'med_peso_cm','60','60,2999992370605',80),(697,'IMC','20,0474451792521','20,1476821502319',80),(698,'med_peso_cm','60','63,2999992370605',81),(699,'IMC','20,0474451792521','21,1500544091945',81),(700,'idAvaliacaoFisica',NULL,'7',82),(701,'idAluno',NULL,'1',82),(702,'dataAvaliacaoFisica',NULL,'18/04/2017',82),(703,'nomeAvaliador',NULL,'ADMINISTRADOR',82),(704,'med_peso_cm',NULL,'70',82),(705,'med_altura_cm',NULL,'',82),(706,'med_cervical_cm',NULL,'',82),(707,'med_torax_cm',NULL,'',82),(708,'med_quadril_cm',NULL,'',82),(709,'med_cintura_cm',NULL,'',82),(710,'med_abdomen_cm',NULL,'',82),(711,'med_bracoDireitoContraido_cm',NULL,'',82),(712,'med_bracoDireitoRelaxado_cm',NULL,'',82),(713,'med_antibracoDireito_cm',NULL,'',82),(714,'med_coxaDireita_cm',NULL,'',82),(715,'med_panturrilhaDireita_cm',NULL,'',82),(716,'med_bracoEsquerdoContraido_cm',NULL,'',82),(717,'med_bracoEsquerdoRelaxado_cm',NULL,'',82),(718,'med_antibracoEsquerdo_cm',NULL,'',82),(719,'med_coxaEsquerda_cm',NULL,'',82),(720,'med_panturrilhaEsquerda_cm',NULL,'',82),(721,'dobra_triciptal_mm',NULL,'',82),(722,'dobra_subescapular_mm',NULL,'',82),(723,'dobra_axiliar_mm',NULL,'',82),(724,'dobra_abdominal_mm',NULL,'',82),(725,'dobra_coxa_mm',NULL,'',82),(726,'dobra_panturrilha_mm',NULL,'',82),(727,'dobra_biciptal_mm',NULL,'',82),(728,'dobra_peitoral_mm',NULL,'',82),(729,'dobra_suprailiac_mm',NULL,'',82),(730,'tipoProtocolo',NULL,'',82),(731,'porcentagemGordura',NULL,'',82),(732,'NOMEALUNO',NULL,'RUAN NICOLINI',82),(733,'flex_colunaCervicalFlexaoLateral_grau',NULL,'',82),(734,'flex_troncoFlexao_grau',NULL,'',82),(735,'flex_ombroDireitoAbducao_grau',NULL,'',82),(736,'flex_ombroEsquerdoAbducao_grau',NULL,'',82),(737,'flex_quadrilDireitoFlexao_grau',NULL,'',82),(738,'flex_quadrilEsquerdoFlexao_grau',NULL,'',82),(739,'flex_quadrilAbducao_grau',NULL,'',82),(740,'idAvaliacaoFisica',NULL,'8',83),(741,'idAluno',NULL,'1',83),(742,'dataAvaliacaoFisica',NULL,'18/04/2017',83),(743,'nomeAvaliador',NULL,'ADMINISTRADOR',83),(744,'med_peso_cm',NULL,'90',83),(745,'med_altura_cm',NULL,'',83),(746,'med_cervical_cm',NULL,'',83),(747,'med_torax_cm',NULL,'',83),(748,'med_quadril_cm',NULL,'',83),(749,'med_cintura_cm',NULL,'',83),(750,'med_abdomen_cm',NULL,'',83),(751,'med_bracoDireitoContraido_cm',NULL,'',83),(752,'med_bracoDireitoRelaxado_cm',NULL,'',83),(753,'med_antibracoDireito_cm',NULL,'',83),(754,'med_coxaDireita_cm',NULL,'',83),(755,'med_panturrilhaDireita_cm',NULL,'',83),(756,'med_bracoEsquerdoContraido_cm',NULL,'',83),(757,'med_bracoEsquerdoRelaxado_cm',NULL,'',83),(758,'med_antibracoEsquerdo_cm',NULL,'',83),(759,'med_coxaEsquerda_cm',NULL,'',83),(760,'med_panturrilhaEsquerda_cm',NULL,'',83),(761,'dobra_triciptal_mm',NULL,'',83),(762,'dobra_subescapular_mm',NULL,'',83),(763,'dobra_axiliar_mm',NULL,'',83),(764,'dobra_abdominal_mm',NULL,'',83),(765,'dobra_coxa_mm',NULL,'',83),(766,'dobra_panturrilha_mm',NULL,'',83),(767,'dobra_biciptal_mm',NULL,'',83),(768,'dobra_peitoral_mm',NULL,'',83),(769,'dobra_suprailiac_mm',NULL,'',83),(770,'tipoProtocolo',NULL,'',83),(771,'porcentagemGordura',NULL,'',83),(772,'NOMEALUNO',NULL,'RUAN NICOLINI',83),(773,'flex_colunaCervicalFlexaoLateral_grau',NULL,'',83),(774,'flex_troncoFlexao_grau',NULL,'',83),(775,'flex_ombroDireitoAbducao_grau',NULL,'',83),(776,'flex_ombroEsquerdoAbducao_grau',NULL,'',83),(777,'flex_quadrilDireitoFlexao_grau',NULL,'',83),(778,'flex_quadrilEsquerdoFlexao_grau',NULL,'',83),(779,'flex_quadrilAbducao_grau',NULL,'',83),(780,'idAvaliacaoFisica',NULL,'9',84),(781,'idAluno',NULL,'1',84),(782,'dataAvaliacaoFisica',NULL,'18/04/2017',84),(783,'nomeAvaliador',NULL,'ADMINISTRADOR',84),(784,'med_peso_cm',NULL,'120',84),(785,'med_altura_cm',NULL,'',84),(786,'med_cervical_cm',NULL,'',84),(787,'med_torax_cm',NULL,'',84),(788,'med_quadril_cm',NULL,'',84),(789,'med_cintura_cm',NULL,'',84),(790,'med_abdomen_cm',NULL,'',84),(791,'med_bracoDireitoContraido_cm',NULL,'',84),(792,'med_bracoDireitoRelaxado_cm',NULL,'',84),(793,'med_antibracoDireito_cm',NULL,'',84),(794,'med_coxaDireita_cm',NULL,'',84),(795,'med_panturrilhaDireita_cm',NULL,'',84),(796,'med_bracoEsquerdoContraido_cm',NULL,'',84),(797,'med_bracoEsquerdoRelaxado_cm',NULL,'',84),(798,'med_antibracoEsquerdo_cm',NULL,'',84),(799,'med_coxaEsquerda_cm',NULL,'',84),(800,'med_panturrilhaEsquerda_cm',NULL,'',84),(801,'dobra_triciptal_mm',NULL,'',84),(802,'dobra_subescapular_mm',NULL,'',84),(803,'dobra_axiliar_mm',NULL,'',84),(804,'dobra_abdominal_mm',NULL,'',84),(805,'dobra_coxa_mm',NULL,'',84),(806,'dobra_panturrilha_mm',NULL,'',84),(807,'dobra_biciptal_mm',NULL,'',84),(808,'dobra_peitoral_mm',NULL,'',84),(809,'dobra_suprailiac_mm',NULL,'',84),(810,'tipoProtocolo',NULL,'',84),(811,'porcentagemGordura',NULL,'',84),(812,'NOMEALUNO',NULL,'RUAN NICOLINI',84),(813,'flex_colunaCervicalFlexaoLateral_grau',NULL,'',84),(814,'flex_troncoFlexao_grau',NULL,'',84),(815,'flex_ombroDireitoAbducao_grau',NULL,'',84),(816,'flex_ombroEsquerdoAbducao_grau',NULL,'',84),(817,'flex_quadrilDireitoFlexao_grau',NULL,'',84),(818,'flex_quadrilEsquerdoFlexao_grau',NULL,'',84),(819,'flex_quadrilAbducao_grau',NULL,'',84),(820,'med_altura_cm','','1,73000001907349',85),(821,'med_cervical_cm','','10',85),(822,'med_torax_cm','','40',85),(823,'med_quadril_cm','','100',85),(824,'med_cintura_cm','','140',85),(825,'med_abdomen_cm','','70',85),(826,'med_bracoDireitoContraido_cm','','20',85),(827,'med_bracoDireitoRelaxado_cm','','50',85),(828,'med_antibracoDireito_cm','','80',85),(829,'med_coxaDireita_cm','','120',85),(830,'med_panturrilhaDireita_cm','','150',85),(831,'med_bracoEsquerdoContraido_cm','','30',85),(832,'med_bracoEsquerdoRelaxado_cm','','60',85),(833,'med_antibracoEsquerdo_cm','','90',85),(834,'med_coxaEsquerda_cm','','130',85),(835,'med_panturrilhaEsquerda_cm','','160',85),(836,'dobra_triciptal_mm','','60',85),(837,'dobra_subescapular_mm','','50',85),(838,'dobra_axiliar_mm','','70',85),(839,'dobra_abdominal_mm','','80',85),(840,'dobra_coxa_mm','','90',85),(841,'dobra_panturrilha_mm','','100',85),(842,'dobra_biciptal_mm','','130',85),(843,'dobra_peitoral_mm','','120',85),(844,'dobra_suprailiac_mm','','140',85),(845,'IMC','','23,3886860424608',85),(846,'flex_colunaCervicalFlexaoLateral_grau','','100',85),(847,'flex_troncoFlexao_grau','','80',85),(848,'flex_ombroDireitoAbducao_grau','','70',85),(849,'flex_ombroEsquerdoAbducao_grau','','50',85),(850,'flex_quadrilDireitoFlexao_grau','','90',85),(851,'flex_quadrilEsquerdoFlexao_grau','','80',85),(852,'dobra_triciptal_mm','','15',89),(853,'dobra_subescapular_mm','','15',89),(854,'dobra_axiliar_mm','','22',89),(855,'dobra_abdominal_mm','','15',89),(856,'dobra_coxa_mm','','15',89),(857,'dobra_panturrilha_mm','','15',89),(858,'dobra_biciptal_mm','','15',89),(859,'dobra_peitoral_mm','','15',89),(860,'dobra_suprailiac_mm','','24',89),(861,'med_peso_cm','120','80',90),(862,'med_altura_cm','','1,70000004768372',90),(863,'IMC','','27,68',90),(864,'do_BIESTILOIDE_cm','','10',91),(865,'do_BICONDILIANO_cm','','10',91),(866,'do_BIESTILOIDE_cm','','10',92),(867,'do_BICONDILIANO_cm','','10',92),(868,'do_BIESTILOIDE_cm','','10',93),(869,'do_BICONDILIANO_cm','','10',93),(870,'do_BIESTILOIDE_cm','','10',94),(871,'do_BICONDILIANO_cm','','10',94),(872,'do_BIESTILOIDE_cm','','1',95),(873,'do_BIESTILOIDE_cm','','10',96),(874,'do_BICONDILIANO_cm','','10',96),(875,'do_BIESTILOIDE_cm','10','0,0500000007450581',97),(876,'do_BICONDILIANO_cm','10','0,100000001490116',97),(877,'do_BIESTILOIDE_cm','0,0500000007450581','5',98),(878,'do_BICONDILIANO_cm','0,100000001490116','10',98),(879,'do_BIESTILOIDE_cm','0,0500000007450581','5',99),(880,'do_BICONDILIANO_cm','0,100000001490116','10',99),(881,'do_BIESTILOIDE_cm','0,0500000007450581','5',100),(882,'do_BICONDILIANO_cm','0,100000001490116','10',100),(883,'do_BIESTILOIDE_cm','0,0500000007450581','5',101),(884,'do_BIESTILOIDE_cm','0,0500000007450581','5',102),(885,'do_BIESTILOIDE_cm','5','0,5',103),(886,'do_BIESTILOIDE_cm','0,5','5',104),(887,'do_BICONDILIANO_cm','0,100000001490116','10',104),(888,'do_BIESTILOIDE_cm','5','10',105),(889,'flex_quadrilDireitoFlexao_grau','','0',106),(890,'IDADE','25','24',108),(891,'dataNascimento','10/08/1991','10/08/1992',108),(892,'dobra_suprailiac_mm','24','15',109),(893,'med_bracoDireitoContraido_cm','','32',110),(894,'med_bracoDireitoRelaxado_cm','','29,7800006866455',110),(895,'med_bracoEsquerdoContraido_cm','','32',110),(896,'med_bracoEsquerdoRelaxado_cm','','29,7800006866455',110),(897,'dobra_coxa_mm','15','36,7999992370605',110),(898,'dobra_triciptal_mm','15','20',111),(899,'dobra_coxa_mm','36,7999992370605','25',111),(900,'med_coxaDireita_cm','','36,7999992370605',112),(901,'med_coxaEsquerda_cm','','36,7999992370605',112),(902,'do_BIESTILOIDE_cm','10','6,69999980926514',112),(903,'do_BICONDILIANO_cm','10','9,19999980926514',112),(904,'do_BIESTILOIDE_cm','6,69999980926514','10',113),(905,'do_BIEPICONDILIANO_cm','','6,69999980926514',113),(906,'IMC','27,68','30,11',114),(907,'med_altura_cm','1,70000004768372','1,62999999523163',114),(908,'IMC','30,11','25,47',115),(909,'med_peso_cm','80','78',115),(910,'med_altura_cm','1,62999999523163','1,75',115),(911,'do_BIEPICONDILIANO_cm','','5',116),(912,'do_BICONDILIANO_cm','','10',116),(913,'IDADE','24','25',118),(914,'dataNascimento','10/08/1992','10/08/1991',118),(915,'med_bracoEsquerdoRelaxado_cm','29,7800006866455','31,7800006866455',119),(916,'med_quadril_cm','','10',120),(917,'med_cintura_cm','','5',120),(918,'med_bracoEsquerdoRelaxado_cm','31,7800006866455','31',121),(919,'idusuario',NULL,'3',122),(920,'nomeUsuario',NULL,'TESTE',122),(921,'username',NULL,'teste',122),(922,'senha',NULL,'698DC19D489C4E4DB73E28A713EAB07B',122),(923,'ativo',NULL,'True',122),(924,'administrador',NULL,'False',122),(925,'atendente',NULL,'False',122),(926,'instrutor',NULL,'False',122),(927,'avaliador',NULL,'False',122),(928,'administrador','True','False',123),(929,'administrador','False','True',124),(930,'atendente','False','True',125),(931,'atendente','True','False',126),(932,'atendente','False','True',127),(933,'NOMEINSTRUTORFICHA','ADMINISTRADOR','ADMINISTRADO',128),(934,'idusuario',NULL,'4',130),(935,'nomeUsuario',NULL,'INSTRUTOR',130),(936,'username',NULL,'instrutor',130),(937,'senha',NULL,'65A2607051E574A9C4F23433229D426A',130),(938,'ativo',NULL,'True',130),(939,'administrador',NULL,'False',130),(940,'atendente',NULL,'False',130),(941,'instrutor',NULL,'True',130),(942,'avaliador',NULL,'False',130),(943,'idInstrutor','1','4',131),(944,'NOMEINSTRUTORFICHA','ADMINISTRADOR','INSTRUTOR',131),(945,'idAluno',NULL,'1',132),(946,'idmodalidade',NULL,'2',132),(947,'dataInscrição',NULL,'28/04/2017',132),(948,'diavencimento',NULL,'28',132),(949,'DESCRICAOMODALIDADE',NULL,'',132),(950,'valor',NULL,'',132),(951,'idPagamento',NULL,'37',133),(952,'idAluno',NULL,'1',133),(953,'idmodalidade',NULL,'2',133),(954,'valorModalidade',NULL,'210',133),(955,'valorCobrado',NULL,'',133),(956,'dataVencimento',NULL,'28/04/2017',133),(957,'dataPagamento',NULL,'',133),(958,'idstatusPagamento',NULL,'1',133),(959,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',133),(960,'descricaoModalidade',NULL,'',133),(961,'descricaoStatusPagamento',NULL,'',133),(962,'idPagamento',NULL,'38',134),(963,'idAluno',NULL,'1',134),(964,'idmodalidade',NULL,'2',134),(965,'valorModalidade',NULL,'210',134),(966,'valorCobrado',NULL,'',134),(967,'dataVencimento',NULL,'28/05/2017',134),(968,'dataPagamento',NULL,'',134),(969,'idstatusPagamento',NULL,'1',134),(970,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',134),(971,'descricaoModalidade',NULL,'',134),(972,'descricaoStatusPagamento',NULL,'',134),(973,'idPagamento',NULL,'39',135),(974,'idAluno',NULL,'1',135),(975,'idmodalidade',NULL,'2',135),(976,'valorModalidade',NULL,'210',135),(977,'valorCobrado',NULL,'',135),(978,'dataVencimento',NULL,'28/06/2017',135),(979,'dataPagamento',NULL,'',135),(980,'idstatusPagamento',NULL,'1',135),(981,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',135),(982,'descricaoModalidade',NULL,'',135),(983,'descricaoStatusPagamento',NULL,'',135),(984,'idPagamento',NULL,'40',136),(985,'idAluno',NULL,'1',136),(986,'idmodalidade',NULL,'2',136),(987,'valorModalidade',NULL,'210',136),(988,'valorCobrado',NULL,'',136),(989,'dataVencimento',NULL,'28/07/2017',136),(990,'dataPagamento',NULL,'',136),(991,'idstatusPagamento',NULL,'1',136),(992,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',136),(993,'descricaoModalidade',NULL,'',136),(994,'descricaoStatusPagamento',NULL,'',136),(995,'idPagamento',NULL,'41',137),(996,'idAluno',NULL,'1',137),(997,'idmodalidade',NULL,'2',137),(998,'valorModalidade',NULL,'210',137),(999,'valorCobrado',NULL,'',137),(1000,'dataVencimento',NULL,'28/08/2017',137),(1001,'dataPagamento',NULL,'',137),(1002,'idstatusPagamento',NULL,'1',137),(1003,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',137),(1004,'descricaoModalidade',NULL,'',137),(1005,'descricaoStatusPagamento',NULL,'',137),(1006,'idPagamento',NULL,'42',138),(1007,'idAluno',NULL,'1',138),(1008,'idmodalidade',NULL,'2',138),(1009,'valorModalidade',NULL,'210',138),(1010,'valorCobrado',NULL,'',138),(1011,'dataVencimento',NULL,'28/09/2017',138),(1012,'dataPagamento',NULL,'',138),(1013,'idstatusPagamento',NULL,'1',138),(1014,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',138),(1015,'descricaoModalidade',NULL,'',138),(1016,'descricaoStatusPagamento',NULL,'',138),(1017,'idPagamento',NULL,'43',139),(1018,'idAluno',NULL,'1',139),(1019,'idmodalidade',NULL,'2',139),(1020,'valorModalidade',NULL,'210',139),(1021,'valorCobrado',NULL,'',139),(1022,'dataVencimento',NULL,'28/10/2017',139),(1023,'dataPagamento',NULL,'',139),(1024,'idstatusPagamento',NULL,'1',139),(1025,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',139),(1026,'descricaoModalidade',NULL,'',139),(1027,'descricaoStatusPagamento',NULL,'',139),(1028,'idPagamento',NULL,'44',140),(1029,'idAluno',NULL,'1',140),(1030,'idmodalidade',NULL,'2',140),(1031,'valorModalidade',NULL,'210',140),(1032,'valorCobrado',NULL,'',140),(1033,'dataVencimento',NULL,'28/11/2017',140),(1034,'dataPagamento',NULL,'',140),(1035,'idstatusPagamento',NULL,'1',140),(1036,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',140),(1037,'descricaoModalidade',NULL,'',140),(1038,'descricaoStatusPagamento',NULL,'',140),(1039,'idPagamento',NULL,'45',141),(1040,'idAluno',NULL,'1',141),(1041,'idmodalidade',NULL,'2',141),(1042,'valorModalidade',NULL,'210',141),(1043,'valorCobrado',NULL,'',141),(1044,'dataVencimento',NULL,'28/12/2017',141),(1045,'dataPagamento',NULL,'',141),(1046,'idstatusPagamento',NULL,'1',141),(1047,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',141),(1048,'descricaoModalidade',NULL,'',141),(1049,'descricaoStatusPagamento',NULL,'',141),(1050,'idPagamento',NULL,'46',142),(1051,'idAluno',NULL,'1',142),(1052,'idmodalidade',NULL,'2',142),(1053,'valorModalidade',NULL,'210',142),(1054,'valorCobrado',NULL,'',142),(1055,'dataVencimento',NULL,'28/01/2018',142),(1056,'dataPagamento',NULL,'',142),(1057,'idstatusPagamento',NULL,'1',142),(1058,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',142),(1059,'descricaoModalidade',NULL,'',142),(1060,'descricaoStatusPagamento',NULL,'',142),(1061,'idPagamento',NULL,'47',143),(1062,'idAluno',NULL,'1',143),(1063,'idmodalidade',NULL,'2',143),(1064,'valorModalidade',NULL,'210',143),(1065,'valorCobrado',NULL,'',143),(1066,'dataVencimento',NULL,'28/02/2018',143),(1067,'dataPagamento',NULL,'',143),(1068,'idstatusPagamento',NULL,'1',143),(1069,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',143),(1070,'descricaoModalidade',NULL,'',143),(1071,'descricaoStatusPagamento',NULL,'',143),(1072,'idPagamento',NULL,'48',144),(1073,'idAluno',NULL,'1',144),(1074,'idmodalidade',NULL,'2',144),(1075,'valorModalidade',NULL,'210',144),(1076,'valorCobrado',NULL,'',144),(1077,'dataVencimento',NULL,'28/03/2018',144),(1078,'dataPagamento',NULL,'',144),(1079,'idstatusPagamento',NULL,'1',144),(1080,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',144),(1081,'descricaoModalidade',NULL,'',144),(1082,'descricaoStatusPagamento',NULL,'',144),(1083,'idAluno',NULL,'10',145),(1084,'idmodalidade',NULL,'2',145),(1085,'dataInscrição',NULL,'28/04/2017',145),(1086,'diavencimento',NULL,'28',145),(1087,'DESCRICAOMODALIDADE',NULL,'',145),(1088,'valor',NULL,'',145),(1089,'idPagamento',NULL,'49',146),(1090,'idAluno',NULL,'10',146),(1091,'idmodalidade',NULL,'2',146),(1092,'valorModalidade',NULL,'210',146),(1093,'valorCobrado',NULL,'',146),(1094,'dataVencimento',NULL,'28/04/2017',146),(1095,'dataPagamento',NULL,'',146),(1096,'idstatusPagamento',NULL,'1',146),(1097,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',146),(1098,'descricaoModalidade',NULL,'',146),(1099,'descricaoStatusPagamento',NULL,'',146),(1100,'idPagamento',NULL,'50',147),(1101,'idAluno',NULL,'10',147),(1102,'idmodalidade',NULL,'2',147),(1103,'valorModalidade',NULL,'210',147),(1104,'valorCobrado',NULL,'',147),(1105,'dataVencimento',NULL,'28/05/2017',147),(1106,'dataPagamento',NULL,'',147),(1107,'idstatusPagamento',NULL,'1',147),(1108,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',147),(1109,'descricaoModalidade',NULL,'',147),(1110,'descricaoStatusPagamento',NULL,'',147),(1111,'idPagamento',NULL,'51',148),(1112,'idAluno',NULL,'10',148),(1113,'idmodalidade',NULL,'2',148),(1114,'valorModalidade',NULL,'210',148),(1115,'valorCobrado',NULL,'',148),(1116,'dataVencimento',NULL,'28/06/2017',148),(1117,'dataPagamento',NULL,'',148),(1118,'idstatusPagamento',NULL,'1',148),(1119,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',148),(1120,'descricaoModalidade',NULL,'',148),(1121,'descricaoStatusPagamento',NULL,'',148),(1122,'idPagamento',NULL,'52',149),(1123,'idAluno',NULL,'10',149),(1124,'idmodalidade',NULL,'2',149),(1125,'valorModalidade',NULL,'210',149),(1126,'valorCobrado',NULL,'',149),(1127,'dataVencimento',NULL,'28/07/2017',149),(1128,'dataPagamento',NULL,'',149),(1129,'idstatusPagamento',NULL,'1',149),(1130,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',149),(1131,'descricaoModalidade',NULL,'',149),(1132,'descricaoStatusPagamento',NULL,'',149),(1133,'idPagamento',NULL,'53',150),(1134,'idAluno',NULL,'10',150),(1135,'idmodalidade',NULL,'2',150),(1136,'valorModalidade',NULL,'210',150),(1137,'valorCobrado',NULL,'',150),(1138,'dataVencimento',NULL,'28/08/2017',150),(1139,'dataPagamento',NULL,'',150),(1140,'idstatusPagamento',NULL,'1',150),(1141,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',150),(1142,'descricaoModalidade',NULL,'',150),(1143,'descricaoStatusPagamento',NULL,'',150),(1144,'idPagamento',NULL,'54',151),(1145,'idAluno',NULL,'10',151),(1146,'idmodalidade',NULL,'2',151),(1147,'valorModalidade',NULL,'210',151),(1148,'valorCobrado',NULL,'',151),(1149,'dataVencimento',NULL,'28/09/2017',151),(1150,'dataPagamento',NULL,'',151),(1151,'idstatusPagamento',NULL,'1',151),(1152,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',151),(1153,'descricaoModalidade',NULL,'',151),(1154,'descricaoStatusPagamento',NULL,'',151),(1155,'idPagamento',NULL,'55',152),(1156,'idAluno',NULL,'10',152),(1157,'idmodalidade',NULL,'2',152),(1158,'valorModalidade',NULL,'210',152),(1159,'valorCobrado',NULL,'',152),(1160,'dataVencimento',NULL,'28/10/2017',152),(1161,'dataPagamento',NULL,'',152),(1162,'idstatusPagamento',NULL,'1',152),(1163,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',152),(1164,'descricaoModalidade',NULL,'',152),(1165,'descricaoStatusPagamento',NULL,'',152),(1166,'idPagamento',NULL,'56',153),(1167,'idAluno',NULL,'10',153),(1168,'idmodalidade',NULL,'2',153),(1169,'valorModalidade',NULL,'210',153),(1170,'valorCobrado',NULL,'',153),(1171,'dataVencimento',NULL,'28/11/2017',153),(1172,'dataPagamento',NULL,'',153),(1173,'idstatusPagamento',NULL,'1',153),(1174,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',153),(1175,'descricaoModalidade',NULL,'',153),(1176,'descricaoStatusPagamento',NULL,'',153),(1177,'idPagamento',NULL,'57',154),(1178,'idAluno',NULL,'10',154),(1179,'idmodalidade',NULL,'2',154),(1180,'valorModalidade',NULL,'210',154),(1181,'valorCobrado',NULL,'',154),(1182,'dataVencimento',NULL,'28/12/2017',154),(1183,'dataPagamento',NULL,'',154),(1184,'idstatusPagamento',NULL,'1',154),(1185,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',154),(1186,'descricaoModalidade',NULL,'',154),(1187,'descricaoStatusPagamento',NULL,'',154),(1188,'idPagamento',NULL,'58',155),(1189,'idAluno',NULL,'10',155),(1190,'idmodalidade',NULL,'2',155),(1191,'valorModalidade',NULL,'210',155),(1192,'valorCobrado',NULL,'',155),(1193,'dataVencimento',NULL,'28/01/2018',155),(1194,'dataPagamento',NULL,'',155),(1195,'idstatusPagamento',NULL,'1',155),(1196,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',155),(1197,'descricaoModalidade',NULL,'',155),(1198,'descricaoStatusPagamento',NULL,'',155),(1199,'idPagamento',NULL,'59',156),(1200,'idAluno',NULL,'10',156),(1201,'idmodalidade',NULL,'2',156),(1202,'valorModalidade',NULL,'210',156),(1203,'valorCobrado',NULL,'',156),(1204,'dataVencimento',NULL,'28/02/2018',156),(1205,'dataPagamento',NULL,'',156),(1206,'idstatusPagamento',NULL,'1',156),(1207,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',156),(1208,'descricaoModalidade',NULL,'',156),(1209,'descricaoStatusPagamento',NULL,'',156),(1210,'idPagamento',NULL,'60',157),(1211,'idAluno',NULL,'10',157),(1212,'idmodalidade',NULL,'2',157),(1213,'valorModalidade',NULL,'210',157),(1214,'valorCobrado',NULL,'',157),(1215,'dataVencimento',NULL,'28/03/2018',157),(1216,'dataPagamento',NULL,'',157),(1217,'idstatusPagamento',NULL,'1',157),(1218,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 28/04/2017',157),(1219,'descricaoModalidade',NULL,'',157),(1220,'descricaoStatusPagamento',NULL,'',157),(1221,'idAnamnese',NULL,'3',158),(1222,'idAluno',NULL,'9',158),(1223,'frequenciaSemanalTreino',NULL,'3',158),(1224,'peso',NULL,'50',158),(1225,'altura',NULL,'1,39999997615814',158),(1226,'qtdHorasSono',NULL,'6',158),(1227,'qtdRefeicoesDia',NULL,'',158),(1228,'dieta',NULL,'True',158),(1229,'suplementacao',NULL,'False',158),(1230,'dataAnamnese',NULL,'29/04/2017',158),(1231,'NOMEALUNO',NULL,'LAYS ANHA',158),(1232,'consumoAlcoolico',NULL,'False',158),(1233,'fuma',NULL,'False',158),(1234,'informacaoAdicional',NULL,'',158),(1235,'idObjetivo',NULL,'1',158),(1236,'DESCRICAOOBJETIVO',NULL,'PERDA DE PESO',158),(1237,'nomeAvaliador',NULL,'ADMINISTRADOR',158),(1238,'idAnamnese',NULL,'4',159),(1239,'idAluno',NULL,'1',159),(1240,'frequenciaSemanalTreino',NULL,'3',159),(1241,'peso',NULL,'68',159),(1242,'altura',NULL,'1,73300004005432',159),(1243,'qtdHorasSono',NULL,'6',159),(1244,'qtdRefeicoesDia',NULL,'4',159),(1245,'dieta',NULL,'False',159),(1246,'suplementacao',NULL,'False',159),(1247,'dataAnamnese',NULL,'29/04/2017',159),(1248,'NOMEALUNO',NULL,'RUAN NICOLINI',159),(1249,'consumoAlcoolico',NULL,'False',159),(1250,'fuma',NULL,'False',159),(1251,'informacaoAdicional',NULL,'',159),(1252,'idObjetivo',NULL,'2',159),(1253,'DESCRICAOOBJETIVO',NULL,'GANHO DE MASSA MUSCULAR',159),(1254,'nomeAvaliador',NULL,'ADMINISTRADOR',159),(1255,'idAnamnese',NULL,'5',160),(1256,'idAluno',NULL,'1',160),(1257,'frequenciaSemanalTreino',NULL,'',160),(1258,'peso',NULL,'65',160),(1259,'altura',NULL,'1,70000004768372',160),(1260,'qtdHorasSono',NULL,'',160),(1261,'qtdRefeicoesDia',NULL,'5',160),(1262,'dieta',NULL,'False',160),(1263,'suplementacao',NULL,'False',160),(1264,'dataAnamnese',NULL,'29/04/2017',160),(1265,'NOMEALUNO',NULL,'RUAN NICOLINI',160),(1266,'consumoAlcoolico',NULL,'False',160),(1267,'fuma',NULL,'False',160),(1268,'informacaoAdicional',NULL,'',160),(1269,'idObjetivo',NULL,'3',160),(1270,'DESCRICAOOBJETIVO',NULL,'DEFINIÇÃO',160),(1271,'nomeAvaliador',NULL,'ADMINISTRADOR',160),(1272,'idObjetivo','1','4',161),(1273,'DESCRICAOOBJETIVO','PERDA DE PESO','CORREÇÃO E REABILITAÇÃO',161),(1274,'valorCobrado','','30',162),(1275,'dataPagamento','','29/04/2017',162),(1276,'idstatusPagamento','1','2',162),(1277,'LOGUsuarioResponsavel','GERADO POR: ADMINISTRADOR em 16/04/2017','PAGAMENTO RECEBIDO POR: ADMINISTRADOR EM 29/04/201',162),(1278,'valorCobrado','','30',163),(1279,'dataPagamento','','29/04/2017',163),(1280,'idstatusPagamento','1','2',163),(1281,'LOGUsuarioResponsavel','Pagamento cancelado por ADMINISTRADOR em 16/04/201','PAGAMENTO RECEBIDO POR: ADMINISTRADOR EM 29/04/201',163),(1282,'valorCobrado','','0',164),(1283,'dataPagamento','','29/04/2017',164),(1284,'idstatusPagamento','1','3',164),(1285,'LOGUsuarioResponsavel','GERADO POR: ADMINISTRADOR em 28/04/2017','ISENÇÃO CONCEDIDA POR: ADMINISTRADOR EM 29/04/2017',164),(1286,'valorCobrado','0','',165),(1287,'dataPagamento','29/04/2017','',165),(1288,'idstatusPagamento','3','1',165),(1289,'LOGUsuarioResponsavel','ISENÇÃO CONCEDIDA POR: ADMINISTRADOR EM 29/04/2017','Isenção cancelada por ADMINISTRADOR em 29/04/2017',165),(1290,'valorCobrado','','210',166),(1291,'dataPagamento','','29/04/2017',166),(1292,'idstatusPagamento','1','2',166),(1293,'LOGUsuarioResponsavel','Isenção cancelada por ADMINISTRADOR em 29/04/2017','PAGAMENTO RECEBIDO POR: ADMINISTRADOR EM 29/04/201',166),(1294,'descricaoModalidade','PILATES 3X SEG-QUA-SEX','PILATES',167),(1295,'valorCobrado','','0',168),(1296,'dataPagamento','','01/05/2017',168),(1297,'idstatusPagamento','1','3',168),(1298,'LOGUsuarioResponsavel','GERADO POR: ADMINISTRADOR em 17/04/2017','ISENÇÃO CONCEDIDA POR: ADMINISTRADOR EM 01/05/2017',168),(1299,'IDADE','10','11',169),(1300,'dataNascimento','11/04/2007','11/04/2006',169),(1301,'idYoutube','','nYBcAihJ0Ro',170),(1302,'nomeExercicio','ELEVAÇÃO FRONTAL COM POLIA BAIXA','ELEVAÇÃO FRONTAL COM POLIA BAIXA KKKRRRSSS',171),(1303,'idYoutube','bQmKTKObDfU','nYBcAihJ0Ro&t',172),(1304,'idYoutube','nYBcAihJ0Ro&t','nYBcAihJ0Ro',173),(1305,'idAnamnese',NULL,'8',174),(1306,'idAluno',NULL,'1',174),(1307,'frequenciaSemanalTreino',NULL,'5',174),(1308,'peso',NULL,'60',174),(1309,'altura',NULL,'1,70000004768372',174),(1310,'qtdHorasSono',NULL,'6',174),(1311,'qtdRefeicoesDia',NULL,'6',174),(1312,'dieta',NULL,'True',174),(1313,'suplementacao',NULL,'True',174),(1314,'dataAnamnese',NULL,'30/05/2017',174),(1315,'NOMEALUNO',NULL,'RUAN NIC',174),(1316,'consumoAlcoolico',NULL,'True',174),(1317,'fuma',NULL,'True',174),(1318,'informacaoAdicional',NULL,'Nada de informações adicionais.',174),(1319,'idObjetivo',NULL,'2',174),(1320,'DESCRICAOOBJETIVO',NULL,'GANHO DE MASSA MUSCULAR',174),(1321,'nomeAvaliador',NULL,'ADMINISTRADOR',174),(1322,'idAluno',NULL,'14',175),(1323,'idmodalidade',NULL,'2',175),(1324,'dataInscrição',NULL,'31/05/2017',175),(1325,'diavencimento',NULL,'31',175),(1326,'DESCRICAOMODALIDADE',NULL,'',175),(1327,'valor',NULL,'',175),(1328,'idPagamento',NULL,'61',176),(1329,'idAluno',NULL,'14',176),(1330,'idmodalidade',NULL,'2',176),(1331,'valorModalidade',NULL,'210',176),(1332,'valorCobrado',NULL,'',176),(1333,'dataVencimento',NULL,'31/05/2017',176),(1334,'dataPagamento',NULL,'',176),(1335,'idstatusPagamento',NULL,'1',176),(1336,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 31/05/2017',176),(1337,'descricaoModalidade',NULL,'',176),(1338,'descricaoStatusPagamento',NULL,'',176),(1339,'idPagamento',NULL,'62',177),(1340,'idAluno',NULL,'14',177),(1341,'idmodalidade',NULL,'2',177),(1342,'valorModalidade',NULL,'210',177),(1343,'valorCobrado',NULL,'',177),(1344,'dataVencimento',NULL,'30/06/2017',177),(1345,'dataPagamento',NULL,'',177),(1346,'idstatusPagamento',NULL,'1',177),(1347,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 31/05/2017',177),(1348,'descricaoModalidade',NULL,'',177),(1349,'descricaoStatusPagamento',NULL,'',177),(1350,'idPagamento',NULL,'63',178),(1351,'idAluno',NULL,'14',178),(1352,'idmodalidade',NULL,'2',178),(1353,'valorModalidade',NULL,'210',178),(1354,'valorCobrado',NULL,'',178),(1355,'dataVencimento',NULL,'31/07/2017',178),(1356,'dataPagamento',NULL,'',178),(1357,'idstatusPagamento',NULL,'1',178),(1358,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 31/05/2017',178),(1359,'descricaoModalidade',NULL,'',178),(1360,'descricaoStatusPagamento',NULL,'',178),(1361,'idPagamento',NULL,'64',179),(1362,'idAluno',NULL,'14',179),(1363,'idmodalidade',NULL,'2',179),(1364,'valorModalidade',NULL,'210',179),(1365,'valorCobrado',NULL,'',179),(1366,'dataVencimento',NULL,'31/08/2017',179),(1367,'dataPagamento',NULL,'',179),(1368,'idstatusPagamento',NULL,'1',179),(1369,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 31/05/2017',179),(1370,'descricaoModalidade',NULL,'',179),(1371,'descricaoStatusPagamento',NULL,'',179),(1372,'idPagamento',NULL,'65',180),(1373,'idAluno',NULL,'14',180),(1374,'idmodalidade',NULL,'2',180),(1375,'valorModalidade',NULL,'210',180),(1376,'valorCobrado',NULL,'',180),(1377,'dataVencimento',NULL,'30/09/2017',180),(1378,'dataPagamento',NULL,'',180),(1379,'idstatusPagamento',NULL,'1',180),(1380,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 31/05/2017',180),(1381,'descricaoModalidade',NULL,'',180),(1382,'descricaoStatusPagamento',NULL,'',180),(1383,'idPagamento',NULL,'66',181),(1384,'idAluno',NULL,'14',181),(1385,'idmodalidade',NULL,'2',181),(1386,'valorModalidade',NULL,'210',181),(1387,'valorCobrado',NULL,'',181),(1388,'dataVencimento',NULL,'31/10/2017',181),(1389,'dataPagamento',NULL,'',181),(1390,'idstatusPagamento',NULL,'1',181),(1391,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 31/05/2017',181),(1392,'descricaoModalidade',NULL,'',181),(1393,'descricaoStatusPagamento',NULL,'',181),(1394,'idPagamento',NULL,'67',182),(1395,'idAluno',NULL,'14',182),(1396,'idmodalidade',NULL,'2',182),(1397,'valorModalidade',NULL,'210',182),(1398,'valorCobrado',NULL,'',182),(1399,'dataVencimento',NULL,'30/11/2017',182),(1400,'dataPagamento',NULL,'',182),(1401,'idstatusPagamento',NULL,'1',182),(1402,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 31/05/2017',182),(1403,'descricaoModalidade',NULL,'',182),(1404,'descricaoStatusPagamento',NULL,'',182),(1405,'idPagamento',NULL,'68',183),(1406,'idAluno',NULL,'14',183),(1407,'idmodalidade',NULL,'2',183),(1408,'valorModalidade',NULL,'210',183),(1409,'valorCobrado',NULL,'',183),(1410,'dataVencimento',NULL,'31/12/2017',183),(1411,'dataPagamento',NULL,'',183),(1412,'idstatusPagamento',NULL,'1',183),(1413,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 31/05/2017',183),(1414,'descricaoModalidade',NULL,'',183),(1415,'descricaoStatusPagamento',NULL,'',183),(1416,'idPagamento',NULL,'69',184),(1417,'idAluno',NULL,'14',184),(1418,'idmodalidade',NULL,'2',184),(1419,'valorModalidade',NULL,'210',184),(1420,'valorCobrado',NULL,'',184),(1421,'dataVencimento',NULL,'31/01/2018',184),(1422,'dataPagamento',NULL,'',184),(1423,'idstatusPagamento',NULL,'1',184),(1424,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 31/05/2017',184),(1425,'descricaoModalidade',NULL,'',184),(1426,'descricaoStatusPagamento',NULL,'',184),(1427,'idPagamento',NULL,'70',185),(1428,'idAluno',NULL,'14',185),(1429,'idmodalidade',NULL,'2',185),(1430,'valorModalidade',NULL,'210',185),(1431,'valorCobrado',NULL,'',185),(1432,'dataVencimento',NULL,'28/02/2018',185),(1433,'dataPagamento',NULL,'',185),(1434,'idstatusPagamento',NULL,'1',185),(1435,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 31/05/2017',185),(1436,'descricaoModalidade',NULL,'',185),(1437,'descricaoStatusPagamento',NULL,'',185),(1438,'idPagamento',NULL,'71',186),(1439,'idAluno',NULL,'14',186),(1440,'idmodalidade',NULL,'2',186),(1441,'valorModalidade',NULL,'210',186),(1442,'valorCobrado',NULL,'',186),(1443,'dataVencimento',NULL,'31/03/2018',186),(1444,'dataPagamento',NULL,'',186),(1445,'idstatusPagamento',NULL,'1',186),(1446,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 31/05/2017',186),(1447,'descricaoModalidade',NULL,'',186),(1448,'descricaoStatusPagamento',NULL,'',186),(1449,'idPagamento',NULL,'72',187),(1450,'idAluno',NULL,'14',187),(1451,'idmodalidade',NULL,'2',187),(1452,'valorModalidade',NULL,'210',187),(1453,'valorCobrado',NULL,'',187),(1454,'dataVencimento',NULL,'30/04/2018',187),(1455,'dataPagamento',NULL,'',187),(1456,'idstatusPagamento',NULL,'1',187),(1457,'LOGUsuarioResponsavel',NULL,'GERADO POR: ADMINISTRADOR em 31/05/2017',187),(1458,'descricaoModalidade',NULL,'',187),(1459,'descricaoStatusPagamento',NULL,'',187);
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
INSERT INTO `configuracaounidade` (`idConfiguracaoUnidade`, `cnpj`, `razaoSocial`, `nomeFantasia`, `telefone`, `vencimentoFicha`, `videoYoutube`, `avaAnamnese`, `avaFisica`, `avaPostural`, `avaDadosClinicos`) VALUES (1,'10','academia','academia','33',3,1,1,1,0,0);
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
INSERT INTO `exercicio` (`idExercicio`, `nomeExercicio`, `idEquipamento`, `idGrupoExercicio`, `tipoMedida`, `idYoutube`) VALUES (3,'SUPINO RETO',1,1,'U','nYBcAihJ0Ro'),(4,'REMADA ALTA',3,10,'U','nYBcAihJ0Ro'),(5,'ROSCA ALTERNADA COM HALTERES',19,4,'U',NULL),(6,'ROSCA BÍCEPS POLIA BAIXA',13,4,'U',NULL),(7,'ROSCA DIRETA COM BARRA RETA',15,4,'U',NULL),(8,'ROSCA DIRETA COM BARRA W',16,4,'U',NULL),(9,'ROSCA DIRETA COM BARRA H',16,4,'U',NULL),(10,'TRICEPS BANCO',17,7,'U',NULL),(11,'DESENVOLVIMENTO COM HALTERES',19,9,'U',NULL),(12,'ELEVAÇÃO FRONTAL COM POLIA BAIXA KKKRRRSSS',13,9,'U',NULL),(13,'PUXADA FRENTE ABERTA',13,10,'U',NULL),(14,'PUXADA FRENTE FECHADA',13,10,'U',NULL),(15,'PUXADA TRÁS',14,10,'U',NULL),(16,'REMADA UNILATERAL BANCO',19,10,'U',NULL),(17,'REMADA ALTA BARRA',15,11,'U',NULL),(18,'ENCOLHIMENTO FRENTE COM BARRA',15,11,'U',NULL),(19,'LEG PRESS 45',5,12,'U',NULL),(20,'HACK SQUAT',20,12,'U',NULL),(21,'CADEIRA EXTENSORA',11,12,'U',NULL),(22,'PANTURRILHA NO LEGPRESS',5,13,'U',NULL),(23,'MESA FLEXORA',12,14,'U',NULL),(24,'RETO SOLO',18,3,'U',NULL),(25,'RETO POLIA ALTA',13,3,'U',NULL),(26,'INFRA SOLO',18,3,'U',NULL),(27,'OBRIQUO EM PÉ POLIA ALTA',21,3,'U',NULL),(28,'DESENVOLVIMENTO CONVERGENTE',22,9,'U',NULL),(29,'SUPINO VERTICAL',2,1,'U',NULL),(30,'PULL OVER COM BARRA',15,1,'U',NULL),(31,'TRICEPS CORDA',13,7,'U',NULL),(32,'TRICEPS TESTA NO BANCO RETO',15,7,'U',NULL),(33,'TRICEPS APARELHO',23,7,'U',NULL),(34,'SUPINO INCLINADO',2,1,'U',NULL);
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
INSERT INTO `interface` (`idInterface`, `idModulo`, `descricaoInterface`, `TELA`) VALUES (1,1,'ALUNO','01001'),(2,1,'PAGAMENTO','01002'),(3,1,'EQUIPAMENTO','01003'),(4,1,'GRUPOEXERCICIO','01004'),(5,1,'FICHAPREDEFINIDA','01005'),(6,1,'EXERCICIO','01006'),(7,1,'PATOLOGIA','01007'),(8,1,'USUARIO','01008'),(9,1,'BACKUP','01009'),(12,1,'MODALIDADE','01012'),(14,1,'FICHAALUNO','01014'),(16,1,'ANAMNESE','01016'),(17,1,'AVALIACAO FÍSICA','01017');
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
INSERT INTO `logsistema` (`idlogSistema`, `tabelaBanco`, `dataLog`, `horaLog`, `idUsuario`, `nomeUsuario`, `descricaoInterface`, `idPkRegistro`, `idPkRegistro2`, `tipoCRUD`) VALUES (1,'exercicio','2017-04-15','14:53:16',1,'ADMINISTRADOR','F01006',3,NULL,'modify'),(2,'exercicio','2017-04-15','14:58:37',1,'ADMINISTRADOR','F01006',3,NULL,'modify'),(3,'usuario','2017-04-15','16:12:54',1,'ADMINISTRADOR','F01008',2,NULL,'insert'),(4,'usuario','2017-04-15','16:13:00',1,'ADMINISTRADOR','F01008',1,NULL,'modify'),(5,'patologia','2017-04-15','16:15:16',1,'ADMINISTRADOR','F01007',1,NULL,'insert'),(6,'patologia','2017-04-15','16:15:25',1,'ADMINISTRADOR','F01007',2,NULL,'insert'),(7,'patologia','2017-04-15','16:16:02',1,'ADMINISTRADOR','F01007',3,NULL,'insert'),(8,'patologia','2017-04-15','16:16:14',1,'ADMINISTRADOR','F01007',4,NULL,'insert'),(9,'patologia','2017-04-15','16:16:23',1,'ADMINISTRADOR','F01007',5,NULL,'insert'),(10,'ANAMNESE','2017-04-15','16:16:39',1,'ADMINISTRADOR','F01016',1,NULL,'insert'),(11,'ALUNO','2017-04-15','16:19:00',1,'ADMINISTRADOR','F01001',1,NULL,'insert'),(12,'ALUNOMODALIDADE','2017-04-15','16:19:06',1,'ADMINISTRADOR','F01001',1,1,'insert'),(13,'pagamento','2017-04-15','16:19:06',1,'ADMINISTRADOR','F01001',1,NULL,'insert'),(14,'pagamento','2017-04-15','16:19:07',1,'ADMINISTRADOR','F01001',2,NULL,'insert'),(15,'pagamento','2017-04-15','16:19:07',1,'ADMINISTRADOR','F01001',3,NULL,'insert'),(16,'pagamento','2017-04-15','16:19:07',1,'ADMINISTRADOR','F01001',4,NULL,'insert'),(17,'pagamento','2017-04-15','16:19:07',1,'ADMINISTRADOR','F01001',5,NULL,'insert'),(18,'pagamento','2017-04-15','16:19:07',1,'ADMINISTRADOR','F01001',6,NULL,'insert'),(19,'pagamento','2017-04-15','16:19:07',1,'ADMINISTRADOR','F01001',7,NULL,'insert'),(20,'pagamento','2017-04-15','16:19:07',1,'ADMINISTRADOR','F01001',8,NULL,'insert'),(21,'pagamento','2017-04-15','16:19:07',1,'ADMINISTRADOR','F01001',9,NULL,'insert'),(22,'pagamento','2017-04-15','16:19:08',1,'ADMINISTRADOR','F01001',10,NULL,'insert'),(23,'pagamento','2017-04-15','16:19:08',1,'ADMINISTRADOR','F01001',11,NULL,'insert'),(24,'pagamento','2017-04-15','16:19:08',1,'ADMINISTRADOR','F01001',12,NULL,'insert'),(25,'ALUNO','2017-04-15','16:25:41',1,'ADMINISTRADOR','F01001',1,NULL,'modify'),(26,'FICHAALUNO','2017-04-15','16:42:40',1,'ADMINISTRADOR','F01014',1,NULL,'insert'),(27,'ALUNO','2017-04-15','18:01:07',1,'ADMINISTRADOR','F01001',1,NULL,'modify'),(28,'ALUNO','2017-04-15','18:24:36',1,'ADMINISTRADOR','F01001',1,NULL,'modify'),(29,'pagamento','2017-04-16','11:20:34',1,'ADMINISTRADOR','F01010',1,NULL,'modify'),(30,'pagamento','2017-04-16','11:21:49',1,'ADMINISTRADOR','F01010',2,NULL,'modify'),(31,'pagamento','2017-04-16','11:22:22',1,'ADMINISTRADOR','F01002',2,NULL,'modify'),(32,'pagamento','2017-04-16','11:23:07',1,'ADMINISTRADOR','F01002',1,NULL,'modify'),(33,'pagamento','2017-04-16','11:27:12',1,'ADMINISTRADOR','F01010',1,NULL,'modify'),(34,'pagamento','2017-04-16','11:27:17',1,'ADMINISTRADOR','F01010',2,NULL,'modify'),(35,'pagamento','2017-04-16','11:28:07',1,'ADMINISTRADOR','F01002',2,NULL,'modify'),(36,'pagamento','2017-04-16','11:29:48',1,'ADMINISTRADOR','F01010',2,NULL,'modify'),(37,'pagamento','2017-04-16','11:29:57',1,'ADMINISTRADOR','F01002',2,NULL,'modify'),(38,'pagamento','2017-04-16','11:31:25',1,'ADMINISTRADOR','F01010',2,NULL,'modify'),(39,'pagamento','2017-04-16','11:31:33',1,'ADMINISTRADOR','F01002',2,NULL,'modify'),(40,'pagamento','2017-04-16','11:34:08',1,'ADMINISTRADOR','F01002',1,NULL,'modify'),(41,'pagamento','2017-04-16','11:34:19',1,'ADMINISTRADOR','F01010',1,NULL,'modify'),(42,'pagamento','2017-04-16','11:34:23',1,'ADMINISTRADOR','F01010',2,NULL,'modify'),(43,'pagamento','2017-04-16','11:34:28',1,'ADMINISTRADOR','F01002',2,NULL,'modify'),(44,'pagamento','2017-04-16','11:34:34',1,'ADMINISTRADOR','F01002',1,NULL,'modify'),(45,'pagamento','2017-04-16','11:37:23',1,'ADMINISTRADOR','F01010',1,NULL,'modify'),(46,'pagamento','2017-04-16','11:37:26',1,'ADMINISTRADOR','F01002',1,NULL,'modify'),(47,'ALUNO','2017-04-16','17:38:57',1,'ADMINISTRADOR','F01001',9,NULL,'insert'),(48,'ALUNOMODALIDADE','2017-04-16','17:39:02',1,'ADMINISTRADOR','F01001',9,1,'insert'),(49,'pagamento','2017-04-16','17:39:03',1,'ADMINISTRADOR','F01001',13,NULL,'insert'),(50,'pagamento','2017-04-16','17:39:03',1,'ADMINISTRADOR','F01001',14,NULL,'insert'),(51,'pagamento','2017-04-16','17:39:03',1,'ADMINISTRADOR','F01001',15,NULL,'insert'),(52,'pagamento','2017-04-16','17:39:03',1,'ADMINISTRADOR','F01001',16,NULL,'insert'),(53,'pagamento','2017-04-16','17:39:03',1,'ADMINISTRADOR','F01001',17,NULL,'insert'),(54,'pagamento','2017-04-16','17:39:04',1,'ADMINISTRADOR','F01001',18,NULL,'insert'),(55,'pagamento','2017-04-16','17:39:04',1,'ADMINISTRADOR','F01001',19,NULL,'insert'),(56,'pagamento','2017-04-16','17:39:04',1,'ADMINISTRADOR','F01001',20,NULL,'insert'),(57,'pagamento','2017-04-16','17:39:04',1,'ADMINISTRADOR','F01001',21,NULL,'insert'),(58,'pagamento','2017-04-16','17:39:04',1,'ADMINISTRADOR','F01001',22,NULL,'insert'),(59,'pagamento','2017-04-16','17:39:04',1,'ADMINISTRADOR','F01001',23,NULL,'insert'),(60,'pagamento','2017-04-16','17:39:05',1,'ADMINISTRADOR','F01001',24,NULL,'insert'),(61,'patologia','2017-04-17','11:13:22',1,'ADMINISTRADOR','F01007',6,NULL,'insert'),(62,'ANAMNESE','2017-04-17','11:14:03',1,'ADMINISTRADOR','F01016',2,NULL,'insert'),(63,'ALUNOMODALIDADE','2017-04-17','11:14:53',1,'ADMINISTRADOR','F01001',10,1,'insert'),(64,'pagamento','2017-04-17','11:14:53',1,'ADMINISTRADOR','F01001',25,NULL,'insert'),(65,'pagamento','2017-04-17','11:14:53',1,'ADMINISTRADOR','F01001',26,NULL,'insert'),(66,'pagamento','2017-04-17','11:14:53',1,'ADMINISTRADOR','F01001',27,NULL,'insert'),(67,'pagamento','2017-04-17','11:14:53',1,'ADMINISTRADOR','F01001',28,NULL,'insert'),(68,'pagamento','2017-04-17','11:14:54',1,'ADMINISTRADOR','F01001',29,NULL,'insert'),(69,'pagamento','2017-04-17','11:14:54',1,'ADMINISTRADOR','F01001',30,NULL,'insert'),(70,'pagamento','2017-04-17','11:14:54',1,'ADMINISTRADOR','F01001',31,NULL,'insert'),(71,'pagamento','2017-04-17','11:14:54',1,'ADMINISTRADOR','F01001',32,NULL,'insert'),(72,'pagamento','2017-04-17','11:14:54',1,'ADMINISTRADOR','F01001',33,NULL,'insert'),(73,'pagamento','2017-04-17','11:14:55',1,'ADMINISTRADOR','F01001',34,NULL,'insert'),(74,'pagamento','2017-04-17','11:14:55',1,'ADMINISTRADOR','F01001',35,NULL,'insert'),(75,'pagamento','2017-04-17','11:14:55',1,'ADMINISTRADOR','F01001',36,NULL,'insert'),(76,'ALUNO','2017-04-17','11:15:40',1,'ADMINISTRADOR','F01001',10,NULL,'insert'),(77,'modalidade','2017-04-17','13:57:20',1,'ADMINISTRADOR','F01012',2,NULL,'insert'),(78,'AVALIACAOFISICA','2017-04-17','17:03:29',1,'ADMINISTRADOR','F01017',3,NULL,'insert'),(79,'AVALIACAOFISICA','2017-04-17','19:34:06',1,'ADMINISTRADOR','F01017',6,NULL,'insert'),(80,'AVALIACAOFISICA','2017-04-17','19:53:10',1,'ADMINISTRADOR','F01017',6,NULL,'modify'),(81,'AVALIACAOFISICA','2017-04-17','19:54:43',1,'ADMINISTRADOR','F01017',6,NULL,'modify'),(82,'AVALIACAOFISICA','2017-04-18','09:31:11',1,'ADMINISTRADOR','F01017',7,NULL,'insert'),(83,'AVALIACAOFISICA','2017-04-18','09:31:21',1,'ADMINISTRADOR','F01017',8,NULL,'insert'),(84,'AVALIACAOFISICA','2017-04-18','09:31:29',1,'ADMINISTRADOR','F01017',9,NULL,'insert'),(85,'AVALIACAOFISICA','2017-04-18','09:33:47',1,'ADMINISTRADOR','F01017',7,NULL,'modify'),(86,'ALUNO','2017-04-19','15:52:59',1,'ADMINISTRADOR','F01001',1,NULL,'modify'),(87,'ALUNO','2017-04-19','16:03:45',1,'ADMINISTRADOR','F01001',1,NULL,'modify'),(88,'ALUNO','2017-04-19','16:08:54',1,'ADMINISTRADOR','F01001',1,NULL,'modify'),(89,'AVALIACAOFISICA','2017-04-20','18:07:51',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(90,'AVALIACAOFISICA','2017-04-20','18:24:36',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(91,'AVALIACAOFISICA','2017-04-22','11:05:17',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(92,'AVALIACAOFISICA','2017-04-22','11:05:46',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(93,'AVALIACAOFISICA','2017-04-22','11:07:34',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(94,'AVALIACAOFISICA','2017-04-22','11:13:19',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(95,'AVALIACAOFISICA','2017-04-22','11:13:31',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(96,'AVALIACAOFISICA','2017-04-22','11:22:45',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(97,'AVALIACAOFISICA','2017-04-22','11:52:18',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(98,'AVALIACAOFISICA','2017-04-22','12:01:27',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(99,'AVALIACAOFISICA','2017-04-22','12:02:14',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(100,'AVALIACAOFISICA','2017-04-22','12:14:15',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(101,'AVALIACAOFISICA','2017-04-22','12:16:25',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(102,'AVALIACAOFISICA','2017-04-22','12:19:51',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(103,'AVALIACAOFISICA','2017-04-22','12:20:12',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(104,'AVALIACAOFISICA','2017-04-22','12:21:01',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(105,'AVALIACAOFISICA','2017-04-22','12:24:20',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(106,'AVALIACAOFISICA','2017-04-22','15:48:45',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(107,'ALUNO','2017-04-22','18:01:11',1,'ADMINISTRADOR','F01001',1,NULL,'modify'),(108,'ALUNO','2017-04-23','13:53:54',1,'ADMINISTRADOR','F01001',1,NULL,'modify'),(109,'AVALIACAOFISICA','2017-04-23','13:55:00',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(110,'AVALIACAOFISICA','2017-04-23','15:00:26',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(111,'AVALIACAOFISICA','2017-04-23','15:00:53',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(112,'AVALIACAOFISICA','2017-04-23','15:03:12',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(113,'AVALIACAOFISICA','2017-04-23','15:13:35',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(114,'AVALIACAOFISICA','2017-04-23','15:15:23',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(115,'AVALIACAOFISICA','2017-04-23','15:30:16',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(116,'AVALIACAOFISICA','2017-04-24','09:11:10',1,'ADMINISTRADOR','F01017',6,NULL,'modify'),(117,'ALUNO','2017-04-24','11:35:28',1,'ADMINISTRADOR','F01001',1,NULL,'modify'),(118,'ALUNO','2017-04-24','11:36:10',1,'ADMINISTRADOR','F01001',1,NULL,'modify'),(119,'AVALIACAOFISICA','2017-04-25','12:17:27',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(120,'AVALIACAOFISICA','2017-04-25','12:28:46',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(121,'AVALIACAOFISICA','2017-04-25','14:21:33',1,'ADMINISTRADOR','F01017',9,NULL,'modify'),(122,'usuario','2017-04-26','17:22:56',1,'ADMINISTRADOR','F01008',3,NULL,'insert'),(123,'usuario','2017-04-26','17:23:06',1,'ADMINISTRADOR','F01008',1,NULL,'modify'),(124,'usuario','2017-04-26','17:23:57',1,'ADMINISTRADOR','F01008',1,NULL,'modify'),(125,'usuario','2017-04-26','17:24:48',1,'ADMINISTRADOR','F01008',3,NULL,'modify'),(126,'usuario','2017-04-26','17:26:23',1,'ADMINISTRADOR','F01008',2,NULL,'modify'),(127,'usuario','2017-04-26','17:50:49',1,'ADMINISTRADOR','F01008',2,NULL,'modify'),(128,'ALUNO','2017-04-26','18:09:06',1,'ADMINISTRADOR','F01001',1,NULL,'modify'),(129,'ALUNO','2017-04-26','18:21:23',1,'ADMINISTRADOR','F01001',1,NULL,'modify'),(130,'usuario','2017-04-26','18:22:53',1,'ADMINISTRADOR','F01008',4,NULL,'insert'),(131,'ALUNO','2017-04-26','18:32:26',1,'ADMINISTRADOR','F01001',1,NULL,'modify'),(132,'ALUNOMODALIDADE','2017-04-28','16:05:54',1,'ADMINISTRADOR','F01001',1,2,'insert'),(133,'pagamento','2017-04-28','16:05:55',1,'ADMINISTRADOR','F01001',37,NULL,'insert'),(134,'pagamento','2017-04-28','16:05:55',1,'ADMINISTRADOR','F01001',38,NULL,'insert'),(135,'pagamento','2017-04-28','16:05:55',1,'ADMINISTRADOR','F01001',39,NULL,'insert'),(136,'pagamento','2017-04-28','16:05:55',1,'ADMINISTRADOR','F01001',40,NULL,'insert'),(137,'pagamento','2017-04-28','16:05:55',1,'ADMINISTRADOR','F01001',41,NULL,'insert'),(138,'pagamento','2017-04-28','16:05:56',1,'ADMINISTRADOR','F01001',42,NULL,'insert'),(139,'pagamento','2017-04-28','16:05:56',1,'ADMINISTRADOR','F01001',43,NULL,'insert'),(140,'pagamento','2017-04-28','16:05:56',1,'ADMINISTRADOR','F01001',44,NULL,'insert'),(141,'pagamento','2017-04-28','16:05:56',1,'ADMINISTRADOR','F01001',45,NULL,'insert'),(142,'pagamento','2017-04-28','16:05:57',1,'ADMINISTRADOR','F01001',46,NULL,'insert'),(143,'pagamento','2017-04-28','16:05:57',1,'ADMINISTRADOR','F01001',47,NULL,'insert'),(144,'pagamento','2017-04-28','16:05:57',1,'ADMINISTRADOR','F01001',48,NULL,'insert'),(145,'ALUNOMODALIDADE','2017-04-28','16:06:25',1,'ADMINISTRADOR','F01001',10,2,'insert'),(146,'pagamento','2017-04-28','16:06:25',1,'ADMINISTRADOR','F01001',49,NULL,'insert'),(147,'pagamento','2017-04-28','16:06:25',1,'ADMINISTRADOR','F01001',50,NULL,'insert'),(148,'pagamento','2017-04-28','16:06:26',1,'ADMINISTRADOR','F01001',51,NULL,'insert'),(149,'pagamento','2017-04-28','16:06:26',1,'ADMINISTRADOR','F01001',52,NULL,'insert'),(150,'pagamento','2017-04-28','16:06:26',1,'ADMINISTRADOR','F01001',53,NULL,'insert'),(151,'pagamento','2017-04-28','16:06:26',1,'ADMINISTRADOR','F01001',54,NULL,'insert'),(152,'pagamento','2017-04-28','16:06:26',1,'ADMINISTRADOR','F01001',55,NULL,'insert'),(153,'pagamento','2017-04-28','16:06:27',1,'ADMINISTRADOR','F01001',56,NULL,'insert'),(154,'pagamento','2017-04-28','16:06:27',1,'ADMINISTRADOR','F01001',57,NULL,'insert'),(155,'pagamento','2017-04-28','16:06:27',1,'ADMINISTRADOR','F01001',58,NULL,'insert'),(156,'pagamento','2017-04-28','16:06:27',1,'ADMINISTRADOR','F01001',59,NULL,'insert'),(157,'pagamento','2017-04-28','16:06:27',1,'ADMINISTRADOR','F01001',60,NULL,'insert'),(158,'ANAMNESE','2017-04-29','09:10:27',1,'ADMINISTRADOR','F01016',3,NULL,'insert'),(159,'ANAMNESE','2017-04-29','09:11:17',1,'ADMINISTRADOR','F01016',4,NULL,'insert'),(160,'ANAMNESE','2017-04-29','09:35:37',1,'ADMINISTRADOR','F01016',5,NULL,'insert'),(161,'ANAMNESE','2017-04-29','09:36:55',1,'ADMINISTRADOR','F01016',2,NULL,'modify'),(162,'pagamento','2017-04-29','09:41:20',1,'ADMINISTRADOR','F01010',13,NULL,'modify'),(163,'pagamento','2017-04-29','09:46:18',1,'ADMINISTRADOR','F01010',1,NULL,'modify'),(164,'pagamento','2017-04-29','10:05:04',1,'ADMINISTRADOR','F01010',37,NULL,'modify'),(165,'pagamento','2017-04-29','13:36:15',1,'ADMINISTRADOR','F01001',37,NULL,'modify'),(166,'pagamento','2017-04-29','13:36:21',1,'ADMINISTRADOR','F01010',37,NULL,'modify'),(167,'modalidade','2017-04-29','19:04:18',1,'ADMINISTRADOR','F01012',2,NULL,'modify'),(168,'pagamento','2017-05-01','14:21:28',1,'ADMINISTRADOR','F01010',25,NULL,'modify'),(169,'ALUNO','1899-12-30','11:38:50',1,'ADMINISTRADOR','F01001',10,NULL,'modify'),(170,'exercicio','2017-05-25','20:18:26',1,'ADMINISTRADOR','F01006',4,NULL,'modify'),(171,'exercicio','2017-05-26','12:06:40',1,'ADMINISTRADOR','F01006',12,NULL,'modify'),(172,'exercicio','2017-05-27','15:32:07',1,'ADMINISTRADOR','F01006',3,NULL,'modify'),(173,'exercicio','2017-05-30','13:14:30',1,'ADMINISTRADOR','F01006',3,NULL,'modify'),(174,'ANAMNESE','2017-05-30','15:09:31',1,'ADMINISTRADOR','F01016',8,NULL,'insert'),(175,'ALUNOMODALIDADE','2017-05-31','14:07:17',1,'ADMINISTRADOR','F01001',14,2,'insert'),(176,'pagamento','2017-05-31','14:07:17',1,'ADMINISTRADOR','F01001',61,NULL,'insert'),(177,'pagamento','2017-05-31','14:07:17',1,'ADMINISTRADOR','F01001',62,NULL,'insert'),(178,'pagamento','2017-05-31','14:07:17',1,'ADMINISTRADOR','F01001',63,NULL,'insert'),(179,'pagamento','2017-05-31','14:07:17',1,'ADMINISTRADOR','F01001',64,NULL,'insert'),(180,'pagamento','2017-05-31','14:07:17',1,'ADMINISTRADOR','F01001',65,NULL,'insert'),(181,'pagamento','2017-05-31','14:07:17',1,'ADMINISTRADOR','F01001',66,NULL,'insert'),(182,'pagamento','2017-05-31','14:07:18',1,'ADMINISTRADOR','F01001',67,NULL,'insert'),(183,'pagamento','2017-05-31','14:07:18',1,'ADMINISTRADOR','F01001',68,NULL,'insert'),(184,'pagamento','2017-05-31','14:07:18',1,'ADMINISTRADOR','F01001',69,NULL,'insert'),(185,'pagamento','2017-05-31','14:07:18',1,'ADMINISTRADOR','F01001',70,NULL,'insert'),(186,'pagamento','2017-05-31','14:07:18',1,'ADMINISTRADOR','F01001',71,NULL,'insert'),(187,'pagamento','2017-05-31','14:07:18',1,'ADMINISTRADOR','F01001',72,NULL,'insert'),(188,'pagamento','2017-05-31','14:14:32',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(189,'pagamento','2017-05-31','14:14:32',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(190,'pagamento','2017-05-31','14:14:32',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(191,'pagamento','2017-05-31','14:14:32',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(192,'pagamento','2017-05-31','14:14:32',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(193,'pagamento','2017-05-31','14:14:32',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(194,'pagamento','2017-05-31','14:14:32',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(195,'pagamento','2017-05-31','14:14:32',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(196,'pagamento','2017-05-31','14:14:32',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(197,'pagamento','2017-05-31','14:14:32',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(198,'pagamento','2017-05-31','14:14:32',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(199,'pagamento','2017-05-31','14:14:32',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(200,'ALUNOMODALIDADE','2017-05-31','14:14:33',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(201,'pagamento','2017-05-31','14:15:18',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(202,'pagamento','2017-05-31','14:15:18',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(203,'pagamento','2017-05-31','14:15:18',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(204,'pagamento','2017-05-31','14:15:18',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(205,'pagamento','2017-05-31','14:15:19',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(206,'pagamento','2017-05-31','14:15:19',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(207,'pagamento','2017-05-31','14:15:19',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(208,'pagamento','2017-05-31','14:15:19',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(209,'pagamento','2017-05-31','14:15:19',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(210,'pagamento','2017-05-31','14:15:19',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(211,'pagamento','2017-05-31','14:15:19',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(212,'ALUNOMODALIDADE','2017-05-31','14:15:19',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(213,'pagamento','2017-05-31','14:16:00',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(214,'pagamento','2017-05-31','14:16:00',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(215,'pagamento','2017-05-31','14:16:00',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(216,'pagamento','2017-05-31','14:16:00',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(217,'pagamento','2017-05-31','14:16:00',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(218,'pagamento','2017-05-31','14:16:00',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(219,'pagamento','2017-05-31','14:16:01',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(220,'pagamento','2017-05-31','14:16:01',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(221,'pagamento','2017-05-31','14:16:01',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(222,'pagamento','2017-05-31','14:16:01',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(223,'pagamento','2017-05-31','14:16:01',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(224,'pagamento','2017-05-31','14:16:01',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(225,'ALUNOMODALIDADE','2017-05-31','14:16:01',1,'ADMINISTRADOR','F01001',0,NULL,'delete'),(226,'modalidade','2017-05-31','14:18:00',1,'ADMINISTRADOR','F01012',0,NULL,'delete');
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
INSERT INTO `pagamento` (`idPagamento`, `idAluno`, `idmodalidade`, `valorModalidade`, `valorCobrado`, `dataVencimento`, `dataPagamento`, `idstatusPagamento`, `LOGUsuarioResponsavel`) VALUES (1,1,1,30,30,'2017-04-15','2017-04-29',2,'PAGAMENTO RECEBIDO POR: ADMINISTRADOR EM 29/04/2017'),(2,1,1,30,500,'2017-02-15','2017-02-15',2,'Isenção cancelada por ADMINISTRADOR em 16/04/2017'),(3,1,1,30,NULL,'2017-06-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(4,1,1,30,NULL,'2017-07-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(5,1,1,30,NULL,'2017-08-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(6,1,1,30,NULL,'2017-09-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(7,1,1,30,NULL,'2017-10-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(8,1,1,30,NULL,'2017-11-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(9,1,1,30,NULL,'2017-12-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(10,1,1,30,NULL,'2018-01-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(11,1,1,30,NULL,'2018-02-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(12,1,1,30,NULL,'2018-03-15',NULL,1,'GERADO POR: ADMINISTRADOR em 15/04/2017'),(13,9,1,30,30,'2017-03-16','2017-03-29',2,'PAGAMENTO RECEBIDO POR: ADMINISTRADOR EM 29/04/2017'),(14,9,1,30,NULL,'2017-05-16',NULL,1,'GERADO POR: ADMINISTRADOR em 16/04/2017'),(15,9,1,30,NULL,'2017-06-16',NULL,1,'GERADO POR: ADMINISTRADOR em 16/04/2017'),(16,9,1,30,NULL,'2017-07-16',NULL,1,'GERADO POR: ADMINISTRADOR em 16/04/2017'),(17,9,1,30,NULL,'2017-08-16',NULL,1,'GERADO POR: ADMINISTRADOR em 16/04/2017'),(18,9,1,30,NULL,'2017-09-16',NULL,1,'GERADO POR: ADMINISTRADOR em 16/04/2017'),(19,9,1,30,NULL,'2017-10-16',NULL,1,'GERADO POR: ADMINISTRADOR em 16/04/2017'),(20,9,1,30,NULL,'2017-11-16',NULL,1,'GERADO POR: ADMINISTRADOR em 16/04/2017'),(21,9,1,30,NULL,'2017-12-16',NULL,1,'GERADO POR: ADMINISTRADOR em 16/04/2017'),(22,9,1,30,NULL,'2018-01-16',NULL,1,'GERADO POR: ADMINISTRADOR em 16/04/2017'),(23,9,1,30,NULL,'2018-02-16',NULL,1,'GERADO POR: ADMINISTRADOR em 16/04/2017'),(24,9,1,30,NULL,'2018-03-16',NULL,1,'GERADO POR: ADMINISTRADOR em 16/04/2017'),(25,10,1,30,0,'2017-04-17','2017-05-01',3,'ISENÇÃO CONCEDIDA POR: ADMINISTRADOR EM 01/05/2017'),(26,10,1,30,NULL,'2017-05-17',NULL,1,'GERADO POR: ADMINISTRADOR em 17/04/2017'),(27,10,1,30,NULL,'2017-06-17',NULL,1,'GERADO POR: ADMINISTRADOR em 17/04/2017'),(28,10,1,30,NULL,'2017-07-17',NULL,1,'GERADO POR: ADMINISTRADOR em 17/04/2017'),(29,10,1,30,NULL,'2017-08-17',NULL,1,'GERADO POR: ADMINISTRADOR em 17/04/2017'),(30,10,1,30,NULL,'2017-09-17',NULL,1,'GERADO POR: ADMINISTRADOR em 17/04/2017'),(31,10,1,30,NULL,'2017-10-17',NULL,1,'GERADO POR: ADMINISTRADOR em 17/04/2017'),(32,10,1,30,NULL,'2017-11-17',NULL,1,'GERADO POR: ADMINISTRADOR em 17/04/2017'),(33,10,1,30,NULL,'2017-12-17',NULL,1,'GERADO POR: ADMINISTRADOR em 17/04/2017'),(34,10,1,30,NULL,'2018-01-17',NULL,1,'GERADO POR: ADMINISTRADOR em 17/04/2017'),(35,10,1,30,NULL,'2018-02-17',NULL,1,'GERADO POR: ADMINISTRADOR em 17/04/2017'),(36,10,1,30,NULL,'2018-03-17',NULL,1,'GERADO POR: ADMINISTRADOR em 17/04/2017');
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
INSERT INTO `parametros` (`parametro`, `descricao`, `valor`) VALUES ('aluno',NULL,15),('AlunoPatologia',NULL,1),('Anamnese',NULL,9),('avaliacaofisica',NULL,10),('campolog',NULL,1460),('equipamento',NULL,24),('exercicio',NULL,35),('ficha',NULL,1),('fichaPreDefinida',NULL,2),('grupoexercicio',NULL,15),('idAlunoModalidade',NULL,1),('idFichaAluno',NULL,4),('logsistema',NULL,227),('modalidade',NULL,3),('pagamento',NULL,73),('patologia',NULL,7),('serie',NULL,1),('tipousuario',NULL,5),('usuario',NULL,5);
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
INSERT INTO `patologia` (`idpatologia`, `nomePatologia`, `observacao`) VALUES (1,'DOR NO JOELHO',NULL),(2,'DIABETES',NULL),(3,'HIPERTENSÃO',NULL),(4,'LESÃO FEMO',NULL),(5,'DOR LOMBAR',NULL),(6,'REFLUXO',NULL);
/*!40000 ALTER TABLE `patologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protocoloavafisica`
--

DROP TABLE IF EXISTS `protocoloavafisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protocoloavafisica` (
  `idProtocoloAvaFisica` int(11) NOT NULL,
  `descricaoprotocoloAvaFisica` varchar(50) DEFAULT NULL,
  `OBS` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`idProtocoloAvaFisica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protocoloavafisica`
--

LOCK TABLES `protocoloavafisica` WRITE;
/*!40000 ALTER TABLE `protocoloavafisica` DISABLE KEYS */;
INSERT INTO `protocoloavafisica` (`idProtocoloAvaFisica`, `descricaoprotocoloAvaFisica`, `OBS`) VALUES (1,'FAULKNER: 4 DOBRAS','Tríceps, subescapular, supra-ilíaca e abdominal.'),(2,'POLLOCK: 3 DOBRAS','Tríceps, supra-ilíaca, coxa.'),(3,'POLLOCK: 7 DOBRAS','Subescapular, tríceps, peitoral, axilar-média, supra-ilíaca, abdômen e coxa.'),(4,'GUEDES: 3 DOBRAS','Homens : Tríceps, suprai-líaca e abdominal. | Mulheres: Subescapular, supra-ilíaca e coxa proximal.');
/*!40000 ALTER TABLE `protocoloavafisica` ENABLE KEYS */;
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
INSERT INTO `seguranca` (`idSeguranca`, `idInterface`, `idTipoUsuario`, `cadastrar`, `alterar`, `consultar`, `excluir`) VALUES (1,1,1,1,1,1,1),(2,1,2,0,1,1,0),(3,1,3,1,1,1,1),(4,1,4,0,1,1,0),(5,2,1,0,1,1,0),(6,2,2,0,0,0,0),(7,2,3,0,0,0,0),(8,2,4,0,0,0,0),(9,3,1,1,1,1,1),(10,3,2,0,0,1,0),(11,3,3,0,0,0,0),(12,3,4,0,0,0,0),(13,4,1,1,1,1,1),(14,4,2,0,0,1,0),(15,4,3,0,0,0,0),(16,4,4,0,0,0,0),(17,5,1,1,1,1,1),(18,5,2,1,1,1,0),(19,5,3,0,0,0,0),(20,5,4,0,0,0,0),(21,6,1,1,1,1,1),(22,6,2,0,0,1,0),(23,6,3,0,0,0,0),(24,6,4,0,0,0,0),(25,7,1,1,1,1,1),(26,7,2,0,0,0,0),(27,7,3,0,0,0,0),(28,7,4,1,1,1,0),(29,8,1,1,1,1,1),(30,8,2,0,0,0,0),(31,8,3,0,0,0,0),(32,8,4,0,0,0,0),(33,12,1,1,1,1,1),(34,12,2,0,0,0,0),(35,12,3,0,0,0,0),(36,12,4,0,0,0,0),(37,14,1,1,1,1,1),(38,14,2,1,1,1,1),(39,14,3,0,0,1,0),(40,14,4,0,0,0,0),(41,16,1,1,1,1,1),(42,16,2,0,0,1,0),(43,16,3,0,0,0,0),(44,16,4,1,1,1,1),(45,17,1,1,1,1,1),(46,17,2,0,0,1,0),(47,17,3,0,0,0,0),(48,17,4,1,1,1,1);
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
INSERT INTO `usuario` (`idusuario`, `nomeUsuario`, `username`, `senha`, `administrador`, `atendente`, `instrutor`, `avaliador`, `ativo`) VALUES (1,'ADMINISTRADOR','admin','21232F297A57A5A743894A0E4A801FC3',1,0,1,0,1),(2,'ATENDENTE','atendente','D4A1D4CF923C881FC54B2F6E13FED99B',0,1,0,0,1),(3,'TESTE','teste','698DC19D489C4E4DB73E28A713EAB07B',0,1,0,0,1),(4,'INSTRUTOR','instrutor','65A2607051E574A9C4F23433229D426A',0,0,1,0,1);
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

-- Dump completed on 2017-05-31 15:39:08
