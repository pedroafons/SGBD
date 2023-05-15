Curso de Engenharia de Software - UniEVANGÉLICA 
Disciplina de Sisetmas Gerenciadores de Banco de Dados
Dev: Pedro Afonso Ferreira Leite - 2120431
27/03/2023

-- Consulta utilizando o INNER JOIN para verificar se existem nomes iguais na tabela de gêneros e estilos.

SELECT generos.genero, estilos.estilo
FROM generos
INNER JOIN estilos
	ON generos.genero = estilos.estilo;

-- Consulta utilizando o LEFT JOIN para verificar os correspondentes da tabela direita na tabela esquerda.

SELECT artistas.id, albuns.artista_id
FROM artistas
LEFT JOIN albuns
	ON artistas.id = albuns.artista_id;

SELECT paises.id, albuns.pais_id
FROM paises
LEFT JOIN albuns
	ON paises.id = albuns.pais_id;