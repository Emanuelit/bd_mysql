CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(255) NOT NULL,
tamanho VARCHAR(255) NOT NULL,
preco DECIMAL(5,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (sabor, tamanho, preco)
VALUES ("Quatro Queijos", "Grande", 40.00);

INSERT INTO tb_categoria (sabor, tamanho, preco)
VALUES ("Calabresa", "Pequena", 26.00);

INSERT INTO tb_categoria (sabor, tamanho, preco)
VALUES ("Mussarela", "Média", 35.00);

INSERT INTO tb_categoria (sabor, tamanho, preco)
VALUES ("Margherita", "Gigante", 60.00);

INSERT INTO tb_categoria (sabor, tamanho, preco)
VALUES ("A moda da Casa", "Média", 80.00);

CREATE TABLE tb_pizza (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
ingrediente VARCHAR(255),
atendimento VARCHAR(255),
entrega VARCHAR(255),
pagamento VARCHAR(255),
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_pizza (atendimento, entrega, tipo, ingrediente, pagamento, categoria_id) 
VALUES ("Celular", "Á domicilio", "Salgada", "Mussarela, presunto, requeijão, oregano e tomate", "Dinheiro", 5);

INSERT INTO tb_pizza (atendimento, entrega, tipo, ingrediente, pagamento, categoria_id) 
VALUES ("WhatsApp", "Retirar no local", "Salgada", "Mussarela, presunto, requeijão, oregano e tomate", "Dinheiro", 3);

INSERT INTO tb_pizza (atendimento, entrega, tipo, ingrediente, pagamento, categoria_id) 
VALUES ("Comer no local", "Comer no local", "Salgada", "Mussarela, oregano e pepperoni", " Pix", 5);

INSERT INTO tb_pizza (atendimento, entrega, tipo, ingrediente, pagamento, categoria_id) 
VALUES ("UberEats", "A domicilio", "Salgada", "Mussarela, oregano e pepperoni", "Cartão", 3);

INSERT INTO tb_pizza (atendimento, entrega, tipo, ingrediente, pagamento, categoria_id) 
VALUES ("Whatsapp", "A domicilio", "Salgada", "Queijo mussarela e oregano", "Cartão", 1);

INSERT INTO tb_pizza (atendimento, entrega, tipo, ingrediente, pagamento, categoria_id)
VALUES ("WhatsApp", "Retirar no local", "Salgada", "Mussarela, tomate, oregano e manjericão", "Cartão", 2);
 
INSERT INTO tb_pizza (atendimento, entrega, tipo, ingrediente, pagamento, categoria_id)
VALUES ("Local", "comer no local", "Salgada", "Mussarela, tomate, oregano e manjericão", "QRcode",4);

INSERT INTO tb_pizza (atendimento, entrega, tipo, ingrediente, pagamento, categoria_id) 
VALUES ("Ifood", "A domicilio", "Salgada", "Mussarela, calabresa e cebola, oregano", "Cartão", 1);

SELECT * FROM tb_pizza;

SELECT * FROM tb_categoria WHERE preco >= 45.00;

SELECT * FROM tb_categoria WHERE preco BETWEEN 29.00 AND 60.00; 

SELECT * FROM tb_categoria WHERE sabor LIKE "%C%";

SELECT * FROM tb_pizza WHERE tipo LIKE "%Salgada%";

SELECT tb_pizza.atendimento, tb_pizza.entrega, tb_pizza.tipo, tb_pizza.ingrediente, tb_pizza.pagamento, tb_pizza.categoria_id, tb_categoria.sabor, tb_categoria.tamanho, tb_categoria.preco
FROM tb_pizza INNER JOIN tb_categoria
ON tb_categoria.id = tb_pizza.categoria_id;