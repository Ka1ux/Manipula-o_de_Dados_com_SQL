-- 1. Atualizar o email do aluno Kauá
UPDATE aluno
SET email = 'kaua.silva@novoemail.com'
WHERE id = 1;

-- 2. Atualizar o status da matrícula do aluno 1 no curso 1
UPDATE matricula
SET status = 'concluída'
WHERE id = 1;

-- 3. Atualizar o nome e carga horária de um curso
UPDATE curso
SET nome = 'Python Profissional', carga_horaria = 50
WHERE id = 1;
