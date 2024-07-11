const http = require('node:http');

const hostname = "0.0.0.0";
const port = 8080;

const server = http.createServer( ( request, response ) => {

	response.statusCode = 200;
	response.setHeader('Content-Type', "text/plain');
	response.end ( "Hello NodeJS Azure App Service !");
});

server.listen( port, hostname, () => {
  console.log("Server running at http://${hostname}:${port}/'};
});
