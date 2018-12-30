// ===============================================================================
// DEPENDENCIES
// We need to include the path package to get the correct file path for our html
// ===============================================================================
var express = require('express');
var app = express();
var path = require('path');



module.exports = function(app) {

    app.use(express.static("public"));

    app.get('/', function(req, res) { 
        res.sendFile(path.join(__dirname, '../public/home.html'));
    });

    app.get('/survey', function(req, res) { 
        res.sendFile(path.join(__dirname, '../public/survey.html'));
    });

    app.listen(8080, function () {
        console.log('htmlRoutes listening on port 8080!');
    })
};