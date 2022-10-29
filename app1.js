require('dotenv').config()

const express = require('express')
const app = express()

const jwt = require('jsonwebtoken')

const mysql = require('mysql2')

const connection  = mysql.createPool({
    connectionLimit : 10,
    host            : process.env.MYSQL_HOST,
    user            : process.env.MYSQL_USER,
    password        : process.env.MYSQL_PASS,
    database        : process.env.MYSQL_DB
}).promise();

app.get('/products', async (req, res) => {
    const bearerToken = req.headers.authorization?.split(' ')?.[1]
    if (!bearerToken) return res.status(401).send({ message: "please login first"})
    
    const decoded = jwt.verify(bearerToken, process.env.JWT_SECRET);
    console.log(`User ${decoded.name} has been verified`)
    if (!decoded) return res.status(403).send({ message: "please check your token"})

    let query = 'SELECT * FROM products'
    let [results] = await connection.query(query)

    console.log(`Query ${results.length} products success`)

    res.status(200).send({
        message: `Get ${results.length} products success`,
        data: results
    })
})

app.listen(3000)