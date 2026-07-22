
const fs   = require("fs");
const path = require("path");

// Mantener compatibilidad con código que importe guardarEnDisco
function guardarEnDisco() {
    // No-op: los datos ahora se persisten en MySQL
}

const db = { usuarios: [], anuncios: [] };

module.exports = { db, guardarEnDisco };
