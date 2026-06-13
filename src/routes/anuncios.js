const { Router } = require("express");
const router      = Router();
//const mysql       = require("mysql");
const { v4: uuidv4 } = require("uuid");

const db = require("../connection");



router.post("/publicarAnuncio", (req, res) => {
    const { emailCuidador, nombreCuidador, poblacion, tiposMascota,
            cantidadAnimales, precioPorDia, descripcion, fechaInicio, fechaFin } = req.body;

    if (!emailCuidador || !nombreCuidador || !poblacion || !tiposMascota || !fechaInicio || !fechaFin)
        return res.status(400).json({ exito: false, mensaje: "Required fields are missing" });

    const nuevoAnuncio = {
        id:               uuidv4(),
        emailCuidador:    emailCuidador.toLowerCase(),
        nombreCuidador:   nombreCuidador.toLowerCase(),
        poblacion:        poblacion.toLowerCase(),
        tiposMascota:     Array.isArray(tiposMascota) ? tiposMascota.join(",") : tiposMascota,
        cantidadAnimales: parseInt(cantidadAnimales) || 0,
        precioPorDia:     parseFloat(precioPorDia) || 0,
        descripcion:      (descripcion || "").toLowerCase(),
        fechaInicio,
        fechaFin,
        fechaPublicacion: new Date().toLocaleDateString("es-ES"),
        activo:           1
    };

    db.query("INSERT INTO anuncios SET ?", nuevoAnuncio, (err) => {
        if (err) return res.status(500).json({ exito: false, mensaje: err.message });
        nuevoAnuncio.tiposMascota = nuevoAnuncio.tiposMascota.split(",");
        nuevoAnuncio.activo       = true;
        res.json({ exito: true, mensaje: "Pet care request published", anuncio: nuevoAnuncio });
    });
});

router.get("/listarAnuncios", (req, res) => {
    db.query("SELECT * FROM anuncios WHERE activo = 1", (err, rows) => {
        if (err) return res.status(500).json({ exito: false, mensaje: err.message });

        const anuncios = rows.map(a => ({
            ...a,
            tiposMascota: a.tiposMascota ? a.tiposMascota.split(",") : [],
            activo:       a.activo === 1
        }));

        res.json({ exito: true, anuncios });
    });
});

router.delete("/eliminarAnuncio/:id", (req, res) => {
    db.query("UPDATE anuncios SET activo = 0 WHERE id = ?", [req.params.id], (err) => {
        if (err) return res.status(500).json({ exito: false, mensaje: err.message });
        res.json({ exito: true, mensaje: "Pet care request deleted" });
    });
});

module.exports = router;
