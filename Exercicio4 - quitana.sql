CREATE DATABASE db_quintana_carnes;
USE db_quintana_carnes;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    categoria varchar(255),
    animal varchar(255),
    tamanho varchar (255),
    
    primary key (id)
);

CREATE TABLE tb_produto(
	id bigint auto_increment,
    nome varchar(255),
    peso varchar(255),
    preco decimal (10,2),
    teorGordura varchar (255),
    quantidade int,
    animal varchar (255),
    categoria_id bigint,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
);

SELECT * FROM tb_categoria;
SELECT * FROM tb_produto;

INSERT INTO tb_categoria (categoria, animal, tamanho) VALUES ("Carne Vermelha", "Boi", "Animal Grande");
INSERT INTO tb_categoria (categoria, animal, tamanho) VALUES ("Carne Vermelha", "Boi", "Animal Pequeno");
INSERT INTO tb_categoria (categoria, animal, tamanho) VALUES ("Carne Branca", "Ave", "Animal Médio");
INSERT INTO tb_categoria (categoria, animal, tamanho) VALUES ("Carne Branca", "Peixe", "Animal Pequeno");

INSERT INTO tb_produto(nome, peso, preco, teorGordura, quantidade, animal, categoria_id)
VALUES("Picanha", "1.5kg", "90.00", "19.5 p/ 100g", 1, "boi", 1);

INSERT INTO tb_produto(nome, peso, preco, teorGordura, quantidade, animal, categoria_id)
VALUES("Alcatra", "1.2kg", "56.00", "12.0 p/ 100g", 3, "boi", 2);

INSERT INTO tb_produto(nome, peso, preco, teorGordura, quantidade, animal, categoria_id)
VALUES("Peixe Espada", "500g", "45.00", "15.5 p/ 100g", 2, "peixe", 4);

INSERT INTO tb_produto(nome, peso, preco, teorGordura, quantidade, animal, categoria_id)
VALUES("Asinha de frango", "1.0kg", "25.00", "10.0 p/ 100g", 5, "Ave", 3);

INSERT INTO tb_produto(nome, peso, preco, teorGordura, quantidade, animal, categoria_id)
VALUES("Peito de frango", "1.50kg", "30.00", "3.5 p/ 100g", 9, "ave", 3);

INSERT INTO tb_produto(nome, peso, preco, teorGordura, quantidade, animal, categoria_id)
VALUES("Acém", "2.0kg", "45.00", "25.0 p/ 100g", 5, "boi", 1);

INSERT INTO tb_produto(nome, peso, preco, teorGordura, quantidade, animal, categoria_id)
VALUES("Coração de frango", "1.6kg", "15.00", "5.0 p/ 100g", 6, "ave", 3);

INSERT INTO tb_produto(nome, peso, preco, teorGordura, quantidade, animal, categoria_id)
VALUES("Fraldinha", "900g", "30.00", "6.00 p/ 100g", 9, "ave", 2);

INSERT INTO tb_produto(nome, peso, preco, teorGordura, quantidade, animal, categoria_id)
VALUES("Cação", "1.5kg", "15.00", "0.25 p/ 100g", 12, "peixe", 4);

INSERT INTO tb_produto(nome, peso, preco, teorGordura, quantidade, animal, categoria_id)
VALUES("Salmão", "2.5kg", "60.00", "020 p/ 100g", 4, "peixe", 4);

SELECT * FROM tb_produto;
SELECT * FROM tb_categoria;
SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE nome LIKE "%A%";
UPDATE tb_produto SET preco = 65.00 WHERE id = 2;

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id;