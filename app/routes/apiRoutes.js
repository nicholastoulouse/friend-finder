// Do either req.params OR req.body
// multer for file upload functionality
var path = require('path');
var bodyParser = require('body-parser');
var express = require('express');
var friendpool = require("../data/friends.js");
console.log(friendpool);

module.exports = function(app) {

    // var connection = mysql.createConnection({
    //     host: "127.0.0.1",
    //     port: 3306,
    //     user: "root",
    //     password: "helloMySQL",
    //     database: "friend_finder"
    // });

    // app.get('/', function(req, res) { 
    //     res.sendFile(path.join(__dirname, '../public/home.html'));
    // });

    app.get('/api/friends', function(req, res) {
        if (!req.body) return res.sendStatus(400);
            console.log("in");
        //res.json(path.join(__dirname, '../data/friends.js'));
        res.json(friendpool);
    });

    app.post('/api/friends', function(req, res) {
        
        if (!req.body) return res.sendStatus(400);

        (function (){
            // put results of survey fields in a new friend object
            var pic = (req.body.photo)? req.body.photo : "http://lorempixel.com/249/325/people/";
            var user = {
                "name": req.body.name,
                "photo": pic,
                "scores": [
                    Number(req.body['0']), 
                    Number(req.body['1']), 
                    Number(req.body['2']), 
                    Number(req.body['3']), 
                    Number(req.body['4']), 
                    Number(req.body['5']), 
                    Number(req.body['6']), 
                    Number(req.body['7']), 
                    Number(req.body['8']), 
                    Number(req.body['9'])]
            };
            var answrArr = user.scores;
            console.log("amical answers", answrArr);
            // WRITE SCORES TO PERSISTANCE
            displayCompatibilty(answrArr);
        })();

        function sub(personArr, surveyArr) {
            var sumsofdifferences = 0;
            for (var i = 0; i < personArr.length; i++){
                sumsofdifferences += Math.abs(personArr[i] - surveyArr[i]);
            }
            return sumsofdifferences;
        }

        function displayCompatibilty(answrArr){
            var differences = [];
            friendpool.forEach(person => {
                console.log("scores ", person.scores);
                let diff = sub(person.scores, answrArr);
                differences.push(diff);
            });
            // find the smallest sumDifference and return that person to survey where you will display it in a modal
            console.log(differences);
            var smallest = differences[0];
            var idx = 0;
            for (var i = 1; i < differences.length; i++){
                if (differences[i] < smallest){
                    smallest = differences[i];
                    idx = i;
                }
            }
            console.log("most compatible friend ", friendpool[idx]);
            res.send(friendpool[idx]);
        }
    });
};