CREATE DATABASE db_loja;
USE db_loja;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    preco DOUBLE,
    quantidade INT,
    diponivel BOOLEAN,
    PRIMARY KEY(id)
);

ALTER TABLE tb_produtos RENAME COLUMN diponivel TO disponivel;

INSERT INTO tb_produtos(nome, preco, quantidade, disponivel)VALUES("camisa", 150.00, 5, true);
INSERT INTO tb_produtos(nome, preco, quantidade, disponivel)VALUES("bermuda", 60.00, 3, true);
INSERT INTO tb_produtos(nome, preco, quantidade, disponivel)VALUES("gorro", 20.00, 1, true);
INSERT INTO tb_produtos(nome, preco, quantidade, disponivel)VALUES("jaqueta", 170.00, 0, false);
INSERT INTO tb_produtos(nome, preco, quantidade, disponivel)VALUES("meia soquete", 10.00, 10, true);
INSERT INTO tb_produtos(nome, preco, quantidade, disponivel)VALUES("sutian", 25.00, 6, true);
INSERT INTO tb_produtos(nome, preco, quantidade, disponivel)VALUES("cachecol", 10.00, 7, true);
INSERT INTO tb_produtos(nome, preco, quantidade, disponivel)VALUES("sapato super caro", 3600, 1, true);

SELECT * FROM tb_produtos;

SELECT * FROM 	tb_produtos WHERE preco > 3500;
SELECT * FROM tb_produtos WHERE preco < 3500;

UPDATE tb_produtos SET nome = "toca" WHERE id = 2;  