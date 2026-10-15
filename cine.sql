DROP DATABASE IF exists CINE;
CREATE DATABASE CINE;
USE CINE;
CREATE TABLE Género (
Identificador INT PRIMARY KEY,
Nombre varchar(25)
);
INSERT INTO Género (Identificador, Nombre) VALUES
(1, 'Terror'),
(2, 'Comedia'),
(3, 'Acción'),
(4, 'Drama'),
(5, 'Ciencia Ficción');
CREATE TABLE Película (
Identificador INT AUTO_INCREMENT PRIMARY KEY,
Título text,
Duración tinyint unsigned,
IdentificadorGénero tinyint unsigned, -- foreign key
FOREIGN KEY (IdentificadorGénero) REFERENCES Género(Identificador)
);
ALTER TABLE Película
ADD Director varchar(100);
INSERT INTO Película (Título, Duración, IdentificadorGénero, Director) VALUES
('El Resplandor', 146, 1, 'Stanley Kubrick'),
('It', 135, 1, 'Andy Muschietti'),
('Scream', 111, 1, 'Wes Craven'),
('La Monja', 96, 1, 'Corin Hardy'),
('Expediente Warren', 112, 1, 'James Wan'),

('Superbad', 113, 2, 'Greg Mottola'),
('Scary Movie', 88, 2, 'Keenen Ivory Wayans'),
('Resacón en Las Vegas', 100, 2, 'Todd Phillips'),
('La Máscara', 101, 2, 'Chuck Russell'),
('Dos tontos muy tontos', 107, 2, 'Peter Farrelly'),

('Gladiator', 155, 3, 'Ridley Scott'),
('John Wick', 101, 3, 'Chad Stahelski'),
('Mad Max: Fury Road', 120, 3, 'George Miller'),
('Misión Imposible', 110, 3, 'Brian De Palma'),
('Terminator 2', 137, 3, 'James Cameron'),

('Titanic', 195, 4, 'James Cameron'),
('Forrest Gump', 142, 4, 'Robert Zemeckis'),
('Cadena perpetua', 142, 4, 'Frank Darabont'),
('La vida es bella', 116, 4, 'Roberto Benigni'),
('En busca de la felicidad', 117, 4, 'Gabriele Muccino'),

('Interstellar', 169, 5, 'Christopher Nolan'),
('Matrix', 136, 5, 'Lana Wachowski'),
('Avatar', 162, 5, 'James Cameron'),
('Alien', 117, 5, 'Ridley Scott'),
('Blade Runner', 117, 5, 'Ridley Scott'),
('Jurassic Park', 127, 5, 'Steven Spielberg'),
('Star Wars', 121, 5, 'George Lucas'),
('Regreso al Futuro', 116, 5, 'Robert Zemeckis'),
('Dune', 155, 5, 'Denis Villeneuve'),
('Wall-E', 98, 5, 'Andrew Stanton');
ALTER TABLE Película 
ADD Año_Estreno YEAR;
SET SQL_SAFE_UPDATES = 0;
ALTER TABLE Película RENAME COLUMN Año_Estreno TO Estreno;
UPDATE Película SET Estreno = 1980 WHERE Título = 'El Resplandor';
UPDATE Película SET Estreno = 2017 WHERE Título = 'It';
UPDATE Película SET Estreno = 1996 WHERE Título = 'Scream';
UPDATE Película SET Estreno = 2018 WHERE Título = 'La Monja';
UPDATE Película SET Estreno = 2013 WHERE Título = 'Expediente Warren';
UPDATE Película SET Estreno = 2007 WHERE Título = 'Superbad';
UPDATE Película SET Estreno = 2000 WHERE Título = 'Scary Movie';
UPDATE Película SET Estreno = 2009 WHERE Título = 'Resacón en Las Vegas';
UPDATE Película SET Estreno = 1994 WHERE Título = 'La Máscara';
UPDATE Película SET Estreno = 1994 WHERE Título = 'Dos tontos muy tontos';
UPDATE Película SET Estreno = 2000 WHERE Título = 'Gladiator';
UPDATE Película SET Estreno = 2014 WHERE Título = 'John Wick';
UPDATE Película SET Estreno = 2015 WHERE Título = 'Mad Max: Fury Road';
UPDATE Película SET Estreno = 1996 WHERE Título = 'Misión Imposible';
UPDATE Película SET Estreno = 1991 WHERE Título = 'Terminator 2';
UPDATE Película SET Estreno = 1997 WHERE Título = 'Titanic';
UPDATE Película SET Estreno = 1994 WHERE Título = 'Forrest Gump';
UPDATE Película SET Estreno = 1994 WHERE Título = 'Cadena perpetua';
UPDATE Película SET Estreno = 1997 WHERE Título = 'La vida es bella';
UPDATE Película SET Estreno = 2006 WHERE Título = 'En busca de la felicidad';
UPDATE Película SET Estreno = 2014 WHERE Título = 'Interstellar';
UPDATE Película SET Estreno = 1999 WHERE Título = 'Matrix';
UPDATE Película SET Estreno = 2009 WHERE Título = 'Avatar';
UPDATE Película SET Estreno = 1979 WHERE Título = 'Alien';
UPDATE Película SET Estreno = 1982 WHERE Título = 'Blade Runner';
UPDATE Película SET Estreno = 1993 WHERE Título = 'Jurassic Park';
UPDATE Película SET Estreno = 1977 WHERE Título = 'Star Wars';
UPDATE Película SET Estreno = 1985 WHERE Título = 'Regreso al Futuro';
UPDATE Película SET Estreno = 2021 WHERE Título = 'Dune';
UPDATE Película SET Estreno = 2008 WHERE Título = 'Wall-E';
SELECT * FROM Género;
SELECT * FROM Película;
SELECT * FROM Película WHERE Director = "James Cameron";
SELECT * FROM Película WHERE Duración > 120;
SELECT * FROM Película WHERE Estreno <2000;
SELECT Película.Título, Género.Nombre
FROM Película
INNER JOIN Género
ON Película.IdentificadorGénero = Género.Identificador
WHERE Género.Nombre = "Terror";
SELECT Película.Título, Película.Director, Género.Nombre
FROM Película
INNER JOIN Género
ON Película.IdentificadorGénero = Género.Identificador
ORDER BY Película.Título ASC;
SELECT Película.Título, Película.Duración, Género.Nombre
FROM Película
INNER JOIN Género
ON Película.IdentificadorGénero = Género.Identificador
WHERE Película.Duración > 120;
SELECT Película.Título, Película.Estreno, Género.Nombre
FROM Película
INNER JOIN Género
ON Película.IdentificadorGénero = Género.Identificador
WHERE Película.Estreno < 2000;
