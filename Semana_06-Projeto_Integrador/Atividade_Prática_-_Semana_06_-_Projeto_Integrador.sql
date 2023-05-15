-- Curso de Engenharia de Software - UniEVANGÉLICA
-- Disciplina de Sistemas Gerenciadores de Banco de Dados
-- Dev: Pedro Afonso Ferreira Leite
-- 01/04/2023
-- Projeto Integrador: Cifra

create table mercado (
  id int not NULL PRIMARY KEY auto_increment,
  nome VARCHAR(40) not null,
  cnpj VARCHAR(18) not null UNIQUE,
  endereco VARCHAR(100)
);


create table produto (
  id int not NULL PRIMARY KEY auto_increment,
  nome VARCHAR(40) not null,
  valor DECIMAL(10,2),
  mercado_id int NOt NULL,
  FOREIGN KEY (mercado_id) REFERENCES mercado(id)
);


INSERT INTO mercado (nome, cnpj, endereco) VALUES
('Mercado A', '11.111.111/0001-11', 'Rua A, 123'),
('Mercado B', '22.222.222/0001-22', 'Rua B, 456'),
('Mercado C', '33.333.333/0001-33', 'Rua C, 789');

INSERT INTO produto (nome, valor, mercado_id) VALUES
('Produto 1', 10.50, 1),
('Produto 2', 20.75, 1),
('Produto 3', 15.00, 2),
('Produto 4', 5.99, 2),
('Produto 5', 50.00, 3);

SELECT * FROM mercado WHERE nome = 'Mercado A';
SELECT * FROM produto WHERE valor > 20.00;
SELECT * FROM mercado WHERE nome <> 'Mercado A' AND cnpj <> '11.111.111/0001-11';
SELECT * FROM mercado WHERE id NOT IN (SELECT DISTINCT mercado_id FROM produto);
SELECT SUM(valor) AS total FROM produto;
