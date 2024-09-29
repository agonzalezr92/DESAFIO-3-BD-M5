 --Crear una base de datos llamada películas.
 CREATE DATABASE "peliculas";
\c "peliculas";

--Cargar ambos archivos a su tabla correspondiente
CREATE TABLE peliculas (
    id INT PRIMARY KEY,
    pelicula VARCHAR(255),
    anio_estreno INT,
    director VARCHAR(255)
);

CREATE TABLE reparto (
    id_pelicula INT,
    actor VARCHAR(255),
    FOREIGN KEY (id_pelicula) REFERENCES peliculas(id)
);

-- Cargar los datos desde los archivos cvs
LOAD DATA INFILE '../DESAFIO 3-BD/peliculas.csv'
INTO TABLE peliculas
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id, pelicula, anio_estreno, director);

LOAD DATA INFILE '../DESAFIO 3-BD/reparto.csv'
INTO TABLE reparto
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id_pelicula, actor);

--Obtener el ID de la película “Titanic”
SELECT id 
FROM peliculas 
WHERE pelicula = 'Titanic';


--Listar a todos los actores que aparecen en la película "Titanic"
SELECT reparto.actor
FROM reparto
JOIN peliculas ON reparto.id_pelicula = peliculas.id
WHERE peliculas.pelicula = 'Titanic';


--Consultar en cuántas películas del top 100 participa Harrison Ford
SELECT COUNT(*) AS veces_participa
FROM reparto
WHERE actor = 'Harrison Ford';

--Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente.
SELECT *
FROM peliculas
WHERE anio_estreno BETWEEN 1990 AND 1999
ORDER BY pelicula ASC;

--Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrado para la consulta como “longitud_titulo”.
SELECT pelicula, LENGTH(pelicula) AS longitud_titulo
FROM peliculas;

--Consultar cual es la longitud más grande entre todos los títulos de las películas.
SELECT MAX(LENGTH(pelicula)) AS longitud_maxima
FROM peliculas;
