-- Exercicio 8 --

use dbescola;

create table tbest(
IdUf tinyint primary key,
NomeUfs varchar(2) not null,
NomeEstado varchar(40) not null
);

alter table tbendereco add constraint Fk_IdUf_Idendereco foreign key (IdUF) references tbest (IdUF);
alter table tbest drop column NomeEstado;
rename table tbest TO tbEstado;
alter table tbEstado RENAME column NomeUfs TO NomeUf;

Alter table tbendereco add IdCid int;

use dbescola;
create table tbcidade(
IdCid int primary key,
NomeCidade varchar(50) not null
);

alter table tbcidade modify NomeCidade varchar (250);

-- Adicionando a Fk com referencia na pk de outra tabela -- 
alter table tbendereco add constraint Fk_IdCid_tbendereco foreign key (IdCid) references tbcidade (IdCid);
