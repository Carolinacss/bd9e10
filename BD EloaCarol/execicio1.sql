create database dbCarolEloaa;
use dbCarolEloaa;

create table tbUsuario(
IdUsuario int primary key,
Nome varchar (45),
Datanascimento date
);

create table tbCliente(
CodCli int primary key,
Nome varchar (50),
Endereco varchar (60)
);

create table tbEstado(
Id int primary key,
Uf char (2)
);

create table tbProduto(
Barras decimal (13,0) primary key,
Valor decimal (10,4),
Descricao varchar (60)
); 

describe tbproduto;
show tables;
show databases;

Alter table tbCliente modify nome varchar (58);
describe tbCliente;

alter table tbProduto add column Qtd int;
describe tbProduto;
Drop table tbEstado;

alter table tbUsuario Drop column Datanascimento; 
describe tbUsuario;


