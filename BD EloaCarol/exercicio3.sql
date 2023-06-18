-- Exercício 3--
CREATE DATABASE dbcomercio;
use dbcomercio;

create table tbCliente(
Id int primary key,
NomeCli varchar (200) not null,
NomeEnd decimal (6,0) not null,
CompEnd varchar(50)
);

create table tbClientePF(
CPF int primary key,
RG  int ,
Rgdig char(1),
Nascimento date not null
); 

Alter table tbClientePF MODIFY CPF decimal (11,0);
Alter table tbClientePF MODIFY RG decimal (9,0);

show tables;
describe tbClientePF;
