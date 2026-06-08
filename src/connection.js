const mysql = require('mysql');

const db = mysql.createConnection({
    host:     process.env.DB_HOST     || 'sql7.freesqldatabase.com',
    user:     process.env.DB_USER     || 'sql7824067',
    password: process.env.DB_PASSWORD || 'dgDRtLqi5r',
    database: process.env.DB_NAME     || 'sql7824067',
    port:     process.env.DB_PORT     || 3306
});

db.connect((error) => {
    if (error) console.error('[MySQL] Error de conexión:', error.message);
    else console.log('[MySQL] Conexión establecida.');
});

module.exports = db;