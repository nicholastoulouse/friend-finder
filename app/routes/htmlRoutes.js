// ===============================================================================
// DEPENDENCIES
// We need to include the path package to get the correct file path for our html
// ===============================================================================
var express = require('express');
//var app = express();
var path = require('path');

module.exports = function(app) {

    // server the static assets in the public folder when they hit
    // app.use(express.static(path.join(__dirname, '/../client/dist')));
    // app.use(favicon(path.join(__dirname, '../client', 'dist', 'favicon.ico')));
    // const { router } = require('./resources/instagreenRouter');
    // app.use('/instagreen', router);

    app.use(express.static(path.join(__dirname, '../public')));

    app.get('/', function(req, res) { 
        res.sendFile(path.join(__dirname, '../public/home.html'));
    });

    app.get('/survey', function(req, res) { 
        res.sendFile(path.join(__dirname, '../public/survey.html'));
    });

    // app.listen(process.env.PORT, function () {
    //     console.log('htmlRoutes listening on port ' + process.env.PORT + '!');
    // })
};