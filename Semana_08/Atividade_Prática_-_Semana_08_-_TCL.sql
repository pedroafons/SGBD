-- Curso de Engenharia de Software - UniEVANGÉLICA
-- Disciplina de Sistemas Gerenciadores de Banco de Dados
-- Dev: Pedro Afonso Ferreira Leite

-- Criar ponto de salvamento dentro de transações.
-- Definindo um ponto de salvamento no início da criação do banco de dados

SAVEPOINT criacao_bd;

-- Definindo um ponto de salvamento no início da criação das tabelas

SAVEPOINT criacao_de_tabelas;

-- Confirmação de inserções e atualizações
-- Confirmação da atualização do artista na tabela albuns

UPDATE albuns SET artista_id = 2 WHERE id = 5;
COMMIT;

-- Confirmação das inserções de dados na tabela generos

INSERT INTO generos (genero) VALUES ('Jazz');
INSERT INTO generos (genero) VALUES ('Rock');
INSERT INTO generos (genero) VALUES ('Funk');
INSERT INTO generos (genero) VALUES ('Soul');
INSERT INTO generos (genero) VALUES ('R&B');
COMMIT;

-- Reverter transações no caso de ocorrer algum erro
-- Revertendo uma transação errada, no caso a exclusão do artista em específico

DELETE FROM artistas WHERE id = 6;
ROLLBACK;