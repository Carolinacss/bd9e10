-- Exercíco 7 -- 

-- Eloá e Carol -- 
create database dbescola;
use dbescola;

create table tbcliente1(
IdCli int primary key,
NomeCli varchar(50) not null,
NumEnd  smallint,
DataCadastro datetime DEFAULT CURRENT_TIMESTAMP 
);
-- EXE.4--
ALTER TABLE tbcliente1 add CPF DECIMAL (11,0) unique not null;

-- EXE.5 --

Alter TABLE tbcliente1 add Cep DECIMAL (5,0);

-- EXE.6 -—
CREATE DATABASE dbempresa;
use dbempresa; 

-- EXE.7 -–
Create table tbendereco(
Cep decimal (5,0) primary key,
Logradouro varchar (250) not null,
IdUf tinyint
);
 
-- corrigindo o erro-
-- O tbendereco vai dentro de dbescola--  


-- EXE.8 -—
Alter table tbcliente1 add constraint Fk_Cep_tbcliente1 foreign key (Cep) references tbendereco (Cep);


-- EXE.9 —-
Describe tbcliente1;

-- EXE.10 —-
/* 
Obtivemos dificuldades em escrever e executar a sintax do Foreign key,
Sintax de data e horas exatas do momento cadastrado, 
e um pouco de interpretação dos textos.
*/

-- EXE.11—
Show databases;
Drop Database dbempresa;
