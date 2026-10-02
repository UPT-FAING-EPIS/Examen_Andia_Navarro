-- SQL para la creación inicial de la capa de staging del dataset.
-- El dataset oficial no se pudo validar automáticamente desde Codespaces porque el portal
-- de Datos Abiertos responde con bloqueo HTTP 418/CloudWAF. Por eso no se inventan columnas.
-- Una vez descargado el archivo real, se debe verificar la estructura exacta y ajustar esta definición.

CREATE TABLE IF NOT EXISTS raw_dataset (
    id BIGSERIAL PRIMARY KEY,
    raw_line TEXT NOT NULL,
    loaded_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT chk_raw_dataset_line_not_empty CHECK (length(trim(raw_line)) > 0)
);

COMMENT ON TABLE raw_dataset IS 'Carga cruda del dataset oficial para análisis BI. Cada fila corresponde a una línea del archivo fuente sin normalizar ni inventar columnas.';
COMMENT ON COLUMN raw_dataset.raw_line IS 'Registro original del archivo fuente, sin transformar.';
COMMENT ON COLUMN raw_dataset.loaded_at IS 'Fecha y hora de carga del archivo en PostgreSQL.';

CREATE INDEX IF NOT EXISTS idx_raw_dataset_loaded_at
    ON raw_dataset (loaded_at);
