const mysql = require('mysql2');

const pool = mysql.createPool({
    host:     process.env.MYSQLHOST,
    user:     process.env.MYSQLUSER,
    password: process.env.MYSQLPASSWORD,
    database: process.env.MYSQLDATABASE,
    port:     process.env.MYSQLPORT || 3306,
    waitForConnections: true,
    connectionLimit: 5,
    queueLimit: 0
});

pool.query('SELECT 1', (err) => {
    if (err) console.error('[MySQL] Error de conexión:', err.message);
    else console.log('[MySQL] Conexión establecida.');
});

module.exports = pool;