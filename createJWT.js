require('dotenv').config()
const jwt = require('jsonwebtoken');

const token = jwt.sign({ 
    email: 'bagus@gmail.com',
    name: 'Bagus Facsi aginsa'
}, process.env.JWT_SECRET);

console.log(token)