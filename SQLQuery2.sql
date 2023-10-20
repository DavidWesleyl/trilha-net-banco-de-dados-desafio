
-- EXPLORANDO O QUE TEM DENTRO DAS TABELAS DO BANCO DE DADOS E VENDO AS RELA��ES

SELECT * FROM Atores
SELECT * FROM ElencoFilme
SELECT * FROM Filmes 
SELECT * FROM FilmesGenero
SELECT * FROM Generos


-- DESAFIO:

-- 1 BUSCAR NOME E ANO DOS FILMES NA TABELA:
SELECT Nome, Ano FROM Filmes


-- 2 BUSCAR NOME E ANO DOS FILMES ORDENADO PELOS ANOS DE FORMA CRESCENTE:
SELECT Nome, Ano FROM Filmes ORDER BY Ano

-- 3 BUSCAR PELO FILME "DE VOLTA PARA O FUTURO" TRAZENDO NOME, ANO E DURA��O:

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De volta para o Futuro' 

-- 4 BUSCAR TODOS OS FILMES LAN�ADOS EM 1997

Select * FROM Filmes WHERE Ano = 1997

-- 5 BUSCAR OS FILMES LAN�ADOS AP�S O ANO 2000

SELECT * FROM Filmes WHERE ANO > 2000

-- 6 BUSCAR OS FILMES COM A DURA��O MAIOR QUE 100 E MENOR QUE 150, ORDENANDO PELA DURA��O EM ORDEM CRESCENTE

SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

-- 7 BUSCAR A QUANTIDADE DE FILMES LAN�ADAS NO ANO, AGRUPANDO POR ANO, ORDENANDO PELA DURA��O EM ORDEM DECRESCENTE

SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- 8 BUSCAR ATORES DO GENERO MASCULINO RETORNANDO O PRIMEIRO NOME E ULTIMO NOME	

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'

-- 9 BUSCAR ATRIZES DO GENERO FEMININO RETORNANO PRIMEIRO E ULTIMO NOME DE FORMA CRESCENTE

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10 BUSCAR O NOME DO FILME E O GENERO	

SELECT Nome AS NomeFilme, Genero AS Genero FROM FILMES INNER JOIN Generos ON Filmes.Id = Generos.Id

-- 11 BUSCAR O NOME DO FILME E O GENERO DO TIPO MISTERIO

SELECT Nome AS NomeFilme, Genero AS Genero FROM FILMES INNER JOIN Generos ON Filmes.Id = Generos.Id WHERE Genero = 'Mist�rio'

-- 12 BUSCAR O NOME DO FILME, E OS ATORES, TRAZENDO O PRIMEIRO NOME, O ULTIMO NOME E O PAPEL

SELECT 
	Filmes.Nome AS NomeFilme, 
	Atores.PrimeiroNome As Primeironome, 
	Atores.UltimoNome AS UltimoNome, 
	ElencoFilme.Papel AS Papel 
	FROM 
		Filmes
	INNER JOIN 
		ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
	INNER JOIN
		Atores ON ElencoFilme.IdAtor = Atores.Id












