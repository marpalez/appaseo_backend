const { Router } = require("express");
const router      = Router();
//const mysql       = require("mysql");

const db = require("../connection");


router.post("/addValoracion", (req, res) => {
    const { emailCuidador, emailValorador, nombreValorador, puntuacion, descripcion } = req.body;

    if (!emailCuidador || !emailValorador || !puntuacion)
        return res.status(400).json({ exito: false, mensaje: "Faltan campos obligatorios." });

    const nuevaValoracion = {
        emailCuidador:   emailCuidador.toLowerCase(),
        emailValorador:  emailValorador.toLowerCase(),
        nombreValorador: (nombreValorador || "").toLowerCase(),
        puntuacion:      parseInt(puntuacion),
        descripcion:     (descripcion || "").toLowerCase(),
        fecha:           new Date().toLocaleDateString("es-ES")
    };

    db.query("INSERT INTO valoraciones SET ?", nuevaValoracion, (err) => {
        if (err) return res.status(500).json({ exito: false, mensaje: err.message });
        res.json({ exito: true, mensaje: "Valoración añadida correctamente.", valoracion: nuevaValoracion });
    });
});

module.exports = router;
