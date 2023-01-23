CREATE TABLE tb_funcionarios(
 id BIGINT AUTO_INCREMENT, 
 nome VARCHAR(255) NOT NULL,
 salario DECIMAL NOT NULL,
 idade INT NOT NULL,
 cargo varchar(255),
 PRIMARY KEY (id)
);

insert into  tb_funcionarios(nome, salario,idade,cargo)
values ("wellington", 5000 ,24, "diretor");

insert into  tb_funcionarios(nome, salario,idade,cargo)
values ("Geandro", 2000 ,60, "professor"); 

insert into  tb_funcionarios(nome, salario,idade,cargo)
values ("jacque", 2000 ,18, "professor"); 

insert into  tb_funcionarios(nome, salario,idade,cargo)
values ("Pasquale", 2000 ,30, "professor"); 

insert into  tb_funcionarios(nome, salario,idade,cargo)
values ("Marcos", 2000 ,36, "programador"); 

insert into  tb_funcionarios(nome, salario,idade,cargo)
values ("jose", 1000 ,36, "programador"); 



SELECT * FROM tb_funcionarios;

SELECT nome FROM tb_produtos;

SELECT nome,preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1;

-- WHERE com Operados Relacionais

SELECT * FROM tb_produtos WHERE preco < 8;

-- Selecionando dados com os Operadores Lógicos

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET salario = 10000 WHERE id = 1;

DELETE FROM tb_funcionarios WHERE id = 2;

DELETE FROM tb_;




 


