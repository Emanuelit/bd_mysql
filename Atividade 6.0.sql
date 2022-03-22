create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categoria(
id bigint auto_increment not null,
formacao varchar(255),
setor varchar(255),
parceria_educacional varchar(3),
primary key(id)
);

insert into tb_categoria(formacao, parceria_educacional)values("Profissionalizante", "Sim");
insert into tb_categoria(formacao, parceria_educacional)values("Graduação", "Sim");
insert into tb_categoria(formacao, parceria_educacional)values("Pós-Graduação", "Sim");
insert into tb_categoria(formacao, parceria_educacional)values("Mestrado", "Não");
insert into tb_categoria(formacao, parceria_educacional)values("Técnologo", "Não");

create table tb_produtos(
id bigint auto_increment not null,
curso varchar(255),
preco decimal(6,2),
duracao varchar(255),
desconto varchar(50),
id_categoria bigint,
primary key(id),
foreign key(id_categoria) references tb_categoria(id)
);

insert into tb_produtos (curso, preco, duracao, desconto, id_categoria) values("Curso técnico", 2800.00, "4 semestres", "30%" ,1);
insert into tb_produtos (curso, preco, duracao, desconto, id_categoria) values("Enfermagem", 650.00, "6 semestres","20%", 2);
insert into tb_produtos (curso, preco, duracao, desconto, id_categoria) values("Jornalismo", 770.00, "6 meses", "15%", 5);
insert into tb_produtos (curso, preco, duracao, desconto, id_categoria) values("Medicina", 1500.00, "12 semestres","22%",2);
insert into tb_produtos (curso, preco, duracao, desconto, id_categoria) values("Inglês", 550.00, "2 semestres","32%", 1);
insert into tb_produtos (curso, preco, duracao, desconto, id_categoria) values("Sistemas para internet", 1100.00, "2 anos","45%",4);
insert into tb_produtos (curso, preco, duracao, desconto, id_categoria) values("CC", 999.99, "6 meses","10%", 3);
insert into tb_produtos (curso, preco, duracao, desconto, id_categoria) values("Advocacia", 1200.00, "10 semestres","10%",5);
insert into tb_produtos (curso, preco, duracao, desconto, id_categoria) values("Administração", 455.50, "8 semestres" ,"10%", 1);


select curso, CONCAT('R$', FORMAT(preco,2,'pt_br')) as preco , duracao, desconto from tb_produtos where preco > 50;
select curso, CONCAT('R$', FORMAT(preco,2,'pt_br')) as preco , duracao, desconto from tb_produtos where preco > 3 and preco < 60 ;
select curso, CONCAT('R$', FORMAT(preco,2,'pt_br')) as preco , duracao, desconto from tb_produtos where curso like 'J%';

select curso, preco, duracao, desconto, parceria_educacional from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria; 

select curso, preco, duracao, desconto, parceria_educacional from tb_produtos
inner join tb_categoria on  tb_categoria.id = tb_produtos.id_categoria where duracao like '%anos%';