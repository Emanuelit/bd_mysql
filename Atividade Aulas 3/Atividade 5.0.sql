CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;


CREATE TABLE tb_categoria(id bigint AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
setor varchar(255) NOT NULL,
estoque varchar(255) NOT NULL,
PRIMARY KEY (id));


INSERT INTO tb_categoria (tipo, setor, estoque)
VALUES ("Construção", "Area Externa/Interna", "Disponivel");

INSERT INTO tb_categoria (tipo, setor, estoque)
VALUES ("Pintura", "Area Externa/Interna", "Disponivel");

INSERT INTO tb_categoria (tipo, setor, estoque)
VALUES ("Decoração", "Area Externa/Interna", "Disponivel");

INSERT INTO tb_categoria (tipo, setor, estoque)
VALUES ("Eletros", "Area Externa/Interna", "Disponivel");

INSERT INTO tb_categoria (tipo, setor, estoque)
VALUES ("Elétrica", "Area Externa/Interna", "Disponivel");


SELECT * FROM tb_categoria;


CREATE TABLE tb_produto(id bigint AUTO_INCREMENT,
nome varchar (255) NOT NULL,
preco decimal(6, 2) NOT NULL,
garantia_meses int, categoria_id bigint, PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id));

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id)
VALUES ("Madeira", 449.99, 6, 3);

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id)
VALUES ("Espelho", 1199.90, 3, 3);

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id)
VALUES ("cabo", 25.99, 3, 2);

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id)
VALUES ("", 19.99, 0, 2);

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id)
VALUES ("Samsung", 3835.10, 3, 4);

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id)
VALUES ("Smart Tv", 2999.99, 12, 4);

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id)
VALUES ("Tinta Látex", 435.49, 12, 2);

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id)
VALUES ("Argamassas", 34.99, 12, 1);

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id)
VALUES ("Caixa d'Água", 2479.99, 120, 1);

SELECT * FROM tb_produto;


SELECT * FROM tb_produto
WHERE preco > 50.00;


SELECT * FROM tb_produto
WHERE preco BETWEEN 3.00 AND 60.00;


SELECT * FROM tb_produto
WHERE nome like "%c%";


SELECT tb_produto.nome, tb_produto.preco, tb_produto.garantia_meses, tb_categoria.tipo, tb_categoria.setor,tb_categoria.estoque
FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id;


SELECT tb_produto.nome, tb_produto.preco, tb_produto.garantia_meses, tb_categoria.tipo, tb_categoria.setor, tb_categoria.estoque
FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id
WHERE nome like "%x%";