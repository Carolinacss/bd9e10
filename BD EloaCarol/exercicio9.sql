-- Exercício 9, até a parte 2 --
create database dbBANCO;
use dbBanco;

create table tbcliente(
Cpf bigint primary key,
Nome varchar (50) not null,
Sexo char(1) not null,
Endereco varchar (50) not null
);

create table tbbanco(
Codigo int primary key,
Nome varchar (50) not null
);

create table tbagencia(
CodBanco int,
foreign key (CodBanco) references tbbanco (Codigo),
NumeroAgencia int primary key,
Endereco varchar (50) not null 
);

create table tbconta(
NumeroConta int primary key,
Saldo decimal(7,2),
TipoConta smallint ,
NumAgencia int not null,
foreign key (NumAgencia) references tbagencia (NumeroAgencia)
);

create table tbhistorico(
Cpf bigint,
NumeroConta int,
primary key (Cpf,NumeroConta),
DataInicio date 
);

create table tbtelefone_cliente (
Cpf bigint,
foreign key (cpf) references tbcliente (cpf),
Telefone int primary key
);

alter table tbhistorico add foreign key (cpf) references tbcliente (cpf); 
alter table tbhistorico add foreign key (NumeroConta) references tbconta (NumeroConta); 

describe tbtelefone_cliente;

-- EXE.3 –
-- Tabela Banco --
INSERT INTO tbbanco (Codigo, Nome)
	VALUES (1, "Banco do Brasil");
INSERT INTO tbbanco (Codigo, Nome)
	VALUES (104, "Caixa Economica Federal");
INSERT INTO tbbanco (Codigo, Nome)
VALUES (801, "Banco Escola");

select * from tbbanco;

-- Tabela Agencia --
INSERT INTO tbagencia (CodBanco,NumeroAgencia,Endereco)
	VALUES (1,123,"Av Paulista,78");
INSERT INTO tbagencia (CodBanco,NumeroAgencia,Endereco)
	VALUES (104,159,"Rua Liberdade,124");
INSERT INTO tbagencia (CodBanco,NumeroAgencia,Endereco)
	VALUES (801,401,"Rua vinte três,23");
INSERT INTO tbagencia (CodBanco,NumeroAgencia,Endereco)
	VALUES (801,485,"Av Marechal,68");

select * from tbagencia;

-- Tabela Cliente --
INSERT INTO tbcliente (Cpf,Nome,Sexo,Endereco)
	VALUES (12345678910,"Enildo","M","Rua Grande,75");
INSERT INTO tbcliente (Cpf,Nome,Sexo,Endereco)
	VALUES (12345678911,"Astrogildo","M","Rua Pequena, 789");
INSERT INTO tbcliente (Cpf,Nome,Sexo,Endereco)
	VALUES (12345678912,"Monica","F","Av Larga,148");
INSERT INTO tbcliente (Cpf,Nome,Sexo,Endereco)
	VALUES (12345678913,"Cascão","M","Av Principal,369");
	
select * from tbcliente;

-- Tabela Conta --
INSERT INTO tbconta (NumeroConta,Saldo,TipoConta,NumAgencia)
	VALUES(9876,456.05,1,123);
INSERT INTO tbconta (NumeroConta,Saldo,TipoConta,NumAgencia)
	VALUES(9877,321.00,1,123);
INSERT INTO tbconta (NumeroConta,Saldo,TipoConta,NumAgencia)
	VALUES(9878,100.00,2,485);
INSERT INTO tbconta (NumeroConta,Saldo,TipoConta,NumAgencia)
	VALUES(9879,5589.48,1,401);
    
select * from tbconta;

-- Tabela Histórico --
INSERT INTO tbhistorico(Cpf,NumeroConta,DataInicio)
	VALUE (12345678910,9876,"2001-04-15");
INSERT INTO tbhistorico(Cpf,NumeroConta,DataInicio)
	VALUE (12345678911,9877,"2011-03-10");
INSERT INTO tbhistorico(Cpf,NumeroConta,DataInicio)
	VALUE (12345678912,9878,"2021-03-11");
INSERT INTO tbhistorico(Cpf,NumeroConta,DataInicio)
	VALUE (12345678913,9879,"2000-07-05");

select * from tbhistorico;

-- Tabela Telefone_Cliente --
INSERT INTO tbtelefone_cliente(Cpf,Telefone)
	VALUE(12345678910,912345678);
INSERT INTO tbtelefone_cliente(Cpf,Telefone)
	VALUE(12345678911,912345679);
INSERT INTO tbtelefone_cliente(Cpf,Telefone)
	VALUE(12345678912,912345680);
INSERT INTO tbtelefone_cliente(Cpf,Telefone)
	VALUE(12345678913,912345681);

select * from tbtelefone_cliente;

-- EXE.4 --
Alter table tbcliente add column Email varchar(100);

-- Exe.5 --
select Cpf,Endereco from tbcliente where Nome = "Monica";

-- Exe.6 --
select NumeroAgencia,Endereco from tbagencia where CodBanco = 801;

-- Exe.7 --
select * from tbcliente where Sexo = "M";



