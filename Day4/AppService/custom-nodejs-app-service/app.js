var express = require('express');
var app = express();

app.get('/', ( req, res, next ) => {
   res.json({"message": "Hello NodeJS App Service !" });	
});

app.listen(8080, () => {
   console.log("Server is running at port 8080");
});
