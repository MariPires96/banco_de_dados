# 🚀 1. Projeto: db_generation_game_online

## 🎮 **Descrição**
Banco de dados para um jogo online, contendo classes e personagens com seus atributos.

## 📌 **Tabelas**
### **tb_classes**
- id  
- nome_da_classe  
- tipo_da_classe  

### **tb_personagens**
- id  
- nome  
- nivel  
- poder_ataque  
- poder_defesa  
- classe_id (FK)

## 🔗 **Relacionamento**
`tb_personagens.classe_id` → `tb_classes.id`  
Relacionamento **1:N** (uma classe pode ter vários personagens).

## 📌 **Consultas realizadas**
- Filtros por ataque, defesa e nome  
- Ordenação por nome, ataque e defesa  
- Atualizações com UPDATE  
- Pesquisas com LIKE  
- INNER JOIN mostrando classe + personagem  

---

# 🍕 2. Projeto: db_pizzaria_legal

## 📝 **Descrição**
Banco de dados para uma pizzaria com categorias e pizzas cadastradas.

## 📌 **Tabelas**
### **tb_categorias**
- id  
- nome_categoria  
- descricao_categoria  

### **tb_pizzas**
- id  
- nome  
- preco  
- tamanho  
- ingredientes  
- categoria_id (FK)

## 🔗 **Relacionamento**
`tb_pizzas.categoria_id` → `tb_categorias.id`  
Relacionamento **1:N**.

## 📌 **Consultas realizadas**
- Busca por preço (> 45 e BETWEEN 50–100)
- Filtros por nome usando LIKE  
- INNER JOIN entre pizzas e categorias  
- Listagem por categorias específicas  

---

# 💊 3. Projeto: db_farmacia_bem_estar

## 📝 **Descrição**
Banco de dados para uma farmácia, com categorias e produtos variados.

## 📌 **Tabelas**
### **tb_categorias**
- id  
- nome_categoria  
- descricao_categoria  

### **tb_produtos**
- id  
- nome  
- preco  
- validade  
- estoque  
- categoria_id (FK)

## 🔗 **Relacionamento**
`tb_produtos.categoria_id` → `tb_categorias.id`  
Relacionamento **1:N**.

## 📌 **Consultas realizadas**
- Filtros por preço (> 50 e BETWEEN 5–60)
- LIKE com letras, início e final de strings  
- Filtros por ano de validade  
- INNER JOIN com categorias  
- Consultas por categoria específica  

---

# 📚 Tecnologias Utilizadas
- MySQL Workbench  
- MySQL Server  
- Comandos SQL (DDL, DML e DQL)

---

# 👩‍💻 Autora
**Mariana Barbosa Pires**