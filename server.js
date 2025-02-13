require('dotenv').config();
const express = require('express');
const mysql = require('mysql');
const cors = require('cors');
const bodyParser = require('body-parser');

const app = express();
app.use(cors());
app.use(bodyParser.json());

const db = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME
});

db.connect(err => {
    if (err) {
        console.error('Error conectando a la BD:', err);
        return;
    }
    console.log('Conectado a la base de datos');
});
app.get('/status', (req, res) => {
    db.ping(err => {
        if (err) {
            res.json({ message: "Error en la conexión a la base de datos" });
        } else {
            res.json({ message: "Conexión a la base de datos exitosa" });
        }
    });
});


app.listen(3000, () => console.log('Servidor en http://localhost:3000'));