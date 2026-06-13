const { Router } = require("express");
const router      = Router();
//const mysql       = require("mysql");

const db = require("../connection");



function obtenerUsuarioCompleto(email, callback) {
    db.query("SELECT * FROM usuarios WHERE email = ?", [email], (err, rows) => {
        if (err || !rows.length) return callback(err, null);
        const usuario = rows[0];
        usuario.esCuidador = usuario.esCuidador === 1;
        db.query("SELECT * FROM valoraciones WHERE emailCuidador = ?", [email], (err, vals) => {
            if (err) return callback(err, null);
            usuario.valoraciones = vals || [];
            usuario.mascotas     = [];
            callback(null, usuario);
        });
    });
}

router.post("/login", (req, res) => {
    const { email, contrasena } = req.body;
    if (!email || !contrasena)
        return res.status(400).json({ exito: false, mensaje: "Faltan campos obligatorios." });

    db.query("SELECT * FROM usuarios WHERE email = ?", [email.toLowerCase()], (err, rows) => {
        if (err)          return res.status(500).json({ exito: false, mensaje: err.message });
        if (!rows.length) return res.status(404).json({ exito: false, mensaje: "The email is not registered" });

        const usuario = rows[0];
        if (usuario.contrasena !== contrasena)
            return res.status(401).json({ exito: false, mensaje: "Incorrect password" });

        obtenerUsuarioCompleto(email.toLowerCase(), (err, usuarioCompleto) => {
            if (err) return res.status(500).json({ exito: false, mensaje: err.message });
            res.json({ exito: true, mensaje: "Login correcto.", usuario: usuarioCompleto });
        });
    });
});

router.post("/registro", (req, res) => {
    const { email, contrasena, nombre, poblacion } = req.body;
    if (!email || !contrasena || !nombre || !poblacion)
        return res.status(400).json({ exito: false, mensaje: "Required fields are missing" });

    db.query("SELECT id FROM usuarios WHERE email = ?", [email.toLowerCase()], (err, rows) => {
        if (err)         return res.status(500).json({ exito: false, mensaje: err.message });
        if (rows.length) return res.status(409).json({ exito: false, mensaje: "The email is already registered" });

        const nuevoUsuario = {
            email:                  email.toLowerCase(),
            contrasena:             contrasena,
            nombre:                 nombre.toLowerCase(),
            poblacion:              poblacion.toLowerCase(),
            descripcion:            "",
            rutaFotoPerfil:         "",
            esCuidador:             0,
            telefono:               "",
            fechaRegistro:          new Date().toLocaleDateString("es-ES"),
            puedeEnviarFotos:       "",
            admiteAnimalesCuidados: "",
            esFumador:              ""
        };

        db.query("INSERT INTO usuarios SET ?", nuevoUsuario, (err) => {
            if (err) return res.status(500).json({ exito: false, mensaje: err.message });
            nuevoUsuario.esCuidador   = false;
            nuevoUsuario.valoraciones = [];
            nuevoUsuario.mascotas     = [];
            res.json({ exito: true, mensaje: "User successfully registered", usuario: nuevoUsuario });
        });
    });
});

router.post("/recuperarContrasena", (req, res) => {
    const { email, nuevaContrasena } = req.body;
    if (!email || !nuevaContrasena)
        return res.status(400).json({ exito: false, mensaje: "Required fields are missing" });

    db.query("UPDATE usuarios SET contrasena = ? WHERE email = ?",
        [nuevaContrasena, email.toLowerCase()], (err) => {
        if (err) return res.status(500).json({ exito: false, mensaje: err.message });
        res.json({ exito: true, mensaje: "Password successfully updated" });
    });
});

router.get("/listarUsuarios", (req, res) => {
    db.query("SELECT * FROM usuarios", (err, rows) => {
        if (err) return res.status(500).json({ exito: false, mensaje: err.message });

        db.query("SELECT * FROM valoraciones", (err, vals) => {
            if (err) return res.status(500).json({ exito: false, mensaje: err.message });

            const usuarios = rows.map(u => ({
                ...u,
                esCuidador:   u.esCuidador === 1,
                mascotas:     [],
                valoraciones: vals.filter(v => v.emailCuidador === u.email)
            }));

            res.json({ exito: true, usuarios });
        });
    });
});

router.get("/usuarioPorEmail/:email", (req, res) => {
    obtenerUsuarioCompleto(req.params.email.toLowerCase(), (err, usuario) => {
        if (err)      return res.status(500).json({ exito: false, mensaje: err.message });
        if (!usuario) return res.status(404).json({ exito: false, mensaje: "User not found" });
        res.json({ exito: true, usuario });
    });
});

router.post("/actualizarUsuario", (req, res) => {
    const { email, ...campos } = req.body;
    if (!email) return res.status(400).json({ exito: false, mensaje: "Missing email" });

    if (campos.esCuidador !== undefined)
        campos.esCuidador = campos.esCuidador === "true" || campos.esCuidador === true ? 1 : 0;

    db.query("UPDATE usuarios SET ? WHERE email = ?", [campos, email.toLowerCase()], (err) => {
        if (err) return res.status(500).json({ exito: false, mensaje: err.message });

        obtenerUsuarioCompleto(email.toLowerCase(), (err, usuario) => {
            if (err) return res.status(500).json({ exito: false, mensaje: err.message });
            res.json({ exito: true, mensaje: "User successfully updated", usuario });
        });
    });
});

module.exports = router;
