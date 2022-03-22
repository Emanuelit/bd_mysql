/* Atividade4 */

-- Criar Banco de Dados
CREATE DATABASE db_generation_game_online;

-- Acessar o Banco de Dados
USE db_generation_game_online;

-- Criar Tabela
CREATE TABLE tb_classe (
id BIGINT auto_increment,
habilidade varchar(255),
classeDePersonagem varchar(255),
raca varchar(255),
PRIMARY KEY (id)
);


INSERT INTO tb_classe(habilidade, classeDePersonagem, raca)
VALUES ("Destreza", "Arqueiro", "Wood Elf");

INSERT INTO tb_classe(habilidade, classeDePersonagem, raca)
VALUES ("Força", "Bárbaro", "Orc");

INSERT INTO tb_classe(habilidade, classeDePersonagem, raca)
VALUES ("Inteligência", "Alquimista", "Hobbit"); 

INSERT INTO tb_classe(habilidade, classeDePersonagem, raca)
VALUES ("Carisma", "Bardo", "Humano"); 

INSERT INTO tb_classe(habilidade, classeDePersonagem, raca)
VALUES ("Sabedoria", "Mago" , "Redguard");

-- Criar Tabela
CREATE TABLE tb_personagem (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
ataque int ,
defesa int ,
sexo varchar(255),
classe_id BIGINT,
energia int ,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

INSERT INTO tb_personagem(nome, ataque, defesa, sexo, energia)
VALUES ("Cláudio", 2500, 2000, "M", 5000);

INSERT INTO tb_personagem(nome, ataque, defesa, sexo, energia)
VALUES ("Joana", 1500, 1000, "F", 3000);

INSERT INTO tb_personagem(nome, ataque, defesa, sexo, energia)
VALUES ("Alex", 4500, 3000, "M", 8000);

INSERT INTO tb_personagem(nome, ataque, defesa, sexo, energia)
VALUES ("Clarisse", 9500, 200, "F", 999);

INSERT INTO tb_personagem(nome, ataque, defesa, sexo, energia)
VALUES ("Rafa", 9, 9, "M", 0);

INSERT INTO tb_personagem(nome, ataque, defesa, sexo, energia)
VALUES ("Jeff", 2002, 2087, "M", 5343);

INSERT INTO tb_personagem(nome, ataque, defesa, sexo, energia)
VALUES ("Luana", 3500, 2760, "M", 4500);

INSERT INTO tb_personagem(nome, ataque, defesa, sexo, energia)
VALUES ("João", 200, 200, "M", 200);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa BETWEEN 100 AND 2000; 

SELECT * FROM tb_personagem WHERE nome LIKE "%C%";

/*inner join  relação de dados*/
SELECT tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa, tb_personagem.sexo, tb_personagem.energia,
tb_classe.habilidade,tb_classe.classeDePersonagem, tb_classe.raca
FROM tb_personagem INNER JOIN tb_classe



SELECT * FROM tb_personagem INNER JOIN
tb_classe ON tb.personagens.classe_id = tb_classes.id WHERE classeDePersonagem LIKE "%Arqueiro%"









