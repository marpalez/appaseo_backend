-- APPASEO — Esquema de base de datos
-- Tablas requeridas por src/routes/usuarios.js, anuncios.js y valoraciones.js

CREATE TABLE IF NOT EXISTS usuarios (
    email                  VARCHAR(255) NOT NULL,
    contrasena             VARCHAR(255) NOT NULL,
    nombre                 VARCHAR(100) NOT NULL,
    poblacion              VARCHAR(100) NOT NULL,
    descripcion            TEXT,
    rutaFotoPerfil         VARCHAR(255) DEFAULT '',
    esCuidador             TINYINT(1)   DEFAULT 0,
    telefono               VARCHAR(30)  DEFAULT '',
    fechaRegistro          VARCHAR(20)  DEFAULT '',
    puedeEnviarFotos       VARCHAR(20)  DEFAULT '',
    admiteAnimalesCuidados VARCHAR(20)  DEFAULT '',
    esFumador              VARCHAR(20)  DEFAULT '',
    PRIMARY KEY (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS anuncios (
    id               VARCHAR(36)  NOT NULL,          -- UUID generado por el backend
    emailCuidador    VARCHAR(255) NOT NULL,
    nombreCuidador   VARCHAR(100) NOT NULL,
    poblacion        VARCHAR(100) NOT NULL,
    tiposMascota     VARCHAR(255) DEFAULT '',        -- lista separada por comas
    cantidadAnimales INT          DEFAULT 0,
    precioPorDia     DECIMAL(8,2) DEFAULT 0,
    descripcion      TEXT,
    fechaInicio      VARCHAR(20)  NOT NULL,
    fechaFin         VARCHAR(20)  NOT NULL,
    fechaPublicacion VARCHAR(20)  DEFAULT '',
    activo           TINYINT(1)   DEFAULT 1,
    PRIMARY KEY (id),
    KEY idx_anuncios_activo (activo),
    KEY idx_anuncios_email (emailCuidador)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS valoraciones (
    id              INT          NOT NULL AUTO_INCREMENT,
    emailCuidador   VARCHAR(255) NOT NULL,
    emailValorador  VARCHAR(255) NOT NULL,
    nombreValorador VARCHAR(100) DEFAULT '',
    puntuacion      INT          NOT NULL,
    descripcion     TEXT,
    fecha           VARCHAR(20)  DEFAULT '',
    PRIMARY KEY (id),
    KEY idx_valoraciones_cuidador (emailCuidador)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
