# 📚 Sistema de Gerenciamento de Cursos (SQL)

![MySQL](https://img.shields.io/badge/mysql-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white)
![Database](https://img.shields.io/badge/database-relational-lightgrey?style=for-the-badge)
![Status](https://img.shields.io/badge/status-active-brightgreen?style=for-the-badge)

Este projeto consiste em um conjunto de scripts SQL para a criação e gerenciamento de um banco de dados relacional voltado para uma plataforma de ensino. O sistema gerencia **alunos**, **cursos**, **categorias** e **matrículas**.

---

## 🗂️ Estrutura do Banco de Dados

O banco de dados `cursos` é composto pelas seguintes tabelas:

| Tabela | Descrição |
| :--- | :--- |
| **`categoria`** | Classificação dos cursos (ex: Programação, Design). |
| **`aluno`** | Dados pessoais dos estudantes. |
| **`curso`** | Informações sobre os cursos oferecidos e suas cargas horárias. |
| **`matricula`** | Tabela associativa que vincula alunos aos cursos, registrando datas e status. |

---

## 🚀 Como Executar

### 1. Criação das Tabelas (DDL)
Primeiro, definimos a estrutura do banco e suas relações (Foreign Keys).

```sql
USE cursos;

CREATE TABLE categoria (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE aluno (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE curso (
    id INT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    carga_horaria INT NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);

CREATE TABLE matricula (
    id INT PRIMARY KEY,
    aluno_id INT,
    curso_id INT,
    data_matricula DATE NOT NULL,
    status VARCHAR(50) NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES aluno(id),
    FOREIGN KEY (curso_id) REFERENCES curso(id)
);

Aqui está uma proposta de README.md organizado, visual e pronto para você copiar e usar no seu GitHub ou portfólio.

Organizei os scripts por funcionalidade, adicionei badges de tecnologia e uma breve descrição do esquema do banco de dados.

Markdown

# 📚 Sistema de Gerenciamento de Cursos (SQL)

![MySQL](https://img.shields.io/badge/mysql-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white)
![Database](https://img.shields.io/badge/database-relational-lightgrey?style=for-the-badge)
![Status](https://img.shields.io/badge/status-active-brightgreen?style=for-the-badge)

Este projeto consiste em um conjunto de scripts SQL para a criação e gerenciamento de um banco de dados relacional voltado para uma plataforma de ensino. O sistema gerencia **alunos**, **cursos**, **categorias** e **matrículas**.

---

## 🗂️ Estrutura do Banco de Dados

O banco de dados `cursos` é composto pelas seguintes tabelas:

| Tabela | Descrição |
| :--- | :--- |
| **`categoria`** | Classificação dos cursos (ex: Programação, Design). |
| **`aluno`** | Dados pessoais dos estudantes. |
| **`curso`** | Informações sobre os cursos oferecidos e suas cargas horárias. |
| **`matricula`** | Tabela associativa que vincula alunos aos cursos, registrando datas e status. |

---

## 🚀 Como Executar

### 1. Criação das Tabelas (DDL)
Primeiro, definimos a estrutura do banco e suas relações (Foreign Keys).

```sql
USE cursos;

CREATE TABLE categoria (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE aluno (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE curso (
    id INT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    carga_horaria INT NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);

CREATE TABLE matricula (
    id INT PRIMARY KEY,
    aluno_id INT,
    curso_id INT,
    data_matricula DATE NOT NULL,
    status VARCHAR(50) NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES aluno(id),
    FOREIGN KEY (curso_id) REFERENCES curso(id)
);
```
# 2. Inserção de Dados (DML)
```
- Categorias
INSERT INTO categoria VALUES
(1, 'Programação'), 
(2, 'Design'), 
(3, 'Dados');

- Alunos
INSERT INTO aluno VALUES
(1, 'Kauá Silva', 'kaua@email.com', '2005-03-12'),
(2, 'Maria Santos', 'maria@gmail.com', '2004-07-21'),
(3, 'João Lima', 'joao@gmail.com', '2003-11-02');

- Cursos
INSERT INTO curso VALUES
(1, 'Python para Iniciantes', 40, 1),
(2, 'Banco de Dados SQL', 60, 3),
(3, 'UX Design Básico', 30, 2);

- Matrículas
INSERT INTO matricula VALUES
(1, 1, 1, '2024-02-10', 'ativa'),
(2, 1, 2, '2024-02-15', 'ativa'),
(3, 2, 3, '2024-02-18', 'concluída');
```
# 🔍 Consultas e Relatórios
```
- Listar todos os alunos
SELECT * FROM aluno;

- Listar cursos e suas respectivas categorias
SELECT curso.nome, categoria.nome AS categoria
FROM curso
JOIN categoria ON categoria.id = curso.categoria_id;

- Relatório completo de matrículas (Aluno + Curso + Status)
SELECT m.id, a.nome AS aluno, c.nome AS curso, m.status
FROM matricula m
JOIN aluno a ON a.id = m.aluno_id
JOIN curso c ON c.id = m.curso_id;
```
# ✏️ Manutenção de Dados
```
- Atualizar email do aluno
UPDATE aluno SET email = 'kaua.silva@novoemail.com' WHERE id = 1;

- Concluir uma matrícula
UPDATE matricula SET status = 'concluída' WHERE id = 1;

- Corrigir nome do curso
UPDATE curso SET nome = 'Python Profissional' WHERE id = 1;
```
# Exclusões
```
- Primeiro removemos a matrícula (tabela dependente)
DELETE FROM matricula WHERE id = 3;

- Depois removemos o registro principal
DELETE FROM aluno WHERE id = 3;
DELETE FROM curso WHERE id = 3;
```
