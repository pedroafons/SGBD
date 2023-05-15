-- Operadores de comparação

select nome from artistas where id = 1;
select nome_album from albuns where ano_lancamento > 1974;

 

-- Combinando diferentes operadores lógicos

select nome_album from albuns where pais_id = 1 and ano_lancamento > 1900;
select ano_lancamento from albuns where nome_album = 'Luz' or nome_album = 'Cantar';

 

-- Operadores de intervalo

select nome from artistas where id between 1 and 5;
select nome_pais from paises where id not between 1 and 3;

 

-- Operadores de padrão

select nome from artistas where nome like 'D%';
select nome_pais from paises where nome_pais like 'I%';

 

-- Operadores de agregação

select max(ano_lancamento) from albuns;
select min(id) from paises;
select max(id) from generos;
select count(ano_lancamento) from albuns where id = 1;