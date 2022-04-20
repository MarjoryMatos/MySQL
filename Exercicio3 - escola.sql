CREATE DATABASE db_escola;
USE db_escola;

CREATE DATABASE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    turma VARCHAR(25),
    nota DOUBLE,
    matricula VARCHAR(10),
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, turma, nota, matricula)VALUES("Yhuri Gross", "5C", 0.0, "123456");
INSERT INTO tb_estudantes(nome, turma, nota, matricula)VALUES("Marjory Matos", "9A", 10.0, "321654");
INSERT INTO tb_estudantes(nome, turma, nota, matricula)VALUES("Simone Bispo", "8B", 8.0, "159357");
INSERT INTO tb_estudantes(nome, turma, nota, matricula)VALUES("Aecio Augustineli", "7D", 7.5, "951753");
INSERT INTO tb_estudantes(nome, turma, nota, matricula)VALUES("Helen Sales", "6B", 7.0, "258369");
INSERT INTO tb_estudantes(nome, turma, nota, matricula)VALUES("Gabriele Souza", "7C", 4.0, "369147");
INSERT INTO tb_estudantes(nome, turma, nota, matricula)VALUES("Silvio Ricardo", "5A", 6.0, "147258");
INSERT INTO tb_estudantes(nome, turma, nota, matricula)VALUES("Priscila G", "8D", 8.5, "258147");

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 7.9 WHERE id = 1;	
