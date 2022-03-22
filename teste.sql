 -- Criar Banco de dados
 CREATE DATABASE db_quitanda;
 
 -- Selecionar o Banco de dados
 USE db_quitanda;
 -- Criar Tabela td_produtos
 CREATE TABLE td_produtos(
 id bigint auto_increment,
 nome varchar(255) not null,
 quantidade int,
 data_validade date, 
 preco decimal not null,
 PRIMARY KEY (id)
 );
 
 
 -- Insetir dados na tabela
 
 INSERT INTO td_produtos (nome, quantidade, data_validade, preco)
 VALUES ("arroz", 50, 2023/04/29, 40.00);
 
 INSERT INTO td_produtos (nome, quantidade, data_validade, preco)
 VALUES ("xuxu", 1, 2022/03/22, 5.00);
 
  INSERT INTO td_produtos (nome, quantidade, data_validade, preco)
 VALUES ("tomate", 80, 2022/03/22, 15.00);
 
  INSERT INTO td_produtos (nome, quantidade, data_validade, preco)
 VALUES ("cenoura", 30, 2022-03-22, 5.00);
 
  INSERT INTO td_produtos (nome, quantidade, data_validade, preco)
 VALUES ("morango", 1, 2022/03/22, 5.00);
 
 -- Listar todos os produtos
 SELECT * FROM tb_produtos;
 
 -- Atualizar os dados da tabela
 UPDATE tb_produtos SET Preço = 8.50 WHERE id = 5
 
 SET SQL_SAFE_UPDATES = 0;
 UPDATE td_produtos SET preço = 8.50;
 /* Alterações na Estrutura da tabela */
 
 ALTER TABLE td_produtos MODIFY preço decimal(8,2); 
 