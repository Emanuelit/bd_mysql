/* Atividade 1 */

-- Criar Banco de Dados
CREATE DATABASE db_recursoshumanos;

-- Acessar o Banco de Dados
USE db_recursoshumanos;

-- Criar Tabela
CREATE TABLE tb_funcionaries (
id BIGINT AUTO_INCREMENT,
nome varchar(255) NOT NULL,
funcao varchar(255) NOT NULL,
salario decimal NOT NULL,
setor varchar(255) NOT NULL,
RE BIGINT,
PRIMARY KEY (id)
);

INSERT INTO tb_funcionaries(nome, funcao, salario, setor, RE)
VALUES ("Juliana", "Analista", 1700, "RH", 10972);

INSERT INTO tb_funcionaries(nome, funcao, salario, setor, RE)
VALUES ("Marcelo","Líder do RH", 5000, "RH", 29135);

INSERT INTO tb_funcionaries(nome, funcao, salario, setor, RE)
VALUES ("Luan","Estagiário Financeiro", 1200, "RH", 29835);

INSERT INTO tb_funcionaries(nome, funcao, salario, setor, RE)
VALUES ("Sabrina","Gerente de Marketing", 15000, "Marketing", 34562);

INSERT INTO tb_funcionaries(nome, funcao, salario, setor, RE)
VALUES ("Emanuel","Desenvolvedor Júnior", 3000, "Tecnologia", 28635);

SELECT * FROM tb_funcionaries;

SELECT * FROM tb_funcionaries WHERE salario > 2000;
SELECT * FROM tb_funcionaries WHERE salario < 2000;

UPDATE tb_funcionaries SET salario = 20000 WHERE id = 4;







