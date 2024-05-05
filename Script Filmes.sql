
-- 1
SELECT
Nome,
Ano
FROM 
Filmes


-- 2
SELECT
Nome,
Ano
FROM 
Filmes
ORDER BY Ano

-- 3 
SELECT * FROM Filmes
WHERE Nome = 'De Volta para o futuro' AND Ano = 1985 AND Duracao = 116

-- 4

SELECT * FROM Filmes
WHERE Ano = 1997

-- 5

SELECT * FROM Filmes
WHERE Ano > 2000

-- 6

SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7

SELECT 
    Ano Ano,
    COUNT(*)  Quantidade,
    MAX(Duracao) Duracao
FROM Filmes
GROUP BY Ano
ORDER BY Duracao DESC;


-- 8

SELECT * FROM Atores
WHERE Genero = 'M'

-- 9

SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10

SELECT
	Nome, 
	Genero	
FROM Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id
WHERE Filmes.Nome = Nome

-- 11

SELECT
	Nome, 
	Genero	
FROM Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.Id
WHERE Genero = 'Mistério'

 -- 12

 SELECT
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM Filmes
INNER JOIN Atores ON Filmes.Id = Atores.Id
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.Id

