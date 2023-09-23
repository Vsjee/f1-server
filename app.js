const express = require("express");
const cors = require('cors');

require('dotenv').config();

const app = express();

// Config
app.use(cors())
app.use(express.json())
app.use(express.urlencoded({ extended: false }))

const PORT = process.env.PORT || 9000
app.listen(PORT, () => {
    console.log(`Servidor escuchando en el puerto ${PORT}`);
});