-- 1. Listar todos os alunos
SELECT * FROM aluno;

-- 2. Listar cursos com suas categorias
SELECT 
    curso.nome AS curso,
    curso.carga_horaria,
    categoria.nome AS categoria
FROM curso
JOIN categoria ON categoria.id = curso.categoria_id;

-- 3. Listar todas as matrículas com aluno + curso + status
SELECT 
    m.id,
    a.nome AS aluno,
    c.nome AS curso,
    m.data_matricula,
    m.status
FROM matricula m
JOIN aluno a ON a.id = m.aluno_id
JOIN curso c ON c.id = m.curso_id;

-- 4. Buscar alunos nascidos após 2004
SELECT *
FROM aluno
WHERE data_nascimento > '2004-01-01';

-- 5. Listar cursos ordenados por carga horária
SELECT *
FROM curso
ORDER BY carga_horaria DESC;
