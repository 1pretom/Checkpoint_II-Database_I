CREATE DATABASE futebol_baba_europeu;
USE futebol_baba_europeu;

CREATE TABLE estatisticas(
    id_estatisticas INT AUTO_INCREMENT PRIMARY KEY,
    qtd_gols INT NOT NULL,
    qtd_assistencias INT NOT NULL,
    qtd_paredao INT NOT NULL
);
CREATE TABLE jogador(
    id_jogador INT AUTO_INCREMENT,
    nome VARCHAR(35) NOT NULL,
    sobrenome VARCHAR(50),
    numero_da_camisa TINYINT NOT NULL,
    apelido_na_camisa VARCHAR(20),
    data_nascimento DATE NOT NULL,
    whatsapp VARCHAR (20),
    id_estatisticas INT,
    PRIMARY KEY (id_jogador),
    FOREIGN KEY (id_estatisticas) REFERENCES estatisticas(id_estatisticas)
);



CREATE TABLE craque(
    id_craque INT AUTO_INCREMENT PRIMARY KEY,
    qtd_craque_ano TINYINT,
    id_jogador INT,
    craque_mes TINYINT,
    craque_semana TINYINT,
    FOREIGN KEY (id_jogador) REFERENCES jogador(id_jogador)
);

CREATE TABLE o_melhor(
	id_o_melhor INT AUTO_INCREMENT PRIMARY KEY,
    id_craque INT ,
    id_jogador INT , 
	FOREIGN KEY (id_craque) REFERENCES craque(id_craque),
    FOREIGN KEY (id_jogador) REFERENCES jogador(id_jogador)
);
 
 CREATE TABLE advertencia(
	id_advertencia INT AUTO_INCREMENT PRIMARY KEY,
    adv_jogador TINYINT,
    nome_jogador VARCHAR(30)
);

INSERT INTO advertencia (id_advertencia, adv_jogador, nome_jogador)
VALUES (DEFAULT, 1, "Wash Becker");
INSERT INTO advertencia (id_advertencia, adv_jogador, nome_jogador)
VALUES (DEFAULT, 0, "Prata");
INSERT INTO advertencia (id_advertencia, adv_jogador, nome_jogador)
VALUES (DEFAULT, 0, "Ragnar");
INSERT INTO advertencia (id_advertencia, adv_jogador, nome_jogador)
VALUES (DEFAULT, 1, "Gennaro");
INSERT INTO advertencia (id_advertencia, adv_jogador, nome_jogador)
VALUES (DEFAULT, 0, "Zito");

DELETE FROM advertencia WHERE id_advertencia = 1;
DELETE FROM advertencia WHERE id_advertencia = 3;
DELETE FROM advertencia WHERE id_advertencia = 4;
 
INSERT INTO estatisticas(id_estatisticas, qtd_gols, qtd_assistencias, qtd_paredao)
VALUES (DEFAULT, 23, 13, 0);
INSERT INTO jogador (id_jogador, nome, sobrenome, numero_da_camisa, apelido_na_camisa, data_nascimento, whatsapp, id_estatisticas)
VALUES (default, 'Alisson', 'Lima', 21, 'Sinho', '1996-07-21', '71987654321', @@IDENTITY);
INSERT INTO craque (id_craque, qtd_craque_ano, id_jogador, craque_mes, craque_semana)
VALUES (DEFAULT, 1, @@IDENTITY, 4, 8);
INSERT INTO o_melhor (id_o_melhor, id_craque, id_jogador)
VALUES (DEFAULT, @@IDENTITY, @@IDENTITY);

INSERT INTO estatisticas(id_estatisticas, qtd_gols, qtd_assistencias, qtd_paredao)
VALUES (DEFAULT, 4, 22, 5);
INSERT INTO jogador (id_jogador, nome, sobrenome, numero_da_camisa, apelido_na_camisa, data_nascimento, whatsapp, id_estatisticas)
VALUES (default, 'Breno', 'Gargur', 23, 'Brego', '1996-01-07', '71987456231', @@IDENTITY);
INSERT INTO craque (id_craque, qtd_craque_ano, id_jogador, craque_mes, craque_semana)
VALUES (DEFAULT, 0, @@IDENTITY, 1, 3);
INSERT INTO o_melhor (id_o_melhor, id_craque, id_jogador)
VALUES (DEFAULT, @@IDENTITY, @@IDENTITY);

INSERT INTO estatisticas(id_estatisticas, qtd_gols, qtd_assistencias, qtd_paredao)
VALUES (DEFAULT, 27, 4, 2);
INSERT INTO jogador (id_jogador, nome, sobrenome, numero_da_camisa, apelido_na_camisa, data_nascimento, whatsapp, id_estatisticas)
VALUES (default, 'Marcus', 'Vinicius', 8, 'Ursão', '1994-03-28', '7194632587', @@IDENTITY);
INSERT INTO craque (id_craque, qtd_craque_ano, id_jogador, craque_mes, craque_semana)
VALUES (DEFAULT, 0, @@IDENTITY, 2, 7);
INSERT INTO o_melhor (id_o_melhor, id_craque, id_jogador)
VALUES (DEFAULT, @@IDENTITY, @@IDENTITY);

INSERT INTO estatisticas(id_estatisticas, qtd_gols, qtd_assistencias, qtd_paredao)
VALUES (DEFAULT, 27, 4, 2);
INSERT INTO jogador (id_jogador, nome, sobrenome, numero_da_camisa, apelido_na_camisa, data_nascimento, whatsapp, id_estatisticas)
VALUES (default, 'Washington', 'Damacena', 1, 'Wash Becker', '1996-04-25', '7194992512', @@IDENTITY);
INSERT INTO craque (id_craque, qtd_craque_ano, id_jogador, craque_mes, craque_semana)
VALUES (DEFAULT, 0, @@IDENTITY, 4, 7);
INSERT INTO o_melhor (id_o_melhor, id_craque, id_jogador)
VALUES (DEFAULT, @@IDENTITY, @@IDENTITY);

UPDATE estatisticas
SET qtd_gols = 1, qtd_assistencias = 2, qtd_paredao = 15
WHERE id_estatisticas = 4;

CREATE TABLE serenin(
    id_serenin INT AUTO_INCREMENT PRIMARY KEY,
    para_apagar VARCHAR(20) NOT NULL
);
INSERT INTO serenin (id_serenin, para_apagar)
VALUES (DEFAULT, 'Apagar');

DELETE FROM serenin WHERE id_serenin = 1;
DROP TABLE IF EXISTS serenin;


