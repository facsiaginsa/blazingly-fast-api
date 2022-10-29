# How to make your API Server Blazingly Fast!

## Prerequisite

To run these code, you must provide:
1. node v16.15.0
2. npm v8.5.5
3. Mysql Server
4. Redis Server
5. ApacheBench

If you already have those, then create an ``.env`` file on the root folder, and fill this parameter that relevant according to your environment
```js
NODE_ENV=production
MYSQL_HOST=
MYSQL_USER=
MYSQL_PASS=
MYSQL_DB=
JWT_SECRET=
REDIS_PASS=
```

We also provide the databasedump named ``nodeapp.sql`` located on the root folder. Import the dump to your database, and you are ready to go!

## App1

This is the base code used for the experiment.

To run the code, please use this command
```bash
npm install
node app1.js
```

To hit the API server, open new terminal, and then generate a bearer token using this command:
```bash
node createJWT.js
```

You will get new valid bearer token for the app like this:
```bash
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJhZ3VzQGdtYWlsLmNvbSIsIm5hbWUiOiJCYWd1cyBGYWNzaSBhZ2luc2EiLCJpYXQiOjE2NjcwODQ5NjZ9.9-WUYfZX7sPk1v5jD730n7NtR1pLCNKPvA5Un51y4W0
```

Hit the API server using ApacheBench like this
```bash
ab -n 2000 -c 100 -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJhZ3VzQGdtYWlsLmNvbSIsIm5hbWUiOiJCYWd1cyBGYWNzaSBhZ2luc2EiLCJpYXQiOjE2NjcwODQ5NjZ9.9-WUYfZX7sPk1v5jD730n7NtR1pLCNKPvA5Un51y4W0" http://localhost:3000/products
```

## App2

App2 is the code when we do logging optimization by reducing the number of log and using a fast async logging library like ``pino``.

To run the code, please use this command
```bash
npm install
node app2.js
```

To hit the API server, open new terminal, and then generate a bearer token using this command:
```bash
node createJWT.js
```

You will get new valid bearer token for the app like this:
```bash
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJhZ3VzQGdtYWlsLmNvbSIsIm5hbWUiOiJCYWd1cyBGYWNzaSBhZ2luc2EiLCJpYXQiOjE2NjcwODQ5NjZ9.9-WUYfZX7sPk1v5jD730n7NtR1pLCNKPvA5Un51y4W0
```

Hit the API server using ApacheBench like this
```bash
ab -n 2000 -c 100 -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJhZ3VzQGdtYWlsLmNvbSIsIm5hbWUiOiJCYWd1cyBGYWNzaSBhZ2luc2EiLCJpYXQiOjE2NjcwODQ5NjZ9.9-WUYfZX7sPk1v5jD730n7NtR1pLCNKPvA5Un51y4W0" http://localhost:3000/products
```

## App3

App3 is the code when we do framework optimization by switching from ``expressjs`` to ``fastify``.

To run the code, please use this command
```bash
npm install
node app3.js
```

To hit the API server, open new terminal, and then generate a bearer token using this command:
```bash
node createJWT.js
```

You will get new valid bearer token for the app like this:
```bash
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJhZ3VzQGdtYWlsLmNvbSIsIm5hbWUiOiJCYWd1cyBGYWNzaSBhZ2luc2EiLCJpYXQiOjE2NjcwODQ5NjZ9.9-WUYfZX7sPk1v5jD730n7NtR1pLCNKPvA5Un51y4W0
```

Hit the API server using ApacheBench like this
```bash
ab -n 2000 -c 100 -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJhZ3VzQGdtYWlsLmNvbSIsIm5hbWUiOiJCYWd1cyBGYWNzaSBhZ2luc2EiLCJpYXQiOjE2NjcwODQ5NjZ9.9-WUYfZX7sPk1v5jD730n7NtR1pLCNKPvA5Un51y4W0" http://localhost:3000/products
```

## App4

App4 is the code when we do cache optimization by add ``redis`` as cache server using ``ioredis`` library.

To run the code, please use this command
```bash
npm install
node app4.js
```

To hit the API server, open new terminal, and then generate a bearer token using this command:
```bash
node createJWT.js
```

You will get new valid bearer token for the app like this:
```bash
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJhZ3VzQGdtYWlsLmNvbSIsIm5hbWUiOiJCYWd1cyBGYWNzaSBhZ2luc2EiLCJpYXQiOjE2NjcwODQ5NjZ9.9-WUYfZX7sPk1v5jD730n7NtR1pLCNKPvA5Un51y4W0
```

Hit the API server using ApacheBench like this
```bash
ab -n 2000 -c 100 -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJhZ3VzQGdtYWlsLmNvbSIsIm5hbWUiOiJCYWd1cyBGYWNzaSBhZ2luc2EiLCJpYXQiOjE2NjcwODQ5NjZ9.9-WUYfZX7sPk1v5jD730n7NtR1pLCNKPvA5Un51y4W0" http://localhost:3000/products
```

## App5

App5 is the code when we do 3rd party library optimization by switching ``jsonwebtoken`` with ``fast-jwt``, ``JSON.stringify`` with ``fast-json-stringify``, and ``JSON.parse`` with ``fast-json-parse``.

To run the code, please use this command
```bash
npm install
node app5.js
```

To hit the API server, open new terminal, and then generate a bearer token using this command:
```bash
node createJWT.js
```

You will get new valid bearer token for the app like this:
```bash
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJhZ3VzQGdtYWlsLmNvbSIsIm5hbWUiOiJCYWd1cyBGYWNzaSBhZ2luc2EiLCJpYXQiOjE2NjcwODQ5NjZ9.9-WUYfZX7sPk1v5jD730n7NtR1pLCNKPvA5Un51y4W0
```

Hit the API server using ApacheBench like this
```bash
ab -n 2000 -c 100 -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJhZ3VzQGdtYWlsLmNvbSIsIm5hbWUiOiJCYWd1cyBGYWNzaSBhZ2luc2EiLCJpYXQiOjE2NjcwODQ5NjZ9.9-WUYfZX7sPk1v5jD730n7NtR1pLCNKPvA5Un51y4W0" http://localhost:3000/products
```