create database gym;
use gym;


-- Cria USUÁRIO PADRÃO DO SOGYM, com permissões para realizar tudo em todas as tabelas do banco de dados
CREATE USER 'usersogym'@'%' IDENTIFIED BY 'usersogym';
GRANT ALL ON *.* TO 'usersogym'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
select * from mysql.user;


-- habilita banco a receber evento -- SET GLOBAL event_scheduler = 1;        desligar: SET GLOBAL event_scheduler = 0;
set global event_scheduler = on;
select @@event_scheduler;


create table modalidade(
idModalidade int primary key not null,
descricaoModalidade varchar(50) not null,
valor float
);

create table configuracaoUnidade(
idConfiguracaoUnidade int primary key not null,
cnpj varchar(50) not null,
razaoSocial varchar(100) not null,
nomeFantasia varchar(100) not null,
telefone varchar(50),
vencimentoFicha int not null,
videoYoutube tinyint(1) not null,
avaAnamnese tinyint(1) not null,
avaFisica tinyint(1) not null,
avaPostural tinyint(1) not null,
avaDadosClinicos tinyint(1) not null
);

create table logSistema(
idlogSistema int primary key not null,
tabelaBanco varchar(50),
dataLog date,
horaLog time,
idUsuario int,
nomeUsuario varchar(50), 
descricaoInterface varchar(50),
idPkRegistro int,
idPkRegistro2 int,
tipoCRUD varchar(50)
);

create table campoLog(
idCampolog int primary key not null,
nomeField varchar(50),
valorAntigo varchar(50),
valornovo varchar(50), 
idLogSistema int
);

create table patologia(
idpatologia int primary key not null,
nomePatologia varchar(50) not null,
observacao varchar(200)
);

create table tipoUsuario(
idTipoUsuario int primary key not null,
descricaoTipoUsuario varchar(50) not null
);

create table usuario(
idusuario int primary key not null,
nomeUsuario varchar(50) not null,
username varchar(50) not null,
senha varchar(150) not null,
/*idTipoUsuario int not null,*/
administrador tinyint(1),
atendente tinyint(1),
instrutor tinyint(1),
avaliador tinyint(1),
ativo tinyint(1)
);

create table Pagamento(
idPagamento int primary key not null,
idAluno int not null,
idmodalidade int not null,
valorModalidade float,
valorCobrado float,
dataVencimento date,
dataPagamento date,
idstatusPagamento int,
LOGUsuarioResponsavel varchar(200) not null
);

create table statusPagamento(
idStatusPagamento int primary key not null,
descricaoStatusPagamento varchar(50) not null
);

create table objetivo(
idObjetivo int primary key not null,
descricaoObjetivo varchar(50) not null
);

create table protocoloAvaFisica(
idProtocoloAvaFisica int primary key not null,
descricaoprotocoloAvaFisica varchar(50), 
obs varchar(300) 
);

create table Aluno(
idAluno int primary key not null,
nomeAluno varchar(80) not null,
dataNascimento date,
email varchar(60),
sexo char(1),
cidade varchar(50),
bairro varchar(50),
rua varchar(50),
numero int,
cep int,
tel1 varchar(50),
tel2 varchar(50),
nomeResponsavel varchar(80),
parentescoResponsavel varchar(50),
telResponsavel varchar(50),
dataCadastro date,
cpf VARCHAR(50),
idProtocoloAvaFisica int,
idInstrutor int
);

create table avaliacaoFisica(
idAvaliacaoFisica int primary key not null,
idAluno int not null,
dataAvaliacaoFisica date not null,
nomeAvaliador varchar(60),
med_peso_cm float,
med_altura_cm float,
med_cervical_cm float,
med_torax_cm float,
med_quadril_cm float,
med_cintura_cm float,
med_abdomen_cm float,
med_bracoDireitoContraido_cm float,
med_bracoDireitoRelaxado_cm float,
med_antibracoDireito_cm float,
med_coxaDireita_cm float,
med_panturrilhaDireita_cm float,
med_bracoEsquerdoContraido_cm float,
med_bracoEsquerdoRelaxado_cm float,
med_antibracoEsquerdo_cm float,
med_coxaEsquerda_cm float,
med_panturrilhaEsquerda_cm float,
dobra_triciptal_mm float,
dobra_subescapular_mm float,
dobra_axiliar_mm float,
dobra_abdominal_mm float,
dobra_coxa_mm float,
dobra_panturrilha_mm float,
dobra_biciptal_mm float,
dobra_peitoral_mm float,
dobra_suprailiac_mm float,
flex_colunaCervicalFlexaoLateral_grau int,
flex_troncoFlexao_grau int,
flex_ombroDireitoAbducao_grau int,
flex_ombroEsquerdoAbducao_grau int,
flex_quadrilDireitoFlexao_grau int,
flex_quadrilEsquerdoFlexao_grau int,
flex_quadrilAbducao_grau int,
tipoProtocolo char(1)
);

create table anamnese(
idAnamnese int primary key not null,
idAluno int not null,
dataAnamnese date not null,
frequenciaSemanalTreino int,
peso float,
altura float,
qtdHorasSono int,
qtdRefeicoesDia int,
fuma tinyint(1),
dieta tinyint(1),
suplementacao tinyint(1),
consumoAlcoolico tinyint(1),
informacaoAdicional varchar(700),
idObjetivo int not null,
nomeAvaliador varchar(60)
);

create table AnamnesePatologia(
idAnamnese int not null,
idPatologia int not null,
observacaoMedica varchar(700),
PRIMARY KEY (idAnamnese,idPatologia)
);

create table AlunoModalidade(
idAluno int not null,
idmodalidade int not null,
dataInscrição date,
diavencimento int,
PRIMARY KEY (idAluno,idModalidade)
);

create table Equipamento(
idEquipamento int primary key not null,
descricaoEquipamento varchar(50)
);

create table GrupoExercicio(
idGrupoExercicio int primary key not null,
descricaoGrupoExercicio varchar(50)
);

create table treino(
idTreino int primary key not null,
descricaoTreino varchar(50)
);

create table Exercicio(
idExercicio int primary key not null,
nomeExercicio varchar(50),
idEquipamento int,
idGrupoExercicio int not null,
tipoMedida char(1), /* T = Tempo; R = Repe*/
idYoutube varchar(45)
);

create table FichaPreDefinida(
idFichaPreDefinida int primary key not null,
descricaoFicha varchar(50),
dataComposicao Date
);

create table FichaPreDefinidaSerie(
idFichaPreDefinida int not null,
idTreino int not null,
idExercicio int not null,
qtdSerie int,
qtdRepeticao int,
PRIMARY KEY (idFichaPreDefinida,idTreino,idExercicio)
);

create table FichaAluno(
idFichaAluno int not null,
idAluno int not null,
dataComposicao date,
dataVencimento date,
nomeInstrutor varchar(100),
PRIMARY KEY (idFichaAluno)
);

create table serieFichaAluno(
idFichaAluno int not null,
idTreino int not null,
idExercicio int not null,
qtdSerie int,
qtdRepeticao int,
PRIMARY KEY (idFichaAluno,idTreino,idExercicio)
);

Create table modulo(
idModulo int primary key not null,
descricaoModulo varchar(50) not null
);

Create table interface(
idInterface int primary key not null,
idModulo int not null,
descricaoInterface varchar(50) not null,
TELA VARCHAR(5)
);

Create table seguranca(
idSeguranca int primary key not null,
idInterface int not null,
idTipoUsuario int not null,
cadastrar tinyint(1),
alterar tinyint(1),
consultar tinyint(1),
excluir tinyint(1)
);

Create table parametros (
  parametro varchar(20) NOT NULL DEFAULT '',
  descricao varchar(45) DEFAULT NULL,
  valor int(11) DEFAULT NULL,
  PRIMARY KEY (`parametro`)
);

-- CADASTRA TREINO
INSERT INTO TREINO(IDTREINO, DESCRICAOTREINO) VALUES(1,'A');
INSERT INTO TREINO(IDTREINO, DESCRICAOTREINO) VALUES(2,'B');
INSERT INTO TREINO(IDTREINO, DESCRICAOTREINO) VALUES(3,'C');
INSERT INTO TREINO(IDTREINO, DESCRICAOTREINO) VALUES(4,'D');
INSERT INTO TREINO(IDTREINO, DESCRICAOTREINO) VALUES(5,'E');

-- CADASTRA PROTOCOLO DE AVALIAÇÃO FISICA
INSERT INTO PROTOCOLOAVAFISICA(IDPROTOCOLOAVAFISICA, DESCRICAOPROTOCOLOAVAFISICA, OBS) VALUES(1,'FAULKNER (1968): 4 DOBRAS', 'Tríceps, subescapular, supra-ilíaca e abdominal.');
INSERT INTO PROTOCOLOAVAFISICA(IDPROTOCOLOAVAFISICA, DESCRICAOPROTOCOLOAVAFISICA, OBS) VALUES(2,'POLLOCK (1986): 3 DOBRAS', 'Tríceps, supra-ilíaca, coxa.');
INSERT INTO PROTOCOLOAVAFISICA(IDPROTOCOLOAVAFISICA, DESCRICAOPROTOCOLOAVAFISICA, OBS) VALUES(3,'POLLOCK (1986): 7 DOBRAS', 'Subescapular, tríceps, peitoral, axilar-média, supra-ilíaca, abdômen e coxa.');
INSERT INTO PROTOCOLOAVAFISICA(IDPROTOCOLOAVAFISICA, DESCRICAOPROTOCOLOAVAFISICA, OBS) VALUES(4,'GUEDES (1994): 3 DOBRAS', 'Homens : Tríceps, suprai-líaca e abdominal. | Mulheres: Subescapular, supra-ilíaca e coxa proximal.');

-- CADASTRA MODALIDADE
/*INSERT INTO MODALIDADE(IDMODALIDADE, DESCRICAOMODALIDADE, VALOR) VALUES(1,'MUSCULAÇÃO', 30.00);*/

-- CADASTRA MODULO
INSERT INTO MODULO(IDMODULO, DESCRICAOMODULO) VALUES(1,'HOME');

-- CADASTRA INTERFACES
INSERT INTO INTERFACE(IDINTERFACE, DESCRICAOINTERFACE, TELA, IDMODULO) VALUES(1,'ALUNO','01001', 1);
INSERT INTO INTERFACE(IDINTERFACE, DESCRICAOINTERFACE, TELA, IDMODULO) VALUES(2,'PAGAMENTO','01002', 1);
INSERT INTO INTERFACE(IDINTERFACE, DESCRICAOINTERFACE, TELA, IDMODULO) VALUES(3,'EQUIPAMENTO','01003', 1);
INSERT INTO INTERFACE(IDINTERFACE, DESCRICAOINTERFACE, TELA, IDMODULO) VALUES(4,'GRUPOEXERCICIO','01004', 1);
INSERT INTO INTERFACE(IDINTERFACE, DESCRICAOINTERFACE, TELA, IDMODULO) VALUES(5,'FICHAPREDEFINIDA','01005', 1);
INSERT INTO INTERFACE(IDINTERFACE, DESCRICAOINTERFACE, TELA, IDMODULO) VALUES(6,'EXERCICIO','01006', 1);
INSERT INTO INTERFACE(IDINTERFACE, DESCRICAOINTERFACE, TELA, IDMODULO) VALUES(7,'PATOLOGIA','01007', 1);
INSERT INTO INTERFACE(IDINTERFACE, DESCRICAOINTERFACE, TELA, IDMODULO) VALUES(8,'USUARIO','01008', 1);
INSERT INTO INTERFACE(IDINTERFACE, DESCRICAOINTERFACE, TELA, IDMODULO) VALUES(9,'BACKUP','01009', 1);
INSERT INTO INTERFACE(IDINTERFACE, DESCRICAOINTERFACE, TELA, IDMODULO) VALUES(12,'MODALIDADE','01012', 1);
INSERT INTO INTERFACE(IDINTERFACE, DESCRICAOINTERFACE, TELA, IDMODULO) VALUES(14,'FICHAALUNO','01014', 1);
INSERT INTO INTERFACE(IDINTERFACE, DESCRICAOINTERFACE, TELA, IDMODULO) VALUES(16,'ANAMNESE','01016', 1);
INSERT INTO INTERFACE(IDINTERFACE, DESCRICAOINTERFACE, TELA, IDMODULO) VALUES(17,'AVALIACAO FÍSICA','01017', 1);

-- CADASTRA TODOS OS TIPOS DE USUARIO: ADMIN E INSTRUTOR
INSERT INTO TIPOUSUARIO(IDTIPOUSUARIO,DESCRICAOTIPOUSUARIO) VALUES(1,'ADMINISTRADOR');
INSERT INTO TIPOUSUARIO(IDTIPOUSUARIO,DESCRICAOTIPOUSUARIO) VALUES(2,'INSTRUTOR');
INSERT INTO TIPOUSUARIO(IDTIPOUSUARIO,DESCRICAOTIPOUSUARIO) VALUES(3,'ATENDENTE');
INSERT INTO TIPOUSUARIO(IDTIPOUSUARIO,DESCRICAOTIPOUSUARIO) VALUES(4,'AVALIADOR');

-- CADASTRA USUARIO PADRAO INICIAL
INSERT INTO USUARIO(IDUSUARIO,NOMEUSUARIO, USERNAME,SENHA,ADMINISTRADOR, ATENDENTE, INSTRUTOR, AVALIADOR, ATIVO) VALUES(1,'ADMINISTRADOR', 'admin','21232F297A57A5A743894A0E4A801FC3',TRUE,FALSE,FALSE,FALSE,TRUE);


-- CADASTRA STATUS DE UM PAGAMENTO
INSERT INTO STATUSPAGAMENTO(IDSTATUSPAGAMENTO,DESCRICAOSTATUSPAGAMENTO) VALUES(1,'EM ABERTO');
INSERT INTO STATUSPAGAMENTO(IDSTATUSPAGAMENTO,DESCRICAOSTATUSPAGAMENTO) VALUES(2,'PAGO');
INSERT INTO STATUSPAGAMENTO(IDSTATUSPAGAMENTO,DESCRICAOSTATUSPAGAMENTO) VALUES(3,'ISENTO');

-- CADASTRA O CONTROLE DE ACESSO DOS ATORES +
-- F01001/FALUNO
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(1,1,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(2,1,2,0,1,1,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(3,1,3,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(4,1,4,0,1,1,0);
-- F01002/FPAGAMENTO
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(5,2,1,0,1,1,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(6,2,2,0,0,0,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(7,2,3,0,0,0,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(8,2,4,0,0,0,0);
-- F01003/FEQUIPAMENTO
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES( 9,3,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(10,3,2,0,0,1,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(11,3,3,0,0,0,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(12,3,4,0,0,0,0);
-- F01004/FGRUPO
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(13,4,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(14,4,2,0,0,1,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(15,4,3,0,0,0,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(16,4,4,0,0,0,0);
-- F01005/FFICHAPREDEFINIDA
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(17,5,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(18,5,2,1,1,1,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(19,5,3,0,0,0,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(20,5,4,0,0,0,0);
-- F01006/FEXERCICIO
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(21,6,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(22,6,2,0,0,1,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(23,6,3,0,0,0,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(24,6,4,0,0,0,0);
-- F01007/FPATOLOGIA
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(25,7,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(26,7,2,0,0,0,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(27,7,3,0,0,0,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(28,7,4,1,1,1,0);
-- F01008/FUSUARIO
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(29,8,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(30,8,2,0,0,0,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(31,8,3,0,0,0,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(32,8,4,0,0,0,0);
-- F01012/FMODALIDADE
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(33,12,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(34,12,2,0,0,0,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(35,12,3,0,0,0,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(36,12,4,0,0,0,0);
-- F01014/FFICHAALUNO
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(37,14,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(38,14,2,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(39,14,3,0,0,1,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(40,14,4,0,0,0,0);
-- F01016/FANAMNESE
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(41,16,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(42,16,2,0,0,1,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(43,16,3,0,0,0,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(44,16,4,1,1,1,1);
-- F01017/FAVALIACAOFISICA
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(45,17,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(46,17,2,0,0,1,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(47,17,3,0,0,0,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(48,17,4,1,1,1,1);


-- CADASTRA Objetivos +
INSERT INTO OBJETIVO(IDOBJETIVO,DESCRICAOOBJETIVO) VALUES(1,'PERDA DE PESO');
INSERT INTO OBJETIVO(IDOBJETIVO,DESCRICAOOBJETIVO) VALUES(2,'GANHO DE MASSA MUSCULAR');
INSERT INTO OBJETIVO(IDOBJETIVO,DESCRICAOOBJETIVO) VALUES(3,'DEFINIÇÃO');
INSERT INTO OBJETIVO(IDOBJETIVO,DESCRICAOOBJETIVO) VALUES(4,'CORREÇÃO E REABILITAÇÃO');
INSERT INTO OBJETIVO(IDOBJETIVO,DESCRICAOOBJETIVO) VALUES(5,'PREPARAÇÃO FÍSICA');

-- CADASTRA O ID INICIAL DE TODAS AS ENTIDADES
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('pagamento',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('modalidade',2);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('patologia',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('aluno',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('usuario',2);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('tipousuario',5);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('equipamento',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('exercicio',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('grupoexercicio',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('ficha',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('fichaPreDefinida',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('serie',1); /*?*/
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('AlunoPatologia',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('idAlunoModalidade',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('idFichaAluno',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('Anamnese',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('avaliacaofisica',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('logsistema',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('campolog',1);

delimiter |
CREATE PROCEDURE GeraMensalidade ()
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
    
    
END
| 
delimiter ;
-- Drop PROCEDURE geraMensalidade;


delimiter |
CREATE EVENT CHAMA_PROCEDURE_GERA_MENSALIDADE 
ON SCHEDULE EVERY 1 DAY 
STARTS TIMESTAMP '2017-02-27 10:20:00' 
ON COMPLETION PRESERVE
ENABLE
DO
	CALL geraMensalidade;
|
DELIMITER ;


-- Teste 
delimiter |
CREATE EVENT renovaMatricula
ON SCHEDULE EVERY 3 HOUR
STARTS '2017-03-01 09:40:00'
ON COMPLETION PRESERVE
DO
	CALL geraMensalidade;
|
DELIMITER ;
-- Fim de teste


-- Habilida Eventos
set global event_scheduler = on;
 select @@event_scheduler;

-- use gym;
-- SHOW events;
 SELECT * FROM INFORMATION_SCHEMA.EVENTS;
-- SHOW PROCESSLIST;
-- DROP EVENT CHAMA_PROCEDURE_GERA_MENSALIDADE;
-- DROP EVENT renovaMatricula;

-- Exclui anamnese, alunoModalidade, fichaaluno e pagamento em aberto do Aluno excluído
DELIMITER //
CREATE TRIGGER TRIGGER_Aluno_Delete 
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
    
END //
DELIMITER ;

-- Exclui anamnesePatologia da Anamnese excluída
DELIMITER //
CREATE TRIGGER TRIGGER_Anamnese_Delete 
AFTER DELETE ON anamnese for each row
BEGIN
	-- Delete anamnese
	DELETE FROM anamnesepatologia WHERE anamnesepatologia.idAnamnese = old.idAnamnese;
    
END //
DELIMITER ;

-- Exclui SERIEFICHAALUNO da FichaAluno Excluída
DELIMITER //
CREATE TRIGGER TRIGGER_seriefichaaluno_Delete 
AFTER DELETE ON fichaaluno for each row
BEGIN
	-- Delete fichapredefinidaserie
	DELETE FROM seriefichaaluno WHERE seriefichaaluno.idFichaaluno = old.idFichaAluno;

END //
DELIMITER ;

-- Exclui SERIE da FichaPreDefinida Excluída
DELIMITER //
CREATE TRIGGER TRIGGER_fichaPreDefinidaSerie_Delete 
AFTER DELETE ON fichapredefinida for each row
BEGIN
	-- Delete fichapredefinidaserie
	DELETE FROM fichapredefinidaserie WHERE fichapredefinidaserie.idFichaPreDefinida = old.idFichaPreDefinida;

END //
DELIMITER ;

-- ALTERA VALOR DA MODALIDADE NAS MENSALIDADES AINDA NÃO PAGAS DOS ALunos
DELIMITER //
CREATE TRIGGER TRIGGER_Modalidade_Update 
AFTER UPDATE ON Modalidade for each row
BEGIN
	
    IF(NEW.valor <> OLD.valor)THEN
		--
        UPDATE PAGAMENTO SET pagamento.VALORMODALIDADE = NEW.valor WHERE PAGAMENTO.IDMODALIDADE = OLD.IDMODALIDADE AND PAGAMENTO.IDSTATUSPAGAMENTO = 1 AND CURDATE() <= PAGAMENTO.DATAVENCIMENTO;
    END IF;

END //
DELIMITER ;

-- drop trigger TRIGGER_Aluno_Delete;




