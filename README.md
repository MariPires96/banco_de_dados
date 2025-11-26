# 📚 Exercícios de Banco de Dados – MySQL

Repositório destinado às atividades práticas de SQL realizadas no **MySQL Workbench**, incluindo criação de bancos, tabelas, inserção de dados, relacionamentos, consultas e atualizações.

Todas as atividades fazem parte do treinamento da **Generation Brasil** na trilha Full Stack.

---

# 📝 Atividade 01 – Sistema de RH

## 🎯 Objetivo
Criar um sistema simples de RH para gestão de colaboradores e cargos.

## ✔ Conteúdos realizados

### 🏗 Criação das tabelas
- Banco **db_rh**
- Tabela **tb_colaboradores** com:
  - id  
  - nome  
  - data_nascimento  
  - salario  
  - email  

- Tabela **tb_cargos** com:
  - id  
  - cargo  

### 🧩 Relacionamento
- `tb_colaboradores.cargo_id` → FOREIGN KEY → `tb_cargos.id`

### 📝 Registros inseridos
- 5 colaboradores
- 3 cargos

### 🔄 Atualizações realizadas
- Atualização salarial utilizando `UPDATE` com `CASE`
- Associação dos colaboradores aos cargos

### 🔍 Consultas realizadas
- SELECT completo da tabela
- SELECT de salários > 2000
- SELECT de salários < 2000
- JOIN entre colaboradores e cargos

📄 **Script:** `db_rh.sql`

---

# 🛒 Atividade 02 – Sistema de E-commerce

## 🎯 Objetivo
Desenvolver um banco de dados para armazenar produtos e categorias de um e-commerce.

## ✔ Conteúdos realizados

### 🏗 Criação das tabelas
- Banco **db_ecommerce**
- Tabela **tb_categorias**
- Tabela **tb_produtos**, contendo:
  - id  
  - nome_produto  
  - preco  
  - quantidade  
  - categoria_id (foreign key)

### 🧩 Relacionamento
- `tb_produtos.categoria_id` → FOREIGN KEY → `tb_categorias.id`

### 📝 Registros inseridos
- 2 categorias
- 11 produtos distintos

### 🔍 Consultas realizadas
- SELECT geral de produtos
- SELECT produtos com preço > 500
- SELECT produtos com preço < 500

📄 **Script:** `db_ecommerce.sql`

---

# 🏫 Atividade 03 – Sistema Escolar

## 🎯 Objetivo
Criar um banco de dados para registrar informações dos estudantes de uma escola.

## ✔ Conteúdos realizados

### 🏗 Criação da tabela
- Banco **db_escola**
- Tabela **tb_estudantes** com:
  - id  
  - nome  
  - nota  
  - data_nascimento  
  - turma  
  - responsavel  

### 📝 Registros inseridos
- 9 estudantes cadastrados com diferentes notas

### 🔍 Consultas realizadas
- Estudantes com nota > 7.0  
- Estudantes com nota < 7.0  
- Estudante com **maior nota**  
- Estudante com **menor nota**

📄 **Script:** `db_escola.sql`

---

# 📂 Estrutura do Repositório
/
├── db_rh.sql
├── db_ecommerce.sql
├── db_escola.sql
└── README.md

---

# 🛠 Tecnologias Utilizadas

- MySQL Server  
- MySQL Workbench  
- Git & GitHub  

---

# ▶ Como Executar os Scripts

1. Abra o **MySQL Workbench**  
2. Vá em **File → Open SQL Script**  
3. Selecione o arquivo desejado  
4. Execute com **CTRL + SHIFT + ENTER**

---

# 🎓 Finalidade

Este repositório demonstra a aplicação prática dos conceitos fundamentais de:

- Modelagem de banco de dados  
- Criação e manipulação de tabelas  
- Consultas SQL  
- Relacionamentos entre tabelas  
- Comandos DDL e DML  

Atividades realizadas durante o bootcamp **Generation Brasil – Full Stack JavaScript**.

---
