CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
HABILIDADE varchar(255) NOT NULL,
Fase INT NOT NULL
);


create table tb_personagens(
id_personagem BIGINT AUTO_INCREMENT PRIMARY KEY,
NOME varchar(255) NOT NULL,
IDADE INT NOT NULL,
ATUACAO VARCHAR(255) NOT NULL,
PESO VARCHAR(255) NOT NULL,
PODER INT NOT NULL,
FK_Classe BIGINT NOT NULL,
foreign key (FK_Classe) references tb_classe (id)
);

-- Insira 5 registros na tabela tb_classes.


INSERT INTO tb_classe (Habilidade, Fase) values ("Correr", 1);
INSERT INTO tb_classe (Habilidade, Fase) values ("forca", 2);
INSERT INTO tb_classe (Habilidade, Fase) values ("Tecnologia", 3);
INSERT INTO tb_classe (Habilidade, Fase) values ("Pensamento", 4);
insert INTO tb_classe (Habilidade, Fase) values ("inteligencia", 5);


-- Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.

INSERT INTO tb_personagens(NOME,IDADE,ATUACAO,PESO,PODER,FK_CLASSE) values ("Capitao America", 30, "Heroi", "45KG", 1500, 2);
INSERT INTO tb_personagens(NOME,IDADE,ATUACAO,PESO,PODER,FK_CLASSE) values ("Homem de ferro", 35, "Heroi", "55KG", 2100, 3);
INSERT INTO tb_personagens(NOME,IDADE,ATUACAO,PESO,PODER,FK_CLASSE) values ("aquaman", 48, "Heroi", "45KG", 3000, 4);
INSERT INTO tb_personagens(NOME,IDADE,ATUACAO,PESO,PODER,FK_CLASSE) values ("Hulk", 39, "Heroi", "60KG", 45000, 2);
INSERT INTO tb_personagens(NOME,IDADE,ATUACAO,PESO,PODER,FK_CLASSE) values ("batman", 48, "Heroi", "60KG", 7000, 3);
INSERT INTO tb_personagens(NOME,IDADE,ATUACAO,PESO,PODER,FK_CLASSE) values ("homem areia", 48, "vilao", "60KG", 8000, 4);
INSERT INTO tb_personagens(NOME,IDADE,ATUACAO,PESO,PODER,FK_CLASSE) values ("Homem aranha", 48, "Heroi", "45KG",9000, 4);
INSERT INTO tb_personagens(NOME,IDADE,ATUACAO,PESO,PODER,FK_CLASSE) values ("coringa", 48, "vilao", "45KG", 4800, 5);

SELECT * FROM  tb_personagens;

-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.

SELECT * FROM tb_personagens where poder > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.

SELECT * FROM tb_personagens where poder >1000 and poder < 2000;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.

SELECT * FROM tb_personagens WHERE NOME LIKE '%c%';


-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.

SELECT * FROM tb_personagens 
INNER JOIN tb_classe ON tb_classe.id = tb_personagens.FK_classe;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).

SELECT * FROM tb_personagens 
INNER JOIN tb_classe ON tb_classe.id = tb_personagens.FK_classe and FK_Classe = 2;


-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.


-- Exercicio 2

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

 