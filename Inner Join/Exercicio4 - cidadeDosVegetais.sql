CREATE DATABASE cidade_dos_vegetais;
USE cidade_dos_vegetais;

CREATE TABLE tb_categorias (
id bigint auto_increment,
categoria varchar(255),
grupo varchar (5),
tamanho varchar(255),

primary key(id)
);

CREATE TABLE tb_produtos (
id bigint auto_increment,
nome varchar(255),
preco double,
quantidade int,
cor varchar(255),
categorias_id bigint,

primary key (id),
foreign key (categorias_id) references tb_categorias(id)
);

INSERT INTO tb_categorias(categoria, grupo, tamanho) VALUES ("Fruta", "A", "Pequena"); 
INSERT INTO tb_categorias(categoria, grupo, tamanho) VALUES ("Raízes", "B", "Pequena");
INSERT INTO tb_categorias(categoria, grupo, tamanho) VALUES ("Legumes", "C", "Pequena");
INSERT INTO tb_categorias(categoria, grupo, tamanho) VALUES ("Fruta", "A", "Grande");
INSERT INTO tb_categorias(categoria, grupo, tamanho) VALUES ("Raízes", "B", "Grande");
INSERT INTO tb_categorias(categoria, grupo, tamanho) VALUES ("Legumes", "C", "Grande");

INSERT INTO tb_produtos(nome, preco, quantidade, cor, categorias_id)
VALUES ("Tomate", 8.00, 6, "vermelho", 1); 
INSERT INTO tb_produtos(nome, preco, quantidade, cor, categorias_id)
VALUES ("Pepino", 12.00, 4, "verde", 4); 
INSERT INTO tb_produtos(nome, preco, quantidade, cor, categorias_id)
VALUES ("Beterraba", 8.00, 10, "roxa", 5); 
INSERT INTO tb_produtos(nome, preco, quantidade, cor, categorias_id)
VALUES ("Cenoura", 15.00, 8, "laranja", 2); 
INSERT INTO tb_produtos(nome, preco, quantidade, cor, categorias_id)
VALUES ("Cebola", 7.00, 5, "roxa", 3); 
INSERT INTO tb_produtos(nome, preco, quantidade, cor, categorias_id)
VALUES ("Batata", 9.00, 8, "amarela", 6); 
INSERT INTO tb_produtos(nome, preco, quantidade, cor, categorias_id)
VALUES ("Milho", 5.00, 9, "amarelo", 3); 
INSERT INTO tb_produtos(nome, preco, quantidade, cor, categorias_id)
VALUES ("Banana", 6.00, 12, "amarelo", 1); 

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categorias_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id WHERE categorias_id = 3;

