
// Do either req.params OR req.body
// multer for file upload functionality

module.exports = function(app) {
    
    var express = require('express');
    var app = express();
    var path = require('path');
    var bodyParser = require('body-parser');
    // var friendpool = require("../data/friends.js");
    var friendpool = [
    {
        "name":"Ahmed",
        "photo":"https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/6/005/064/1bd/3435aa3.jpg",
        "scores":[
            5,
            1,
            4,
            4,
            5,
            1,
            2,
            5,
            4,
            1
        ]
    },
    {
        "name":"Eli",
        "photo":"https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/6/005/064/1bd/3435aa3.jpg",
        "scores":[
            3,
            1,
            2,
            4,
            4,
            5,
            2,
            3,
            4,
            1
        ]
    },
    {
        "name":"Simon",
        "photo":"https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/6/005/064/1bd/3435aa3.jpg",
        "scores":[
            5,
            2,
            4,
            4,
            5,
            1,
            3,
            5,
            4,
            1
        ]
    },
    {
        "name":"Jay",
        "photo":"https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/6/005/064/1bd/3435aa3.jpg",
        "scores":[
            4,
            1,
            2,
            4,
            4,
            5,
            2,
            3,
            4,
            2
        ]
    },
    {
        "name":"Chris",
        "photo":"https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/6/005/064/1bd/3435aa3.jpg",
        "scores":[
            4,
            2,
            2,
            4,
            4,
            5,
            2,
            2,
            4,
            2
        ]
    },
    {
        "name":"Gregory",
        "photo":"https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/6/005/064/1bd/3435aa3.jpg",
        "scores":[
            4,
            3,
            2,
            1,
            2,
            5,
            3,
            4,
            1,
            2
        ]
    },
    {
        "name":"Joseph",
        "photo":"https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/6/005/064/1bd/3435aa3.jpg",
        "scores":[
            2,
            5,
            4,
            3,
            5,
            1,
            3,
            4,
            2,
            5
        ]
    },
    {
        "name":"Jacques",
        "photo":"https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/6/005/064/1bd/3435aa3.jpg",
        "scores":[
            4,
            3,
            2,
            1,
            5,
            3,
            2,
            1,
            5,
            2
        ]
    },
    {
        "name":"Jeremy",
        "photo":"https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/6/005/064/1bd/3435aa3.jpg",
        "scores":[
            5,
            2,
            1,
            3,
            4,
            2,
            3,
            4,
            5,
            3
        ]
    },
    {
        "name":"Dean",
        "photo":"https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/6/005/064/1bd/3435aa3.jpg",
        "scores":[
            3,
            1,
            2,
            3,
            5,
            2,
            3,
            5,
            4,
            1
        ]
    }
    ];

    app.use(express.static("public"));
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
        res.json(path.join(__dirname, './app/data/friends.js'));
    });

    app.post('/api/friends', function(req, res) {
        
        if (!req.body) return res.sendStatus(400);

        function processAmicalAnswers(){
            var answrArr = user.scores;
            console.log("amical answers", answrArr);
            displayCompatibilty(answrArr);
        }

        // put results of survey fields in a new friend object
        var pic = (req.body.photo)? req.body.photo : "http://lorempixel.com/249/325/people/";
        var user = {
            "name": req.body.name,
            "photo": pic,
            "scores": [req.body.q1, req.body.q2, req.body.q3, req.body.q4, req.body.q5, req.body.q6, req.body.q7, req.body.q8, req.body.q9, req.body.q10]
        };

        processAmicalAnswers();

        function sub(array1, survray) {
            var sumsofdifferences = 0;
            for (var i = 0; i < array1.length; i++){
                sumsofdifferences += Math.abs(array1[i] - survray[i]);
            }
            return sumsofdifferences;
        }

        function displayCompatibilty(answrArr){
            console.log("In display compatibility");
            var differences = [];
    
        }
        
        console.log("Post body: ", req.body);
        res.send(req.body);
        
    

        console.log("List of all people ", friendpool.list);
        // allfriends.list.forEach((f, i) => {
        //     sub(f.scores, user.scores);
        // })

    });

    // app.get('/survey', function(req, res) { 
    //     res.sendFile(path.join(__dirname, '../public/survey.html'));
    // });

    app.listen(8080, function () {
        console.log('apiRoutes listening on port 8080!');
    })

};