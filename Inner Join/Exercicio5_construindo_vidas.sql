CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id bigint auto_increment,
categoria varchar(255),
departamento varchar(255),
tipo varchar(255), 

primary key(id)
);

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255),
preco double,
quantidade int,
material varchar(255),
categorias_id bigint,

primary key(id),
foreign key (categorias_id) references tb_categorias(id)
);

INSERT INTO tb_categorias(categoria, departamento, tipo) VALUES ("Construção", "geral", "Rígido" );
INSERT INTO tb_categorias(categoria, departamento, tipo) VALUES ("Esgoto", "tubulações", "Plástico" );
INSERT INTO tb_categorias(categoria, departamento, tipo) VALUES ("Alvenaria", "pintura", "Líquida" );
INSERT INTO tb_categorias(categoria, departamento, tipo) VALUES ("Marcenaria", "piso", "Rígido" );
INSERT INTO tb_categorias(categoria, departamento, tipo) VALUES ("Reboco", "geral", "Rígido" );

INSERT INTO tb_produtos(nome, preco, quantidade, material, categorias_id) 
VALUES ("Cimento", 89.00, 2, "cimento", 1); 
INSERT INTO tb_produtos(nome, preco, quantidade, material, categorias_id) 
VALUES ("Cano", 199.00, 2, "pvc", 2);
INSERT INTO tb_produtos(nome, preco, quantidade, material, categorias_id) 
VALUES ("Tinta", 299.00, 1, "tinta", 3);
INSERT INTO tb_produtos(nome, preco, quantidade, material, categorias_id) 
VALUES ("Piso", 300.00, 2, "madeira", 4);
INSERT INTO tb_produtos(nome, preco, quantidade, material, categorias_id) 
VALUES ("Argamassa", 32.00, 2, "argamassa", 5);
INSERT INTO tb_produtos(nome, preco, quantidade, material, categorias_id) 
VALUES ("Rodapé", 29.00, 5, "madeira", 4);
INSERT INTO tb_produtos(nome, preco, quantidade, material, categorias_id) 
VALUES ("Areia", 89.00, 4, "areia", 1);

SELECT * FROM tb_produtos WHERE preco > 100;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id WHERE categorias_id = 3;
