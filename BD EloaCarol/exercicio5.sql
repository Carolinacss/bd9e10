-- Exercicio 5--
CREATE DATABASE dbHilda;
use dbHilda;

create table tbVenda(
NF int primary key auto_increment,
DataValidade date not null
);
-- EXE.3 --
Alter table tbVenda add Preco decimal (13,4) not null;
Alter table tbVenda add Qtd tinyint;

-- EXE.4 –
Alter table tbVenda drop DataValidade;

-- EXE.5 –
Alter table tbVenda add column Datavenda DATE DEFAULT (CURRENT_DATE);

describe tbvenda;

-- EXE.6 –
Create table tbproduto(
CodigoB decimal (13,0) primary key,
NomeProd varchar (50) not null
);

-- EXE.7 –
Alter table tbvenda add CodigoB decimal (13,0);
Alter table tbVenda add constraint  foreign key (CodigoB) references tbproduto (CodigoB);

describe tbvenda;
