CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao_categoria VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
("Salgada", "Pizzas tradicionais feitas com ingredientes salgados"),
("Light", "Pizzas com baixa caloria e ingredientes leves"),
("Doce", "Pizzas de sobremesa com ingredientes doces"),
("Vegana", "Pizzas sem ingredientes de origem animal"),
("Sem Glúten", "Pizzas preparadas com massa e ingredientes livres de glúten");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    categoria_id BIGINT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, preco, tamanho, ingredientes, categoria_id) VALUES
("Calabresa", 45.00, "Grande", "calabresa, queijo, cebola", 1),
("Margherita", 42.00, "Média", "tomate, queijo, manjericão", 1),
("Quatro Queijos", 55.00, "Grande", "muçarela, parmesão, gorgonzola, provolone", 1),
("Pepperoni Especial", 72.90, "Grande", "pepperoni, queijo, orégano", 1),
("Fit Frango Light", 48.90, "Média", "frango desfiado, queijo light, tomate", 2),
("Integral Light", 51.00, "Grande", "massa integral, queijo light, rúcula", 2),
("Chocolate com Morango", 39.90, "Média", "chocolate, morango", 3),
("Brigadeiro", 36.50, "Pequena", "chocolate, granulado", 3),
("Vegana Green", 52.90, "Grande", "queijo vegano, tomate, manjericão", 4),
("Veggie Supreme", 58.50, "Grande", "pimentão, cebola, tomate, azeitona", 4),
("Vegana Premium", 84.50, "Grande", "queijo vegano, tomate seco, manjericão, azeitona", 4),
("Sem Glúten Supreme", 49.90, "Média", "massa sem glúten, queijo, tomate, orégano", 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas WHERE nome LIKE "v%";

SELECT * FROM tb_pizzas WHERE nome LIKE "%light";

SELECT nome, preco, tamanho, ingredientes, tb_categorias.nome_categoria, tb_categorias.descricao_categoria FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT nome, preco, tamanho, ingredientes, tb_categorias.nome_categoria, tb_categorias.descricao_categoria FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = "Doce";

SELECT nome, preco, tamanho, ingredientes, tb_categorias.nome_categoria, tb_categorias.descricao_categoria FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.id = 1;





