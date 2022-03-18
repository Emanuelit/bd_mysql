/* Atividade 2 */

-- Criar Banco de Dados
CREATE DATABASE db_ecommerce;

-- Acessar o Banco de Dados
USE db_ecommerce;

-- Criar Tabela
CREATE TABLE tb_produtos (
id bigint AUTO_INCREMENT,
codigo bigint,
produto varchar(255),
descricao varchar(255),
preco decimal NOT NULL,
quantidade int,
PRIMARY KEY(id)
);

INSERT INTO tb_produtos(codigo, produto, descricao, preco, quantidade)
VALUES (9383, "Eletrônicos", "Geladeira", 5000.00, 1);

INSERT INTO tb_produtos(codigo, produto, descricao, preco, quantidade)
VALUES (9182, "Eletrônicos", "Celular", 1999, 1);

INSERT INTO tb_produtos(codigo, produto, descricao, preco, quantidade)
VALUES (2910, "Material Escolar", "Caderno", 15, 5);

INSERT INTO tb_produtos(codigo, produto, descricao, preco, quantidade)
VALUES (2230, "Vestuário", "Vestido", 400, 1);

INSERT INTO tb_produtos(codigo, produto, descricao, preco, quantidade)
VALUES (3120, "Roupas", "Moletom", 150, 1);

INSERT INTO tb_produtos(codigo, produto, descricao, preco, quantidade)
VALUES (4230, "Roupas", "Terno", 500, 1);

INSERT INTO tb_produtos(codigo, produto, descricao, preco, quantidade)
VALUES (9374, "Roupas", "Blusa", 100, 1);

INSERT INTO tb_produtos(codigo, produto, descricao, preco, quantidade)
VALUES (2980, "Roupas", "Roupa intíma", 15, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;





