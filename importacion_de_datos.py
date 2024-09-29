import pandas as pd
import sqlite3

# Conexión a la base de datos
conn = sqlite3.connect('cine.db')

# Cargar los datos desde los CSV
peliculas_df = pd.read_csv('peliculas.csv')
reparto_df = pd.read_csv('reparto.csv')

# Insertar los datos en las tablas
peliculas_df.to_sql('peliculas', conn, if_exists='append', index=False)
reparto_df.to_sql('reparto', conn, if_exists='append', index=False)

# Cerrar la conexión
conn.close()
