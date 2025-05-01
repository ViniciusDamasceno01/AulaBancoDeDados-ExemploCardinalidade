-- TABELA AUTOR
create table Autor (
id_autor int not null auto_increment primary key,
nome varchar(40) not null,
nacionalidade varchar(50)
);

-- TABELA LIVRO
create table Livro (
id_livro int not null auto_increment primary key,
titulo varchar(200) not null,
ano_publicacao int,
id_autor int,
foreign key (id_autor) references Autor(id_autor)
);

-- ADICIONANDO OS AUTORES
INSERT INTO Autor (nome, nacionalidade) VALUES 
('Machado de Assis', 'Brasileira'),
('J.K. Rowling', 'Britânica'),
('George Orwell', 'Britânica');

-- ADICIONANDO OS LIVROS
INSERT INTO Livro (titulo, ano_publicacao, id_autor) VALUES 
('Dom Casmurro', 1899, 1),
('Harry Potter e a Pedra Filosofal', 1997, 2),
('Harry Potter e a Câmara Secreta', 1998, 2),
('1984', 1949, 3),
('A Revolução dos Bichos', 1945, 3);

-- VISUALIZANDO COM O SELECT A CARDINALIDADE NA PRATICA
SELECT Livro.titulo AS Título, Livro.ano_publicacao AS Ano,
Autor.nome AS Autor
FROM Livro
JOIN Autor ON Livro.id_autor = Autor.id_autor;
    
-- VISUALIZANDO COM O SELECT A CARDINALIDADE NA PRATICA - APENAS OS LIVROS E AUTORES DO HARRY POTTER
SELECT Livro.titulo AS Título, Livro.ano_publicacao AS Ano
FROM Livro
JOIN Autor ON Livro.id_autor = Autor.id_autor
WHERE Autor.nome = 'J.K. Rowling';