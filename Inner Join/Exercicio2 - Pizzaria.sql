CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
    categoria varchar(255),
    tamanho varchar(255),
    
    primary key (id)
);

CREATE TABLE tb_pizzas(
	id bigint auto_increment,
    nome varchar(255),
    ingredientes varchar(255), 
    preco double,
    borda varchar(255),
    categorias_id bigint,
    
    primary key (id),
    foreign key(categorias_id) references tb_categorias(id)
);

INSERT INTO tb_categorias(categoria, tamanho) VALUES("Salgada", "Grande");
INSERT INTO tb_categorias(categoria, tamanho) VALUES("Doce", "Pequena");
INSERT INTO tb_categorias(categoria, tamanho) VALUES("Salgada", "Media");
INSERT INTO tb_categorias(categoria, tamanho) VALUES("Salgada", "Pequena");
INSERT INTO tb_categorias(categoria, tamanho) VALUES("Doce", "Media");
INSERT INTO tb_categorias(categoria, tamanho) VALUES("Doce", "Grande");

INSERT INTO tb_pizzas(nome, ingredientes, preco, borda,categorias_id)
VALUES("Atum", "atum e mussarela", 45.00, "Recheada", 1);
INSERT INTO tb_pizzas(nome, ingredientes, preco, borda,categorias_id)
VALUES("Mussarela", "Mussarela e cebola", 35.00, "Sem recheio", 3);
INSERT INTO tb_pizzas(nome, ingredientes, preco, borda,categorias_id)
VALUES("Brigadeiro", "Brigadeiro com morango", 25.00, "Sem recheio", 2);
INSERT INTO tb_pizzas(nome, ingredientes, preco, borda,categorias_id)
VALUES("Beijinho", "Beijinho com uvas verdes", 50.00, "Recheada", 5);
INSERT INTO tb_pizzas(nome, ingredientes, preco, borda,categorias_id)
VALUES("Portuguesa", "Mussarela, Presunto e ovos", 48.00, "Sem recheio", 4);
INSERT INTO tb_pizzas(nome, ingredientes, preco, borda,categorias_id)
VALUES("Prestígio", "Chocolare com cocô", 65.00, "Sem Recheio", 6);

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id; 

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id WHERE categorias_id BETWEEN 1 AND 3;
