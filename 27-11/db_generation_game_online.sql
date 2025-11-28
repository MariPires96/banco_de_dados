CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_da_classe VARCHAR(255) NOT NULL,
    tipo_da_classe VARCHAR(255) NOT NULL
);

INSERT INTO tb_classes (nome_da_classe, tipo_da_classe) VALUES
("Guerreiro", "Corpo a Corpo"),
("Mago", "Magia"),
("Arqueiro", "À Distância"),
("Assassino", "Furtividade"),
("Clérigo", "Cura");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nivel INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES
("Garen", 12, 85, 110, 1),     
("Lux", 15, 120, 60, 2),     
("Ashe", 10, 95, 70, 3),      
("Zed", 18, 140, 50, 4),  
("Soraka", 14, 60, 100, 5),      
("Darius", 20, 130, 120, 1),     
("Evelynn", 16, 150, 55, 4),    
("Braum", 11, 75, 95, 5);  

SELECT * FROM tb_personagens;

UPDATE tb_personagens
SET poder_ataque = 2500
WHERE classe_id = 1;


UPDATE tb_personagens
SET poder_defesa = 2000
WHERE id = 8;

UPDATE tb_personagens
SET poder_defesa = 1000
WHERE id = 5;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens 
WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens ORDER BY nome ASC;

SELECT * FROM tb_personagens ORDER BY poder_ataque DESC;

SELECT * FROM tb_personagens ORDER BY poder_defesa DESC;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens WHERE nome LIKE "%ar%";

SELECT * FROM tb_personagens WHERE nome LIKE "%n";

SELECT nome, nivel, poder_ataque, poder_defesa, tb_classes.nome_da_classe, tb_classes.tipo_da_classe FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT nome, nivel, poder_ataque, poder_defesa, tb_classes.nome_da_classe, tb_classes.tipo_da_classe FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE tb_personagens.classe_id = 3;

SELECT nome, nivel, poder_ataque, poder_defesa, tb_classes.nome_da_classe, tb_classes.tipo_da_classe FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome_da_classe = 'Clérigo';

