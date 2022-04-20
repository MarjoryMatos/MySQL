CREATE DATABASE db_rh;
use db_rh;

create table td_funcionarios(
	id bigint auto_increment,
    nome varchar(255),
    salario float,
    cargo varchar(200),
    funcao varchar(255),
    primary key (id)
);

insert into td_funcionarios(nome, salario, cargo, funcao)values("Marisa Carmelita", 2000.00, "Secretaria", "Administracao");
insert into td_funcionarios(nome, salario, cargo, funcao)values("Fernando Bezerra", 1000.00, "Ajudante geral", "Estoquista");
insert into td_funcionarios(nome, salario, cargo, funcao)values("Gabriela Fernandes", 500.00, "Estagiária", "Administracao");
insert into td_funcionarios(nome, salario, cargo, funcao)values("Marcelo Dias", 5000.00, "Gestor de RH", "rh");

select * from td_funcionarios;

select * from td_funcionarios where salario > 2000; 

select * from td_funcionarios where salario < 2000;

select * from td_funcionarios;

update td_funcionarios set salario = 600.00 where id = 4;

select * from td_funcionarios;



