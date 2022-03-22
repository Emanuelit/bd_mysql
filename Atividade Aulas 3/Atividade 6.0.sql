CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;


CREATE TABLE tb_categoria(id bigint AUTO_INCREMENT NOT NULL,
formacao varchar(255),
setor varchar(255),
parceria_educacional varchar(3),
PRIMARY key(id));


INSERT INTO tb_categoria(formacao, parceria_educacional)
VALUES("Profissionalizante", "Sim");

INSERT INTO tb_categoria(formacao, parceria_educacional)
VALUES("Graduação", "Sim");

INSERT INTO tb_categoria(formacao, parceria_educacional)
VALUES("Pós-Graduação", "Sim");

INSERT INTO tb_categoria(formacao, parceria_educacional)
VALUES("Mestrado", "Não");

INSERT INTO tb_categoria(formacao, parceria_educacional)
VALUES("Técnologo", "Não");

CREATE TABLE tb_produtos(id bigint AUTO_INCREMENT NOT NULL,
curso varchar(255),
preco decimal(6, 2),
duracao varchar(255),
desconto varchar(50),
id_categoria bigint, PRIMARY key(id),
FOREIGN key(id_categoria) REFERENCES tb_categoria(id));


INSERT INTO tb_produtos (curso, preco, duracao, desconto, id_categoria)
VALUES("Curso técnico", 2800.00, "4 semestres", "30%",1);

INSERT INTO tb_produtos (curso, preco, duracao, desconto, id_categoria)
VALUES("Enfermagem", 650.00, "6 semestres","20%", 2);

INSERT INTO tb_produtos (curso, preco, duracao, desconto, id_categoria)
VALUES("Jornalismo", 770.00, "6 meses", "15%", 5);

INSERT INTO tb_produtos (curso, preco, duracao, desconto, id_categoria)
VALUES("Medicina", 1500.00, "12 semestres","22%",2);

INSERT INTO tb_produtos (curso, preco, duracao, desconto, id_categoria)
VALUES("Inglês", 550.00, "2 semestres","32%", 1);

INSERT INTO tb_produtos (curso, preco, duracao, desconto, id_categoria)
VALUES("Sistemas para internet", 1100.00, "2 anos","45%",4);

INSERT INTO tb_produtos (curso, preco, duracao, desconto, id_categoria)
VALUES("CC", 999.99, "6 meses","10%", 3);

INSERT INTO tb_produtos (curso, preco, duracao, desconto, id_categoria)
VALUES("Advocacia", 1200.00, "10 semestres","10%",5);

INSERT INTO tb_produtos (curso, preco, duracao, desconto, id_categoria)
VALUES("Administração", 455.50, "8 semestres","10%", 1);


SELECT curso, CONCAT('R$', FORMAT(preco, 2, 'pt_br')) AS preco, duracao, desconto
FROM tb_produtos

WHERE preco > 50;


SELECT curso,
       CONCAT('R$', FORMAT(preco, 2, 'pt_br')) AS preco,
       duracao,
       desconto
FROM tb_produtos
WHERE preco > 3
  AND preco < 60 ;


SELECT curso,
       CONCAT('R$', FORMAT(preco, 2, 'pt_br')) AS preco,
       duracao,
       desconto
FROM tb_produtos
WHERE curso like 'J%';


SELECT curso,
       preco,
       duracao,
       desconto,
       parceria_educacional
FROM tb_produtos
INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.id_categoria;


SELECT curso,
       preco,
       duracao,
       desconto,
       parceria_educacional
FROM tb_produtos
INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.id_categoria
WHERE duracao like '%anos%';
