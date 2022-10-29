require('dotenv').config()

const fastify = require('fastify')
const app = fastify()

const pino = require('pino')
const logger = pino(pino.destination({ sync: false }))

const jwt = require('jsonwebtoken')

const mysql = require('mysql2')

const connection  = mysql.createPool({
    connectionLimit : 10,
    host            : process.env.MYSQL_HOST,
    user            : process.env.MYSQL_USER,
    password        : process.env.MYSQL_PASS,
    database        : process.env.MYSQL_DB
}).promise();

const Redis = require('ioredis')

const redis = new Redis({
    password: process.env.REDIS_PASS
})

app.get('/products', async (req, res) => {
    const bearerToken = req.headers.authorization?.split(' ')?.[1]
    if (!bearerToken) return res.status(401).send({ message: "please login first"})
    
    const decoded = jwt.verify(bearerToken, process.env.JWT_SECRET);
    if (!decoded) return res.status(403).send({ message: "please check your token"})

    const rawCache = await redis.get("all-products")
    if (rawCache) {
        let cache = JSON.parse(rawCache)
        logger.info(`User ${decoded.name} query ${cache.length} products from cache`)

        return res.status(200).send({
            message: `Get ${cache.length} products from cache success`,
            data: cache
        })
    }

    let query = 'SELECT * FROM products'
    let [results] = await connection.query(query)

    logger.info(`User ${decoded.name} query ${results.length} products`)

    res.status(200).send({
        message: `Get ${results.length} products success`,
        data: results
    })

    redis.setex("all-products", 60, JSON.stringify(results))
})

app.listen({ port: 3000})