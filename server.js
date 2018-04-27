var express = require('express');
var server = express();

var port = 8080;

server.get("/", (req, res, next) => {
    res.status(200).send({
        "message": "Welcome to Node api running on a docker image"
    });
});

server.listen(port, () => {
    console.log("Server listening on port " + port);
});