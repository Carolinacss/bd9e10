-- Exercício 4 --
create database dbCreusa;
use dbCreusa;

create table tbproduto(
IdProp int primary key,
NomeProd varchar(50) not null,
Qtd int,
DataValidade date not null,
Preco decimal(13,4) not null
);

alter table tbproduto add Peso decimal (5,2);

describe tbproduto;

alter table tbproduto add Cor varchar(50); 
alter table tbproduto add Marca varchar(50) not null;

alter table tbproduto drop Cor;

alter table tbproduto modify Peso decimal(5,2) not null; 

alter table tbproduto drop DataValidade;