# Datos

Este repositorio conserva la estructura para el dataset oficial del gobierno peruano.

## Archivo a descargar

Debe descargarse manualmente desde la fuente oficial:

https://www.datosabiertos.gob.pe/dataset/ni%C3%B1as-ni%C3%B1os-y-adolescentes-atendidos-en-el-servicio-de-acogimiento-residencial-por

## Ubicación sugerida

Coloque el archivo descargado dentro de esta carpeta:

- `data/raw/`

Si el portal entrega un archivo comprimido (`.zip` o `.csv`), descomprímalo o copie el archivo resultante aquí antes de ejecutar la carga de datos.

## Importante

Desde Codespaces no se logró acceder al portal oficial porque responde con un bloqueo HTTP 418/CloudWAF. Por esa razón, este repositorio NO asume ni inventa columnas, nombres ni tipos de datos.

Una vez descargado el archivo real, se debe verificar:

1. nombre exacto del archivo
2. formato (`csv`, `xlsx`, `zip`, etc.)
3. columnas y tipos reales
4. cantidad aproximada de registros
5. claves candidatas, campos de tiempo y relaciones

Luego se actualiza `sql/01_create_tables.sql`, `sql/02_load_data.sql` y la documentación del README con la estructura validada.
