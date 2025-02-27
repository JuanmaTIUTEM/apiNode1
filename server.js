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


app.get('/persons', ( req , res ) => {
    db.query('SELECT * FROM catpersons',(err , results) =>{
        if(err) return res.status(500).send(err);
        res.json(results);
    });
});

app.post('/users', ( req , res ) => {
    const { personId, user, pass, userType, bActive } = req.body;
    db.query('INSERT INTO users (personId, user, pass, userType, bActive) VALUES (?, ?, ?, ?, ?)',
    [personId, user, pass, userType, bActive], (err, result) => {
        if (err) return res.status(500).send(err);
        res.json({ message: 'Usuario agregado', userId: result.insertId });
    });
});


app.listen(3000, () => console.log('Servidor en http://localhost:3000'));