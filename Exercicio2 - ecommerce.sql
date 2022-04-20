CREATE DATABASE db_loja;
use db_loja;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255),
    preco double,
    quantidade int,
    diponivel boolean,
    primary key(id)
);

alter table tb_produtos rename column diponivel to disponivel;

insert into tb_produtos(nome, preco, quantidade, disponivel)values("camisa", 150.00, 5, true);
insert into tb_produtos(nome, preco, quantidade, disponivel)values("bermuda", 60.00, 3, true);
insert into tb_produtos(nome, preco, quantidade, disponivel)values("gorro", 20.00, 1, true);
insert into tb_produtos(nome, preco, quantidade, disponivel)values("jaqueta", 170.00, 0, false);
insert into tb_produtos(nome, preco, quantidade, disponivel)values("meia soquete", 10.00, 10, true);
insert into tb_produtos(nome, preco, quantidade, disponivel)values("sutian", 25.00, 6, true);
insert into tb_produtos(nome, preco, quantidade, disponivel)values("cachecol", 10.00, 7, true);
insert into tb_produtos(nome, preco, quantidade, disponivel)values("sapato super caro", 3600, 1, true);

select * from tb_produtos;

select * from 	tb_produtos where preco > 3500;
select * from tb_produtos where preco < 3500;

update tb_produtos set nome = "toca" where id = 2;  