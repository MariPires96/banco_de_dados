# 🛍️ 1. Projeto: db_ecommerce

## 📝 **Descrição**
Banco de dados para um e-commerce contendo categorias e produtos diversos.

## 📌 **Tabelas**
### **tb_categorias**
- id  
- categoria  

### **tb_produtos**
- id  
- nome_produto  
- preco  
- quantidade  
- categoria_id (FK)

## 🔗 **Relacionamento**
`tb_produtos.categoria_id` → `tb_categorias.id`  
Relacionamento **1:N**.

## 📌 **Consultas realizadas**
- Produtos com preço acima de 500  
- Produtos com preço abaixo de 500  
- Listagem completa dos produtos cadastrados  

---

# 🎓 2. Projeto: db_escola

## 📝 **Descrição**
Banco de dados escolar com cadastro de estudantes e suas informações acadêmicas.

## 📌 **Tabelas**
### **tb_estudantes**
- id  
- nome  
- nota  
- data_nascimento  
- turma  
- responsavel  

## 📌 **Consultas realizadas**
- Estudantes com nota > 7  
- Estudantes com nota < 7  
- Estudante com maior nota (MAX)  
- Estudante com menor nota (MIN)  

---

# 🧑‍💼 3. Projeto: db_rh

## 📝 **Descrição**
Banco de dados de Recursos Humanos com colaboradores, salários e cargos.

## 📌 **Tabelas**
### **tb_colaboradores**
- id  
- nome  
- data_nascimento  
- salario  
- email  
- cargo_id (FK)

### **tb_cargos**
- id  
- cargo  

## 🔗 **Relacionamento**
`tb_colaboradores.cargo_id` → `tb_cargos.id`  
Relacionamento **1:N**.

## 📌 **Consultas realizadas**
- Atualização de salários com CASE  
- Colaboradores com salário > 2000  
- Colaboradores com salário < 2000  
- INNER JOIN exibindo o nome do cargo  

---

# 📚 Tecnologias Utilizadas
- MySQL Workbench  
- MySQL Server  
- SQL (DDL, DML, DQL)

---

# 👩‍💻 Autora
**Mariana Barbosa Pires**
