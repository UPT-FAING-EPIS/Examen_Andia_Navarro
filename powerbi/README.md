# Power BI

Este documento describe el diseño del reporte esperado para el proyecto BI, sin inventar columnas del dataset.

## Requerimiento de acceso a la base de datos

1. En Power BI Desktop, seleccionar `Obtener datos`.
2. Elegir `PostgreSQL`.
3. Completar `Servidor`, `Base de datos`, `Puerto` y credenciales.
4. Seleccionar `Cargar` o `Transformar datos`.
5. En el editor de consultas, revisar columnas reales y aplicar tipos correctos.

## Modelo recomendado

- Conectar a la base PostgreSQL creada con Terraform + Liquibase.
- Importar la tabla de staging `raw_dataset` o la vista final que se genere después de normalizar los datos reales.
- Si el dataset presenta campos administrativos, geográficos o temporales, modelarlos como dimensiones y medidas.
- Mantener el análisis aligned con los nombres exactos del archivo descargado.

## Páginas sugeridas

### Dashboard 1: Resumen general

Objetivo: total de atendidos/registros, distribución principal por categoría disponible, evolución por año/fecha si existe campo temporal y KPI básicos.

Visuales sugeridos:

- KPI card: total de registros
- KPI card: total por categoría principal
- Gráfico de barras: distribución por categoría disponible
- Línea o columna: evolución temporal por año/mes, si existe
- Filtro: año o periodo temporal disponible

### Dashboard 2: Análisis

Objetivo: comparar por ubicación/geografía si existe, por categoría disponible y revisar patrones generales.

Visuales sugeridos:

- Mapa o gráfico de barras por ubicación/geografía, si existe
- Gráfico de barras por categoría
- Gráfico de dispersión o combinación para analizar relaciones semánticas
- Filtro: ubicación, categoría o periodo real presente en el dataset

### Página 3: Reporte detallado

Objetivo: mostrar el listado completo del dataset en formato tabla.

Visuales sugeridos:

- Tabla con los principales campos reales del dataset
- Filtro: categoría, ubicación, año o cualquier campo de dimensión valida

## Filtro mínimo requerido

Se debe crear al menos un filtro de segmentación, preferentemente sobre:

- año/periodo
- categoría principal
- ubicación/geografía
- tipo de atención, si existe en el dataset

## Ubicación del archivo PBIX

Una vez se descargue y se cree el reporte final, se recomienda dejarlo en esta carpeta:

- `powerbi/` 

Ejemplo:

- `powerbi/reporte_acogimiento_residencial.pbix`

No se agrega un `.pbix` en este repositorio porque requiere abrir Power BI Desktop y publicarlo desde una cuenta autorizada.
