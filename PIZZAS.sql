-- Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal. 
-- O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_pizzas e 
-- tb_categorias, que deverão estar relacionadas.

Create database db_pizzaria_legal;

USE db_pizzaria_legal;

-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.

CREATE TABLE tb_categorias(
id_CATEGORIAS BIGINT AUTO_INCREMENT PRIMARY KEY,
CARACTERISTICAS varchar(255),
INGREDIENTES VARCHAR(255)
);

-- Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.

CREATE TABLE tb_pizzas(
id_PIZZAS BIGINT auto_increment primary KEY,
SABOR VARCHAR(250) NOT NULL,
BORDA VARCHAR(255)NOT NULL ,
PROMOCAO VARCHAR(255)NOT NULL ,
VALOR INT NOT NULL,
FK_PIZZAS BIGINT NOT NULL,
foreign key (FK_PIZZAS) references tb_categorias (id_CATEGORIAS)
);

-- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.



-- Insira 5 registros na tabela tb_categorias.

INSERT INTO tb_categorias (CARACTERISTICAS,INGREDIENTES) VALUES ("PIZZA_DOCE", "CHOCOLATE E MORANGO");
INSERT INTO tb_categorias (CARACTERISTICAS,INGREDIENTES) VALUES ("PIZZA_DOCE", "BANANA");
INSERT INTO tb_categorias (CARACTERISTICAS,INGREDIENTES) VALUES ("SALGADA", "CALABREZA E QUEIJO");
INSERT INTO tb_categorias (CARACTERISTICAS,INGREDIENTES) VALUES ("PIZZA_SALGADA", "MUSSARELA E MOLHO DE TOMATE");
INSERT INTO tb_categorias (CARACTERISTICAS,INGREDIENTES) VALUES ("PIZZA_SALGADA", "ATUM");



-- Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.

INSERT INTO tb_pizzas (SABOR,BORDA,PROMOCAO,VALOR, FK_PIZZAS) VALUES ("ROMEU E JULIETA", "SIM","SIM",34.00, 1);
INSERT INTO tb_pizzas (SABOR,BORDA,PROMOCAO,VALOR, FK_PIZZAS) VALUES ("CALABREZA COM QUEIJO", "SIM","SIM",38.00, 2);
INSERT INTO tb_pizzas (SABOR,BORDA,PROMOCAO,VALOR, FK_PIZZAS) VALUES ("CALABREZA COM BACON","SIM","SIM", 50.00, 3);
INSERT INTO tb_pizzas (SABOR,BORDA,PROMOCAO,VALOR, FK_PIZZAS ) VALUES ("MUSSARELA", "SIM", "SIM",80.00, 4);
INSERT INTO tb_pizzas (SABOR,BORDA,PROMOCAO,VALOR, FK_PIZZAS ) VALUES ("CALABREZA COM QUEIJO", "SIM","SIM",70.00 ,5);
INSERT INTO tb_pizzas (SABOR,BORDA,PROMOCAO,VALOR, FK_PIZZAS) VALUES ("CALABREZA COM MORANGO", "SIM","SIM",90.00, 4);
INSERT INTO tb_pizzas (SABOR,BORDA,PROMOCAO,VALOR, FK_PIZZAS ) VALUES ("CALABREZA COM ABACAXI", "SIM","SIM",95.00, 1 );
INSERT INTO tb_pizzas (SABOR,BORDA,PROMOCAO,VALOR, FK_PIZZAS) VALUES ("CALABREZA COM UVAS", "SIM","SIM",95.00, 1);

SELECT * FROM tb_pizzas;

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.

SELECT * FROM  tb_pizzas where valor > 45.00;


-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.

SELECT * FROM  tb_pizzas where valor > 50.00 and  valor < 100;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.

SELECT * FROM tb_pizzas WHERE SABOR LIKE '%c%';


-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.

SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_categorias.id_CATEGORIAS = tb_pizzas.FK_pizzas;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).

SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_categorias.id_CATEGORIAS = tb_pizzas.FK_pizzas and FK_pizzas = 1;

-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

