INSERT INTO categoria (id, nome) VALUES
(1, 'Programação'),
(2, 'Design'),
(3, 'Dados');

INSERT INTO aluno (id, nome, email, data_nascimento) VALUES
(1, 'Kauá Silva', 'kaua@email.com', '2005-03-12'),
(2, 'Maria Santos', 'maria@gmail.com', '2004-07-21'),
(3, 'João Lima', 'joao@gmail.com', '2003-11-02');

INSERT INTO curso (id, nome, carga_horaria, categoria_id) VALUES
(1, 'Python para Iniciantes', 40, 1),
(2, 'Banco de Dados SQL', 60, 3),
(3, 'UX Design Básico', 30, 2);

INSERT INTO matricula (id, aluno_id, curso_id, data_matricula, status) VALUES
(1, 1, 1, '2024-02-10', 'ativa'),
(2, 1, 2, '2024-02-15', 'ativa'),
(3, 2, 3, '2024-02-18', 'concluída');
