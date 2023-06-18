-- Exercício 10 --
-- 1 --
DELETE FROM tbtelefone_cliente
WHERE Cpf = 12345678911;

-- 2 --
UPDATE tbconta
SET TipoConta= 2
WHERE NumeroConta= 9879;

-- 3 --
UPDATE tbcliente
SET Email = "Astro@Escola.com"
WHERE Cpf=12345678912;
select * from tbcliente;
-- 4 --
UPDATE tbconta
SET Saldo=Saldo+(Saldo*10/100)
WHERE NumeroConta = 9876;
/* Esse exercicio está dando um aviso de alerta("1 linha(s) afetada(s). 
1 Aviso(s): 1265 Dados truncados para a coluna Saldo na linha 1 
Linhas correspondidas: 1 Alterado:1 Avisos:1")*/

-- 5 --
SELECT Nome,Email,Endereco
FROM tbcliente
WHERE Nome = "Monica";
-- 6 --
UPDATE tbcliente
SET Nome = "Enildo Candido", Email= "enildo@escola.com"
WHERE Cpf= 12345678910;
-- 7 --
Update tbconta
SET Saldo = Saldo - 30.00;
SET sql_safe_updates = 0;
SET sql_safe_updates = 1;

-- 8 --
DELETE FROM tbhistorico WHERE NumeroConta=9878;
DELETE FROM tbconta WHERE NumeroConta = 9878;
select * from tbconta;