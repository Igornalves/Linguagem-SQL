create database DB_Stream-Netflix;

CREATE TABLE Estudios(
 nome VARCHAR(30),
 morada VARCHAR(70),
 PRIMARY KEY (nome)
 );

 CREATE TABLE Realizadores(
 nome VARCHAR(50),
 categoria CHAR, -- vamos assumir que é A, B, ou C.
 PRIMARY KEY (nome)
 );
 
 CREATE TABLE Filmes(
 nome VARCHAR(50),
 ano INTEGER,
 duracao INTEGER,
 aCores BOOLEAN,
 nomeEstudio VARCHAR(30),
 nomeRealizador VARCHAR(50),
 PRIMARY KEY (nome,ano),
 FOREIGN KEY (nomeEstudio) REFERENCES Estudios(nome),
 FOREIGN KEY (nomeRealizador) REFERENCES Realizadores(nome)
 );
 
 CREATE TABLE Actores(
 nome VARCHAR(50),
 morada VARCHAR(70),
 sexo CHAR,
 dataNascimento DATE,
 PRIMARY KEY (nome)
 );
 
 CREATE TABLE Participa(
 nomeFilme VARCHAR(50),
 anoFilme INTEGER,
 nomeActor VARCHAR(50),
 PRIMARY KEY (nomeFilme,anoFilme,nomeActor),
 FOREIGN KEY (nomeActor) REFERENCES Actores(nome),
 FOREIGN KEY (nomeFilme,anoFilme) REFERENCES Filmes(nome,ano)
 );

drop table Participa;
drop table Actores;
drop table Filmes;
drop table Estudios;
drop table Realizadores;

INSERT INTO Estudios VALUES ('Fox' , '101 Embarcadero, Los 
Angeles');
 INSERT INTO Estudios VALUES ('Disney' , '56 Yankee Boulevard, Los 
Angeles');
 INSERT INTO Estudios VALUES ('Paramount' , '44 Pine St., Los Angeles');
 INSERT INTO Estudios VALUES ('Universal' , '23 Universal Studies Dr., 
Los Angeles');
 INSERT INTO Estudios VALUES ('Warner Brothers' , '71 Parkway Dr., San Diego');
 
 INSERT INTO Realizadores VALUES ('George Lucas' , 'A');
 INSERT INTO Realizadores VALUES ('Steven Spielberg' , 'A');
 INSERT INTO Realizadores VALUES ('Kevin Costner' , 'B');
 INSERT INTO Realizadores VALUES ('Irvin Kershner' , 'B');
 INSERT INTO Realizadores VALUES ('Richard Marquand' , 'A');
 INSERT INTO Realizadores VALUES ('Stephen Herek' , 'A');
 INSERT INTO Realizadores VALUES ('Penelope Spheeris' , 'A');
 INSERT INTO Realizadores VALUES ('Roger Allers' , 'A');
 INSERT INTO Realizadores VALUES ('Mike Gabriel' , 'A');
 INSERT INTO Realizadores VALUES ('Clint Eastwood' , 'A');
 INSERT INTO Realizadores VALUES ('Barry Sonnenfeld' , 'A');
 INSERT INTO Realizadores VALUES ('Merian Cooper' , 'A');
 INSERT INTO Realizadores VALUES ('John Guillermin' , 'A');
 INSERT INTO Realizadores VALUES ('Victor Fleming' , 'C');
 INSERT INTO Realizadores VALUES ('Paul Verhoeven' , 'B');
 INSERT INTO Realizadores VALUES ('Andrew Davies' , 'B');
 INSERT INTO Realizadores VALUES ('Tim Burton' , 'A');
 INSERT INTO Realizadores VALUES ('Tony Scott' , 'A');
 INSERT INTO Realizadores VALUES ('Stanley Kubrik' , 'A');
 INSERT INTO Realizadores VALUES ('Baz Luhrmann' , 'A');
 INSERT INTO Realizadores VALUES ('Oliver Stone' , 'A');
 
 INSERT INTO Filmes VALUES ('Star Wars' , 1977, 124, true, 
'Fox' , 'George Lucas');
 INSERT INTO Filmes VALUES ('Empire Strikes Back' , 1980, 143, true, 
'Fox' , 'Irvin Kershner');
 INSERT INTO Filmes VALUES ('Return of the Jedi' , 1983, 165, true, 
'Fox' , 'Richard Marquand');
 INSERT INTO Filmes VALUES ('Mighty Ducks' , 1991, 104, true, 
'Disney' , 'Stephen Herek');
 INSERT INTO Filmes VALUES ('Wayne''s World' , 1992, 95, true, 
'Paramount' , 'Penelope Spheeris');
 INSERT INTO Filmes VALUES ('Lion King' , 1994, 122, true, 
'Disney' , 'Roger Allers');
 INSERT INTO Filmes VALUES ('Pocahontas' , 1995, 115, true, 
'Disney' , 'Mike Gabriel');
 INSERT INTO Filmes VALUES ('Addams Family' , 1991, 102, true, 
'Paramount' , 'Barry Sonnenfeld');
 INSERT INTO Filmes VALUES ('King Kong' , 1933, NULL, false, 
'Universal' , 'Merian Cooper');
 INSERT INTO Filmes VALUES ('King Kong' , 1976, 130, true, 
'Universal' , 'John Guillermin');
 INSERT INTO Filmes VALUES ('Gone With the Wind' , 1939, 181, false, 
'Paramount' , 'Victor Fleming');
 INSERT INTO Filmes VALUES ('Basic Instinct' , 1986, 100, true, 
'Paramount' , 'Paul Verhoeven');
 INSERT INTO Filmes VALUES ('Total Recall' , 1990, 110, true, 
'Fox' , 'Paul Verhoeven');
 INSERT INTO Filmes VALUES ('Indiana Jones' , 1981, 130, true, 
'Universal' , 'Steven Spielberg');
 INSERT INTO Filmes VALUES ('The Fugitive' , 1993, 120, true, 
'Universal' , 'Andrew Davies');
 INSERT INTO Filmes VALUES ('Bridges of Madison County' , 1995, 147, true, 
'Universal' , 'Clint Eastwood');
 INSERT INTO Filmes VALUES ('Batman Returns' , 1992, 122, true, 
'Warner Brothers', 'Tim Burton');
 INSERT INTO Filmes VALUES ('Top Gun' , 1986, 145, true, 
'Fox', 'Tony Scott');
 INSERT INTO Filmes VALUES ('Eyes Wide Shut' , 1999, 148, true, 
'Paramount', 'Stanley Kubrik');
 INSERT INTO Filmes VALUES ('Moulin Rouge' , 2001, 124, true, 
'Fox', 'Baz Luhrmann');
 INSERT INTO Filmes VALUES ('JFK' , 1996, 130, true, 
'Fox', 'Oliver Stone' );
 INSERT INTO Filmes VALUES ('Dances with Wolves' , 1990, 132, true, 
'Fox', 'Kevin Costner' );
 
 
 INSERT INTO Actores VALUES ('Carrie Fisher' , '123 Maple St., 
Hollywood' ,'f', '1955-11-07');
 INSERT INTO Actores VALUES ('Mark Hamill' , '456 Oak Rd., Brentwood' 
,'m', '1950-02-23');
 INSERT INTO Actores VALUES ('Harrison Ford' , '789 Palm Dr., Beverly 
Hills' ,'m', '1944-07-13');
 INSERT INTO Actores VALUES ('Emilio Estevez' , '201 California St., 
Mountain View' ,'m', '1960-03-22');
 INSERT INTO Actores VALUES ('Dana Carvey' , '700 El Camino, Beverly 
Hills' ,'f', '1944-04-04');
 INSERT INTO Actores VALUES ('Mike Meyers' , '880 Elm St., Santa 
Barbara' ,'m', '1935-06-04');
 INSERT INTO Actores VALUES ('Sharon Stone' , '550 Elm St., Santa 
Barbara' ,'f', '1970-05-14');
 INSERT INTO Actores VALUES ('Tom Cruise' , '26 Palm Dr., Hollywood' 
,'m', '1967-08-20');
 INSERT INTO Actores VALUES ('Arnold Schwarzenegger' , '83 Lincoln Av., Las 
Vegas' ,'m', '1967-08-19');
 INSERT INTO Actores VALUES ('Kim Basinger' , '101 Sprinfield, Santa 
Monica' ,'f', '1967-08-12');
 INSERT INTO Actores VALUES ('Alec Baldwin' , '101 Sprinfield, Santa 
Monica' ,'m', '1964-01-26');
 INSERT INTO Actores VALUES ('Michael Keaton' , '32 Palm Beach, Santa 
Monica' ,'m', '1958-03-02');
 INSERT INTO Actores VALUES ('Danny DeVito' , '18 Rodeo Dr., Beverly 
Hills' ,'m', '1946-04-08');
 INSERT INTO Actores VALUES ('Michelle Pfeiffer' , 'Via Venetto 4, 
Hollywood' ,'f', '1969-11-14');
 INSERT INTO Actores VALUES ('Nicole Kidman' , '26 Palm Dr., Hollywood' 
,'f', '1969-11-14');
 INSERT INTO Actores VALUES ('Meryl Streep' , 'Meryl House, Beverly 
Hills' ,'f', '1961-06-21');
 INSERT INTO Actores VALUES ('Kevin Costner' , '88 Palm Dr., Hollywood' 
,'m', '1965-01-30');
 INSERT INTO Actores VALUES ('Clint Eastwood' , '12 Presley Dr., Beverly 
Hills' ,'m', '1946-01-25');
 
 
 INSERT INTO Participa VALUES ('Star Wars', 1977, 'Carrie Fisher');
 INSERT INTO Participa VALUES ('Star Wars', 1977, 'Mark Hamill');
 INSERT INTO Participa VALUES ('Star Wars', 1977, 'Harrison Ford');
 INSERT INTO Participa VALUES ('Mighty Ducks', 1991, 'Emilio Estevez');
 INSERT INTO Participa VALUES ('Wayne''s World', 1992, 'Dana Carvey');
 INSERT INTO Participa VALUES ('Wayne''s World', 1992, 'Mike Meyers');
 INSERT INTO Participa VALUES ('Empire Strikes Back', 1980, 'Carrie Fisher');
 INSERT INTO Participa VALUES ('Return of the Jedi', 1983, 'Carrie Fisher');
 INSERT INTO Participa VALUES ('Basic Instinct', 1986, 'Sharon Stone');
 INSERT INTO Participa VALUES ('Total Recall', 1990, 'Arnold Schwarzenegger');
 INSERT INTO Participa VALUES ('Total Recall', 1990, 'Sharon Stone');
 INSERT INTO Participa VALUES ('The Fugitive', 1993, 'Harrison Ford');
 INSERT INTO Participa VALUES ('Indiana Jones', 1981, 'Harrison Ford');
 INSERT INTO Participa VALUES ('Batman Returns', 1992, 'Michael Keaton');
 INSERT INTO Participa VALUES ('Batman Returns', 1992, 'Danny DeVito');
 INSERT INTO Participa VALUES ('Batman Returns', 1992, 'Michelle Pfeiffer');
 INSERT INTO Participa VALUES ('Eyes Wide Shut', 1999, 'Nicole Kidman');
 INSERT INTO Participa VALUES ('Eyes Wide Shut', 1999, 'Tom Cruise');
 INSERT INTO Participa VALUES ('Top Gun', 1986, 'Tom Cruise');
 INSERT INTO Participa VALUES ('Moulin Rouge', 2001, 'Nicole Kidman');
 INSERT INTO Participa VALUES ('Dances with Wolves', 1990, 'Kevin Costner');
 INSERT INTO Participa VALUES ('JFK', 1996, 'Kevin Costner');


 INSERT INTO Participa VALUES ('Bridges of Madison County', 1990, 'Clint 
Eastwood');
 INSERT INTO Participa VALUES ('Bridges of Madison County', 1995, 'Meryl 
Streep');

select * from actores a;
select * from estudios e;
select * from filmes f;
select * from participa p;
select * from realizadores r;

-- SELECT-FROM-WHERE
-- SELECT é equivalente ao operador 'Projecção' da Álgebra Relacional
-- WHERE é equivalente ao operador 'Selecção' da Álgebra Relacional

SELECT nome 
FROM Filmes 
WHERE ano = 1992;

-- Operadores: = <> < > <= >=
-- Strings aparecem entre plicas

SELECT nome, ano, duracao 
FROM Filmes 
WHERE nomeEstudio<>'Disney';



