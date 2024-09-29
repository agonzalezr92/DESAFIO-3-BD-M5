## Proyecto de Base de Datos de Películas
# Descripción

Este proyecto consiste en una base de datos que almacena información sobre películas, incluyendo sus títulos, años de estreno, directores y el reparto de actores. El objetivo es permitir consultas fáciles y rápidas sobre los datos relacionados con las películas y los actores.
Estructura de la Base de Datos

La base de datos consta de dos tablas principales:
1. peliculas

    id: Identificador único de la película (clave primaria).
    pelicula: Título de la película.
    anio_estreno: Año en que se estrenó la película.
    director: Nombre del director de la película.

2. reparto

    id_pelicula: Identificador de la película (clave foránea).
    actor: Nombre del actor que participó en la película.

# Requisitos

    Sistema de gestión de bases de datos (ej. MySQL, PostgreSQL).
    Herramienta de administración (opcional) para facilitar consultas, como DBeaver o pgAdmin.

# Instalación

    Clonar el repositorio:

    bash

git clone https://github.com/tu_usuario/proyecto_peliculas.git
cd proyecto_peliculas

# Crear la base de datos:

sql

CREATE DATABASE peliculas_db;

Ejecutar los scripts de creación de tablas: Asegúrate de que el script de creación de tablas esté en el directorio y ejecútalo en tu sistema de gestión de bases de datos.

# Ejecutar consultas 
1. Obtener el ID de la película “Titanic”.

2. Listar a todos los actores que aparecen en la película "Titanic".

3. Consultar en cuántas películas del top 100 participa Harrison Ford.

4. Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente.

5. Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrado para la consulta como “longitud_titulo”.

6. Consultar cual es la longitud más grande entre todos los títulos de las películas.

# Contribuciones

Si deseas contribuir a este proyecto, por favor abre un issue o envía un pull request. Apreciamos cualquier sugerencia o mejora.

# Licencia

Este proyecto está licenciado bajo la Licencia MIT.
