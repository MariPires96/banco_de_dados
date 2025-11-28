CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao_categoria VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
("Medicamentos", "Produtos utilizados para tratamento e prevenção de doenças"),
("Higiene", "Produtos voltados para cuidados pessoais e limpeza"),
("Vitaminas", "Suplementos vitamínicos e minerais"),
("Beleza", "Produtos cosméticos e cuidados estéticos"),
("Infantil", "Produtos destinados ao cuidado de bebês e crianças");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    validade DATE NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, preco, validade, estoque, categoria_id) VALUES
("Dipirona 500mg", 5.90, "2026-05-10", 50, 1),
("Amoxicilina 500mg", 24.50, "2025-11-30", 30, 1),
("Paracetamol 750mg", 15.00, "2027-02-15", 40, 1),
("Shampoo Anticaspa", 22.90, "2026-08-01", 25, 2),
("Sabonete Líquido Neutro", 9.90, "2026-03-18", 60, 2),
("Vitamina C 500mg", 35.00, "2027-06-10", 45, 3),
("Ômega 3 1000mg", 58.90, "2027-09-12", 20, 3),
("Creme Facial Hidratante", 32.90, "2026-07-22", 25, 4),
("Hidratante Corporal", 29.90, "2026-12-30", 35, 4),
("Fralda Infantil M", 49.90, "2026-04-25", 80, 5),
("Pomada para Assaduras", 18.50, "2026-09-10", 40, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos WHERE nome LIKE "C%";

SELECT * FROM tb_produtos WHERE nome LIKE "%mg";

SELECT * FROM tb_produtos WHERE validade LIKE "%2025%";

SELECT nome, preco, validade, estoque, tb_categorias.nome_categoria, tb_categorias.descricao_categoria FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT nome, preco, validade, estoque, tb_categorias.nome_categoria, tb_categorias.descricao_categoria FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = "Medicamentos";

SELECT nome, preco, validade, estoque, tb_categorias.nome_categoria, tb_categorias.descricao_categoria FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.id = 5;
