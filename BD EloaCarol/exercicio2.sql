-- Exercício 2-- 
CREATE DATABASE dbAnezio;
use dbAnezio;

create table tbproduto(
IdProp int not null primary key,
NomeProd varchar(50) not null,
Qtd  int,
DataValidade date not null,
Preco decimal (13,4) not null
);

create table tbcliente(
Cod int primary key,
Nomecli varchar(50) not null,
DataNascimento date
);

describe tbproduto;
describe tbcliente;
show tables;