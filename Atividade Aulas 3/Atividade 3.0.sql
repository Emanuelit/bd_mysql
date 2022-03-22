create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR (255) not null,
tarja varchar(255) not null,
setor varchar(255) not null,
primary key (id)
);

INSERT INTO tb_categoria (tipo, tarja, setor) VALUES ("Antidepressivo", "Vermelha", "/Adulto");
INSERT INTO tb_categoria (tipo, tarja, setor) VALUES ("Espirro e Dor", "Amarela", "Infantil/");
INSERT INTO tb_categoria (tipo, tarja, setor) VALUES ("Suplemento", "Natural", "Adulto");
INSERT INTO tb_categoria (tipo, tarja, setor) VALUES ("Antialérgicos", "Amarela", "Adulto");
INSERT INTO tb_categoria (tipo, tarja, setor) VALUES ("Psiquiátricos", "Preta", "Adulto");

select * from tb_categoria;

create table tb_remedio(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) not null,
uso VARCHAR (255) not null,
preco decimal(5,2) not null,
categoria VARCHAR (255) not null,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_remedio (nome, uso, preco, categoria, categoria_id) VALUES ("Dipirona", "oral", 19.99, "Original", 5);
INSERT INTO tb_remedio (nome, uso, preco, categoria, categoria_id) VALUES ("Ibuprofeno", "oral", 58.99, "Original", 2);
INSERT INTO tb_remedio (nome, uso, preco, categoria, categoria_id) VALUES ("Vensal", "oral", 98.99, "Original", 5);
INSERT INTO tb_remedio (nome, uso, preco, categoria, categoria_id) VALUES ("Sertralina", "oral", 5.99, "Genérico", 2);
INSERT INTO tb_remedio (nome, uso, preco, categoria, categoria_id) VALUES ("Azitromicina", "oral", 26.99, "Genérico", 1);
INSERT INTO tb_remedio (nome, uso, preco, categoria, categoria_id) VALUES ("Xarope", "oral", 76.99, "Original", 3);
INSERT INTO tb_remedio (nome, uso, preco, categoria, categoria_id) VALUES ("Allegra", "oral", 25.00, "Original", 4);
INSERT INTO tb_remedio (nome, uso, preco, categoria, categoria_id) VALUES ("Polaramine", "oral", 63.50, "Original", 4);

SELECT * FROM tb_remedio;

SELECT * FROM tb_remedio where preco > 50.00;

SELECT * FROM tb_remedio where preco between 3.00 and 60.00;

SELECT * FROM tb_remedio where nome like "B%";

SELECT tb_remedio.nome, tb_remedio.uso, tb_remedio.preco, tb_remedio.categoria, tb_categoria.tipo, tb_categoria.tarja, tb_categoria.setor   
FROM tb_remedio INNER JOIN tb_categoria on tb_categoria.id = tb_remedio.categoria_id; 

select tb_remedio.nome, tb_remedio.uso, tb_remedio.preco, tb_remedio.categoria, tb_categoria.tipo, tb_categoria.tarja, tb_categoria.setor   
from tb_remedio inner join
tb_categoria on tb_categoria.id = tb_remedio.categoria_id where tarja like "%Preta%";