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


