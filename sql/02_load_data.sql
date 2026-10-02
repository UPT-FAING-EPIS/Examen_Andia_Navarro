-- Script de carga del dataset.
-- Este proyecto no inventa columnas ni tipos. El archivo real debe descargarse manualmente
-- desde la fuente oficial y colocarse en la carpeta data/raw/ antes de ejecutar el proceso.

\echo '====================================================='
\echo 'Se espera un archivo real dentro de data/raw/'
\echo 'Ejemplo: data/raw/archivo_descargado.csv'
\echo '====================================================='

-- reemplazar el nombre real del archivo descargado
-- ejemplo:
-- \copy raw_dataset(raw_line) FROM 'data/raw/archivo_descargado.csv' WITH (FORMAT text, DELIMITER E'\n');

\echo 'La línea anterior debe editarse con el nombre exacto del archivo descargado.'
\echo 'No se ejecuta una carga automática porque la fuente original no fue accesible desde Codespaces.'
