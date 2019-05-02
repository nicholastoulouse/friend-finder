// ===============================================================================
// DEPENDENCIES
// We need to include the path package to get the correct file path for our html
// ===============================================================================
var express = require('express');
//var app = express();
var path = require('path');
var fs = require('fs');
var _ = require('lodash');

module.exports = function(app) {
    // server the static assets in the public folder when they hit
    // app.use(express.static(path.join(__dirname, '/../client/dist')));
    // app.use(favicon(path.join(__dirname, '../client', 'dist', 'favicon.ico')));
    // const { router } = require('./resources/instagreenRouter');
    // app.use('/instagreen', router);

    app.use(express.static(path.join(__dirname, '../public')));

    var buffer = '';
   
    app.get('/', function(req, res) {
        setTimeout(function(){
            console.log("In next root route now.");
            res.sendFile(path.join(__dirname, '../public/home.html'));
        }, 10);
    });
    
    app.get('/survey', function(req, res, next) {
        // How do I render the questions and answers in the survey file using mySQL
        res.sendFile(path.join(__dirname, '../public/survey.html'));
    });

    // app.get('/:visitor', function(req, res, next) { 
        
    //     // Loop through data/friends.js flat file of friends and populate an array of users
    //     fs.readFile('./data/friends.json', {encoding: 'utf8'}, function (err, data) {
    //         if (err) throw err;
    //         console.log("In fs dot read FILE");

    //         function findUserScores(user){
    //             JSON.parse(data).forEach(function (friend) {
    //                 if (user === friend){
    //                     res.send(_.startCase( user + "'s answers: " + friend.scores.join(" ") ));
    //                 } else {
    //                     buffer += _.startCase(user + "'s answers: " + friend.scores.join(", ") + "\n\n");
    //                 }
    //             });
    //             process.stdout.write("List of users: " + buffer + "\n\n");
    //             res.send(buffer);
    //         }
    //         if (req.params.visitor)
    //             var user = req.params.visitor.toString();
    //         else
    //             next();  
    //     })
    // });
};