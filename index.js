const express = require('express');
const data = require('./data.js');
const app = express();

const port = 3001;

app.get('/', (req, res) => res.json(data));

app.listen(port, () => console.log(`Example app listening on port ${port}!`))