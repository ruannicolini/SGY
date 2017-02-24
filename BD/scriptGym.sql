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
cpf VARCHAR(50),
informacaoAdicional varchar(500),
idObjetivo int,
dataComposicaoFicha date,
idInstrutorFicha int
);

create table AlunoModalidade(
idAluno int not null,
idmodalidade int not null,
dataInscrição date,
diavencimento int,
PRIMARY KEY (idAluno,idModalidade)
);

create table AlunoPatologia(
idAluno int not null,
idPatologia int not null,
observacaoMedica varchar(700),
PRIMARY KEY (idAluno,idPatologia)
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
idGrupoExercicio int not null
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

-- CADASTRA MODALIDADE
INSERT INTO MODALIDADE(IDMODALIDADE, DESCRICAOMODALIDADE, VALOR) VALUES(1,'MUSCULAÇÃO', 30.00);

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

-- CADATRA USUARIO PADRAO INICIAL
INSERT INTO USUARIO(IDUSUARIO,NOMEUSUARIO, USERNAME,SENHA,IDTIPOUSUARIO) VALUES(1,'ADMINISTRADOR', 'admin','21232F297A57A5A743894A0E4A801FC3',1);

-- CADASTRAR TODOS OS TIPOS DE USUARIO: ADMIN E INSTRUTOR
INSERT INTO TIPOUSUARIO(IDTIPOUSUARIO,DESCRICAOTIPOUSUARIO) VALUES(1,'ADMINISTRADOR');
INSERT INTO TIPOUSUARIO(IDTIPOUSUARIO,DESCRICAOTIPOUSUARIO) VALUES(2,'INSTRUTOR');

INSERT INTO STATUSPAGAMENTO(IDSTATUSPAGAMENTO,DESCRICAOSTATUSPAGAMENTO) VALUES(1,'EM ABERTO');
INSERT INTO STATUSPAGAMENTO(IDSTATUSPAGAMENTO,DESCRICAOSTATUSPAGAMENTO) VALUES(2,'PAGO');
INSERT INTO STATUSPAGAMENTO(IDSTATUSPAGAMENTO,DESCRICAOSTATUSPAGAMENTO) VALUES(3,'ISENTO');

-- CADASTRA O CONTROLE DE ACESSO DOS ATORES +
-- F01001
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(1,1,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(2,1,2,1,1,1,0);
-- F01002
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(3,2,1,0,1,1,0);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(4,2,2,0,0,0,0);
-- F01003
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(5,3,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(6,3,2,1,1,1,1);
-- F01004
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(7,4,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(8,4,2,1,1,1,1);
-- F01005
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(9,5,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(10,5,2,1,1,1,1);
-- F01006
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(11,6,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(12,6,2,1,1,1,1);
-- F01007
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(13,7,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(14,7,2,1,1,1,1);
-- F01008
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(15,8,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(16,8,2,0,0,0,0);
-- F01012
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(17,12,1,1,1,1,1);
INSERT INTO SEGURANCA(IDSEGURANCA,IDINTERFACE,IDTIPOUSUARIO, CADASTRAR, ALTERAR, CONSULTAR,EXCLUIR) VALUES(18,12,2,0,0,0,0);


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
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('fichaPreDefinida',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('serie',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('AlunoPatologia',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('idAlunoModalidade',1);
INSERT INTO PARAMETROS(PARAMETRO, VALOR) VALUES('duracaoFichaEmMeses',3);

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
ON SCHEDULE  EVERY 1 DAY -- EVERY 13 DAY_HOUR 
-- ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 DAY
STARTS '2017-02-24 09:40:00' 
ENABLE
DO
	CALL geraMensalidade;
|
DELIMITER ;

-- Habilida Eventos
set global event_scheduler = on;
 select @@event_scheduler;

-- use gym;
-- SHOW events;
-- SELECT * FROM INFORMATION_SCHEMA.EVENTS;
-- SHOW PROCESSLIST;
-- DROP EVENT CHAMA_PROCEDURE_GERA_MENSALIDADE;

-- Exclui alunoPatologia, alunoModalidade, serie e pagamento em aberto do Aluno excluído
DELIMITER //
CREATE TRIGGER TRIGGER_Aluno_Delete 
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
        UPDATE PAGAMENTO SET pagamento.VALORMODALIDADE = NEW.valor WHERE PAGAMENTO.IDMODALIDADE = OLD.IDMODALIDADE AND PAGAMENTO.IDSTATUSPAGAMENTO = 1;
    END IF;

END //
DELIMITER ;

-- drop trigger TRIGGER_Modalidade_Update;




