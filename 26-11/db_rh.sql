CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores( 
	id BIGINT AUTO_INCREMENT, 
	nome VARCHAR(255) NOT NULL, 
	data_nascimento DATE, 
	salario DECIMAL(10,2) NOT NULL,
	email VARCHAR(255), 
	PRIMARY KEY (id) 
); 

INSERT INTO tb_colaboradores(nome, data_nascimento, salario, email) VALUES
("Mariana Pires", '1996-07-12', 10000.00, "mariana@gmail.com"),
("Fernanda Alves", '1985-07-29', 10000.00, "fernanda@gmail.com"),
("Ana Nunes", '1991-09-19', 10000.00, "ana@gmail.com"),
("Marcelo Torres", '1996-08-13', 10000.00, "marcelo@gmail.com"),
("Marlon Fortunato", '1994-01-05', 10000.00, "marlon@gmail.com");

SELECT * FROM tb_colaboradores;

UPDATE tb_colaboradores SET salario = CASE id 
WHEN 2 THEN 5000.00 WHEN 4 THEN 1800.00 END
WHERE id in(2,4);

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

CREATE TABLE tb_cargos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    cargo VARCHAR(255) NOT NULL
);

INSERT INTO tb_cargos(cargo) VALUES
("Desenvolvedor Full Stack Sênior"),
("Desenvolvedor Full Stack Júnior"),
("Estagiário de Desenvolvimento Full Stack");

SELECT * FROM tb_cargos;

ALTER TABLE tb_colaboradores ADD cargo_id BIGINT;

ALTER TABLE tb_colaboradores ADD CONSTRAINT fk_colaboradores_cargos
FOREIGN KEY (cargo_id) REFERENCES tb_cargos (id);


UPDATE tb_colaboradores
SET cargo_id = CASE id
    WHEN 1 THEN 1
    WHEN 2 THEN 2
    WHEN 3 THEN 1
    WHEN 4 THEN 3
    WHEN 5 THEN 1
END
WHERE id IN (1, 2, 3, 4, 5);

SELECT * FROM tb_colaboradores;

SELECT c.id,
       c.nome,
       c.data_nascimento,
       c.salario,
       t.cargo AS nome_do_cargo,
       c.email
FROM tb_colaboradores c
JOIN tb_cargos t ON c.cargo_id = t.id;
