-- Exercício6--

create database dbdesenvolvimento;
use dbdesenvolvimento;

create table tbproduto(
IdProp int primary key,
NomeProd varchar(50) not null,
Qtd int,
DataValidade date not null,
Preco decimal(13,4) not null
); 

alter table tbproduto add Peso decimal (5,2);
alter table tbproduto add Cor varchar (50);
alter table tbproduto add Marca varchar (50) not null;

alter table tbproduto drop Cor;
alter table tbproduto modify Peso decimal (5,2) not null; 

/*Não é possível apagar o tabela cor,
 pois ela já foi apagada, 
 recebendo o comando (Drop)
 */

Create database dbLojaGrande; 
use dbLojaGrande;

alter table tbproduto add Cor varchar(50);   -- Esse é da database dbdesenvolvimento--

create database dblojica;
use dblojica;

create table tbcliente(
NomeCli varchar (50) not null,
CodigoCli int primary key,
DataCadastro date not null
);

use dbLojaGrande;

create table tbfuncionario(
NomeFunc varchar(50) not null,
CodigoFunc int primary key,
DataCadastro datetime not null
); 

Drop database dbLojaGrande;

use dblojica;
alter table tbcliente add cpf decimal(11,0) not null unique; 
