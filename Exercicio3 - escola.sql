CREATE DATABASE db_escola;
use db_escola;

create table tb_estudantes(
	id bigint auto_increment,
    nome varchar(255),
    turma varchar(25),
    nota double,
    matricula varchar(10),
    primary key (id)
);

insert into tb_estudantes(nome, turma, nota, matricula) values("Yhuri Gross", "5C", 0.0, "123456");
insert into tb_estudantes(nome, turma, nota, matricula) values("Marjory Matos", "9A", 10.0, "321654");
insert into tb_estudantes(nome, turma, nota, matricula) values("Simone Bispo", "8B", 8.0, "159357");
insert into tb_estudantes(nome, turma, nota, matricula) values("Aecio Augustineli", "7D", 7.5, "951753");
insert into tb_estudantes(nome, turma, nota, matricula) values("Helen Sales", "6B", 7.0, "258369");
insert into tb_estudantes(nome, turma, nota, matricula) values("Gabriele Souza", "7C", 4.0, "369147");
insert into tb_estudantes(nome, turma, nota, matricula) values("Silvio Ricardo", "5A", 6.0, "147258");
insert into tb_estudantes(nome, turma, nota, matricula) values("Priscila G", "8D", 8.5, "258147");

select * from tb_estudantes;

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 7.9 where id = 1;	
