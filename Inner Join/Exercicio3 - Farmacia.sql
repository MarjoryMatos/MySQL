CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id bigint auto_increment,
tipo varchar (255),
receita boolean,
contraIndicacao boolean,

 primary key (id)
);

CREATE TABLE tb_produtos (
id bigint auto_increment,
nome varchar(255),
preco double,
fabricante varchar(255),
quantidade int,
categorias_id bigint,

primary key(id),
foreign key (categorias_id) references tb_categorias(id)
);

INSERT INTO tb_categorias(tipo, receita, contraIndicacao) VALUES ("Fitoterápico", true, true);
INSERT INTO tb_categorias(tipo, receita, contraIndicacao) VALUES ("Alopático", true, false);
INSERT INTO tb_categorias(tipo, receita, contraIndicacao) VALUES ("Homepático", true, true);
INSERT INTO tb_categorias(tipo, receita, contraIndicacao) VALUES ("Genérico", false, false);
INSERT INTO tb_categorias(tipo, receita, contraIndicacao) VALUES ("Manipulado", true, false);

INSERT INTO tb_produtos(nome, preco, fabricante, quantidade, categorias_id)
VALUES ("Agiolax", 124.00, "Takeda", 6, 1);
INSERT INTO tb_produtos(nome, preco, fabricante, quantidade, categorias_id)
VALUES ("Dorflex", 19.90, "Sanofi", 15, 2);
INSERT INTO tb_produtos(nome, preco, fabricante, quantidade, categorias_id)
VALUES ("Phosphorus", 29.90, "Ache", 6, 3);
INSERT INTO tb_produtos(nome, preco, fabricante, quantidade, categorias_id)
VALUES ("Amoxicilina", 69.90, "Amoxil", 4, 4);
INSERT INTO tb_produtos(nome, preco, fabricante, quantidade, categorias_id)
VALUES ("Bupropiona", 136.00, "Eurofarma", 2, 5);
INSERT INTO tb_produtos(nome, preco, fabricante, quantidade, categorias_id)
VALUES ("Orlistate", 149.00, "Eurofarma", 1, 5);
INSERT INTO tb_produtos(nome, preco, fabricante, quantidade, categorias_id)
VALUES ("Biotina", 69.00, "Ache", 5, 2);

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categorias_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id WHERE categorias_id = 3;