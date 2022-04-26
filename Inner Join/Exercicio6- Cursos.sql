CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id bigint auto_increment,
categoria varchar(255),
tipo varchar(255),
estado boolean,

primary key(id)
);

CREATE TABLE tb_cursos (
id bigint auto_increment,
nome varchar(255),
preco double,
carga int,
professor varchar(255),
categorias_id bigint,

primary key(id),
foreign key (categorias_id) references tb_categorias (id)
);

INSERT INTO tb_categorias(categoria, tipo, estado) VALUES ("Tecnologia", "online", true);
INSERT INTO tb_categorias(categoria, tipo, estado) VALUES ("Culinária", "presencial", false);
INSERT INTO tb_categorias(categoria, tipo, estado) VALUES ("Tecnologia", "presencial", false);
INSERT INTO tb_categorias(categoria, tipo, estado) VALUES ("Culinária", "online", true);
INSERT INTO tb_categorias(categoria, tipo, estado) VALUES ("Enfermagem", "online", true);
INSERT INTO tb_categorias(categoria, tipo, estado) VALUES ("Enfermagem", "presencial", false);

INSERT INTO tb_cursos(nome, preco, carga, professor, categorias_id)
VALUES ("JavaScript", 750.00, 500, "Gustavo Guanabara", 1);
INSERT INTO tb_cursos(nome, preco, carga, professor, categorias_id)
VALUES ("Domine a cozinha", 150.00, 200, "Jakan", 2);
INSERT INTO tb_cursos(nome, preco, carga, professor, categorias_id)
VALUES ("C#", 150.00, 100, "Bruno CBF", 3);
INSERT INTO tb_cursos(nome, preco, carga, professor, categorias_id)
VALUES ("Escola de Culinária", 1000.00, 800, "Masterchef", 4);
INSERT INTO tb_cursos(nome, preco, carga, professor, categorias_id)
VALUES ("Primeiros Socorros", 150.00, 300, "Dr. Patricia", 5);
INSERT INTO tb_cursos(nome, preco, carga, professor, categorias_id)
VALUES ("Vacinação", 750.00, 500, "Dr. Roberta", 6);
INSERT INTO tb_cursos(nome, preco, carga, professor, categorias_id)
VALUES ("Java", 2000.00, 1000, "Gustavo Guanabara", 1);
INSERT INTO tb_cursos(nome, preco, carga, professor, categorias_id)
VALUES ("Git e Github", 350.00, 200, "Alura", 1);

SELECT * FROM tb_cursos WHERE preco > 500;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.categorias_id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categorias_id = tb_categorias.id WHERE categorias_id = 3;
