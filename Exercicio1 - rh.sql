CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE td_funcionarios(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    salario FLOAT,
    cargo VARCHAR(200),
    funcao VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO td_funcionarios(nome, salario, cargo, funcao)VALUES("Marisa Carmelita", 2000.00, "Secretaria", "Administracao");
INSERT INTO td_funcionarios(nome, salario, cargo, funcao)VALUES("Fernando Bezerra", 1000.00, "Ajudante geral", "Estoquista");
INSERT INTO td_funcionarios(nome, salario, cargo, funcao)VALUES("Gabriela Fernandes", 500.00, "Estagiária", "Administracao");
INSERT INTO td_funcionarios(nome, salario, cargo, funcao)VALUES("Marcelo Dias", 5000.00, "Gestor de RH", "rh");

SELECT * FROM td_funcionarios;

SELECT * FROM td_funcionarios WHERE salario > 2000; 

SELECT * FROM td_funcionarios WHERE salario < 2000;

SELECT * FROM td_funcionarios;

UPDATE td_funcionarios SET salario = 600.00 WHERE id = 4;

SELECT * FROM td_funcionarios;



