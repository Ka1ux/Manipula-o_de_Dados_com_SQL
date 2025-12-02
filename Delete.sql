-- 1. Deletar matrícula com status concluída
DELETE FROM matricula
WHERE id = 3;

-- 2. Deletar um aluno sem matrículas ativas
DELETE FROM aluno
WHERE id = 3;  -- João Lima (não está matriculado em nada no seu banco)

-- 3. Deletar cursos com carga horária menor que 35
DELETE FROM curso
WHERE id = 3;