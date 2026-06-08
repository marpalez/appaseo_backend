const mysql = require('mysql2');

const db = mysql.createConnection({
    host:     process.env.MYSQLHOST,
    user:     process.env.MYSQLUSER,
    password: process.env.MYSQLPASSWORD,
    database: process.env.MYSQLDATABASE,
    port:     process.env.MYSQLPORT || 3306
});

db.connect((error) => {
    if (error) console.error('[MySQL] Error de conexión:', error.message);
    else console.log('[MySQL] Conexión establecida.');
});

module.exports = db;