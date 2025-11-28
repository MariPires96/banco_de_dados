CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
nota DECIMAL(4,2) NOT NULL,
data_nascimento DATE,
turma VARCHAR(255) NOT NULL,
responsavel VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_estudantes (nome, nota, data_nascimento, turma, responsavel) VALUES 
("Fernando Ferreira", 7.2, '2010-11-26', "9A", "Luisa Ferreira"),
("Ana Lopes", 9.2, '2010-11-10', "9A", "Carlos Lopes"),
("Fernanda Almeida", 9.9, '2010-10-16', "9A", "Júlia Almeida"),
("Felipe Ferraz", 9.0, '2010-10-21', "9A", "Fagner Ferraz"),
("Fernanda Fernades", 7.1, '2010-01-01', "9A", "Fátima Fernades"),
("Lara Santos", 6.9, '2010-09-24', "9A", "Lucas Santos"),
("Maria Souza", 6.5, '2010-03-26', "9A", "Marcia Souza"),
("Eduardo Martins", 7.7, '2010-01-06', "9A", "Eduarda Martins"),
("Lorena Gonçalves", 4.8, '2010-05-28', "9A", "Pedro Gonçalves");

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7;

SELECT * FROM tb_estudantes WHERE nota < 7;

SELECT * FROM tb_estudantes
WHERE nota = (SELECT MAX(nota) FROM tb_estudantes);

SELECT * FROM tb_estudantes
WHERE nota = (SELECT MIN(nota) FROM tb_estudantes);



