CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint auto_increment,
    tipo varchar(255),
    nivel int,
    habilidade varchar(255),
    
    primary key (id)   
);

CREATE TABLE tb_personagens(
	id bigint auto_increment,
    nome varchar(255),
    raca varchar(255),
    vida int,
    ataque int,
    defesa int,
    destreza int, 
    carisma int,
	classes_id bigint,
    
    primary key (id),
    foreign key (classes_id) references tb_classes(id)
);

INSERT INTO tb_classes (tipo, nivel, habilidade) VALUES ("Mago", 5, "Magia");
INSERT INTO tb_classes (tipo, nivel, habilidade) VALUES ("Guerreiro", 3, "Força");
INSERT INTO tb_classes (tipo, nivel, habilidade) VALUES ("Feiticeiro", 4, "Feitiçaria");
INSERT INTO tb_classes (tipo, nivel, habilidade) VALUES ("Druida", 2, "Chamas");
INSERT INTO tb_classes (tipo, nivel, habilidade) VALUES ("Bruxo", 5, "Ilusão");

INSERT INTO tb_personagens (nome, raca, vida, ataque, defesa, destreza, carisma, classes_id)
VALUES("Morgana", "Samurai", 500, 460, 350, 480, 200, 3);
INSERT INTO tb_personagens (nome, raca, vida, ataque, defesa, destreza, carisma, classes_id)
VALUES("Diana", "Fada", 600, 350, 580, 480, 500, 3);
INSERT INTO tb_personagens (nome, raca, vida, ataque, defesa, destreza, carisma, classes_id)
VALUES("Leona", "Elfo", 3000, 2000, 4000, 1500, 650, 4);
INSERT INTO tb_personagens (nome, raca, vida, ataque, defesa, destreza, carisma, classes_id)
VALUES("Leblanc", "Tanque", 5000, 3500, 6500, 4500, 2500, 5);
INSERT INTO tb_personagens (nome, raca, vida, ataque, defesa, destreza, carisma, classes_id)
VALUES("Miss Fortune", "Orc", 3500, 2500, 1500, 1000, 1000, 4);
INSERT INTO tb_personagens (nome, raca, vida, ataque, defesa, destreza, carisma, classes_id)
VALUES("Syndra", "Tiefling", 5600, 4600, 1500, 3500, 2500, 1);
INSERT INTO tb_personagens (nome, raca, vida, ataque, defesa, destreza, carisma, classes_id)
VALUES("Lux", "Fada", 3500, 1500, 2500, 4500, 5000, 1);
INSERT INTO tb_personagens (nome, raca, vida, ataque, defesa, destreza, carisma, classes_id)
VALUES("Annie", "Tanque", 5000, 4500, 5000, 1500, 2500, 2);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id = tb_classes.id WHERE classes_id = 3;