create database gym;
use gym;

-- habilita banco a receber evento -- SET GLOBAL event_scheduler = 1;        desligar: SET GLOBAL event_scheduler = 0;
set global event_scheduler = on;
select @@event_scheduler;

create table modalidade(
idModalidade int primary key not null,
descricaoModalidade varchar(50) not null,
valor float
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
senha varchar(50) not null,
idTipoUsuario int not null
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
LOGUsuarioResponsavel varchar(50) not null
);

create table statusPagamento(
idStatusPagamento int primary key not null,
descricaoStatusPagamento varchar(50) not null
);

create table objetivo(
idObjetivo int primary key not null,
descricaoObjetivo varchar(50) not null
);

create table Aluno(
idAluno int primary key not null,
nomeAluno varchar(80) not null,
idade int,
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
peso float,
altura float,
frequenciaAtividadeFisica int,
qtdRefeicoesDia int,
qtdHorasSono int,
suplementacao tinyint(1),
dieta tinyint(1),
fumante tinyint(1),
consomeBebidaAlcoolica tinyint(1),
dataCadastro date,
ativo tinyint(1),
cpf VARCHAR(50),
foto blob,
informacaoAdicional varchar(200),
idObjetivo int,
dataComposicaoFicha date
);

create table AlunoModalidade(
idAluno int not null,
idmodalidade int not null,
dataInscrição date,
diavencimento int,
PRIMARY KEY (idAluno,idModalidade)
);

/*
create table AlunoPatologia(
idAlunoPatologia int primary key not null,
idAluno int not null,
idPatologia int not null,
observacaoMedica varchar(200)
);
*/

create table AlunoPatologia(
idAluno int not null,
idPatologia int not null,
observacaoMedica varchar(200),
PRIMARY KEY (idAluno,idPatologia)
);

create table Equipamento(
idEquipamento int primary key not null,
descricaoEquipamento varchar(50),
imgEquipamento int
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
idGrupoExercicio int not null
);

/*
create table Ficha(
idAluno int primary key not null,
dataComposicao date
);
*/

create table serie(
idAluno int not null,
idTreino int not null,
idExercicio int not null,
qtdSerie int,
qtdRepeticao int,
PRIMARY KEY (idAluno,idTreino,idExercicio)
);

Create table modulo(
idModulo int primary key not null,
descricaoModulo varchar(50) not null
);

Create table interface(
idInterface int primary key not null,
descricaoInterface varchar(50) not null,
idModulo int not null
);

Create table seguranca(
idSeguranca int primary key not null,
idInterface int not null,
idTipoUsuario int not null,
cadastrar tinyint,
alterar tinyint,
consultar tinyint,
excluir tinyint
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

-- CADASTRA MODALIDADE
INSERT INTO MODALIDADE(IDMODALIDADE, DESCRICAOMODALIDADE, VALOR) VALUES(1,'MUSCULAÇÃO', 30.00);

-- CADASTRA MODULO
INSERT INTO MODULO(IDMODULO, DESCRICAOMODULO) VALUES(1,'HOME');

-- CADASTRA INTERFACES
--

-- CADATRA USUARIO PADRAO INICIAL
INSERT INTO USUARIO(IDUSUARIO,NOMEUSUARIO, USERNAME,SENHA,IDTIPOUSUARIO) VALUES(1,'ADMINISTRADOR', 'admin','admin',1);

-- CADASTRAR TODOS OS TIPOS DE USUARIO: ADMIN E INSTRUTOR
INSERT INTO TIPOUSUARIO(IDTIPOUSUARIO,DESCRICAOTIPOUSUARIO) VALUES(1,'ADMINISTRADOR');
INSERT INTO TIPOUSUARIO(IDTIPOUSUARIO,DESCRICAOTIPOUSUARIO) VALUES(2,'INSTRUTOR');

INSERT INTO STATUSPAGAMENTO(IDSTATUSPAGAMENTO,DESCRICAOSTATUSPAGAMENTO) VALUES(1,'EM ABERTO');
INSERT INTO STATUSPAGAMENTO(IDSTATUSPAGAMENTO,DESCRICAOSTATUSPAGAMENTO) VALUES(2,'PAGO');
INSERT INTO STATUSPAGAMENTO(IDSTATUSPAGAMENTO,DESCRICAOSTATUSPAGAMENTO) VALUES(3,'ISENTO');

-- CADASTRA O CONTROLE DE ACESSO DOS ATORES +
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(1,1,1,1,1,1,1);
--

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
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('tipousuario',3);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('equipamento',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('exercicio',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('grupoexercicio',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('ficha',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('serie',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('AlunoPatologia',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('idAlunoModalidade',1);

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

-- CALL geraMensalidade;

-- Drop PROCEDURE geraMensalidade;

delimiter |
CREATE EVENT CHAMA_PROCEDURE_GERA_MENSALIDADE ON SCHEDULE EVERY 1 DAY 
 -- STARTS ALGUMA_DATA_HORA ENABLE
DO
	CALL geraMensalidade;
|
DELIMITER ;



-- SHOW events;

-- DROP EVENT CHAMA_PROCEDURE_GERA_MENSALIDADE;







