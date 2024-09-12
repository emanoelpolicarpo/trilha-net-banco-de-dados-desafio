-- Buscar o nome e o ano dos filmes
SELECT F.Nome, F.Ano FROM Filmes F

-- Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT F.Nome, F.Ano, F.Duracao FROM Filmes F
ORDER BY F.Ano

-- Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT F.Nome, F.Ano, F.Duracao FROM Filmes F
WHERE F.Nome = 'De volta para o Futuro'

-- Buscar os filmes lançados em 1997
SELECT F.Nome, F.Ano, F.Duracao FROM Filmes F
WHERE F.Ano = 1997

-- Buscar os filmes lançados APÓS o ano 2000
SELECT F.Nome, F.Ano, F.Duracao FROM Filmes F
WHERE F.Ano > 2000

-- Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT F.Nome, F.Ano, F.Duracao FROM Filmes F
WHERE F.Duracao > 100 AND F.Duracao < 150
ORDER BY F.Duracao

-- Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela Quantidade em ordem decrescente
SELECT F.Ano,
COUNT(F.Ano) AS Quantidade
FROM Filmes F
GROUP BY F.Ano
ORDER BY Quantidade DESC

-- Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT *
FROM Atores A
WHERE A.Genero = 'M'

-- Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT *
FROM Atores A
WHERE A.Genero = 'F'
ORDER BY A.PrimeiroNome

--  Buscar o nome do filme e o gênero
SELECT F.Nome, G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id

-- Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome, G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'

-- Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome,
A.PrimeiroNome,
A.UltimoNome,
EF.Papel
FROM Filmes F
JOIN ElencoFilme EF ON F.Id = EF.IdFilme
JOIN Atores A ON EF.IdAtor = A.Id
