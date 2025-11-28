CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (categoria) VALUES
("Roupa"),
("Calçado");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos( 
	id BIGINT AUTO_INCREMENT PRIMARY KEY, 
	nome_produto VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2),
    quantidade INT,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
); 

INSERT INTO tb_produtos (nome_produto, preco, quantidade, categoria_id) VALUES
("Blusa", 45.99, 10, 1),
("Camiseta", 59.99, 19, 1),
("Camisa Social", 159.99, 30, 1),
("Trench Coat", 599.99, 5, 1),
("Sobretudo de Lã", 799.99, 10, 1),
("Calça Jeans", 299.99, 15, 1),
("Calça Social", 199.99, 25, 1),
("Scarpin", 299.99, 18, 2),
("Coturno Couro", 699.99, 11, 2),
("Sapato Social", 549.99, 10, 2),
("Bota Couro", 499.99, 10, 2);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

