// Do either req.params OR req.body
// multer for file upload functionality
var express = require('express');
var bodyParser = require('body-parser');
var mysql = require('mysql');
var path = require('path');

var friendpool = require("../data/friends.js");

module.exports = function(app) {
    // body parser equivalent
    app.use(express.urlencoded({ extended: true }));
    app.use(express.json());

    var connection = mysql.createConnection({
        host: "127.0.0.1",
        port: 3306,
        user: "root",
        password: "sideHustle$1975",
        database: "friend_finder",
        multipleStatements: true
    });
    connection.connect();

    // app.get('/', function(req, res) { 
    //     res.sendFile(path.join(__dirname, '../public/home.html'));
    // });

    // PART I: INITIAL FRIEND DATA FROM JSON FILE; Display all friends from the friends table in json
    // app.get('/api/friends', function(req, res) {
    //     if (!req.body) return res.sendStatus(400);
    //         console.log("in");
    //     //res.json(path.join(__dirname, '../data/friends.js'));
    //     res.json(friendpool);
    // });

    // PART II: FRIEND DATA FROM DATABASE; Display all friends from the friends table in json
    app.get('/api/friends', function(req, res){
        var friendPoolCount = 0;
        connection.query('SELECT COUNT(id) from students', (error, numStudents, fields) => {
            friendPoolCount = numStudents[0]['COUNT(id)'];
        });
        connection.query('SELECT id, name FROM students', (error, allpossiblefriends, fields) => {
            if (!req.body) return res.sendStatus(400);
            (error)? res.send(error) : res.json({...allpossiblefriends, people: friendPoolCount});
        });
    });

    // This will be used to handle incoming survey results. This route will also be used to handle the compatibility logic.
    // curl -X POST http://localhost:3000/api/friends
    app.post('/api/friends', function(req, res) {

        // Take the students data, write it to the database, then perform the match algorithm for most compatible friend(s)
        if (!req.body) return res.sendStatus(400);
        
        (function (){
            // DATA: {0: 4, 1: 4, 2: 2, 3: 3, 4: 4, 5: 4, 6: 3, 7: 2, 8: 3, 9: 5, name: "John Smith", picURL: ".jsmith.jpg"}
            var avatar = "http://lorempixel.com/249/325/people/"
            var pic = (req.body.picURL)? req.body.picURL : avatar;
            var friendSeeker = {
                "name": req.body.name,
                "picURL": pic,
                "choices": [
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
            var answrArr = friendSeeker.choices;
            console.log("friend seeker: ", JSON.stringify(friendSeeker));
            console.log("mySQL array for query ", [friendSeeker.name, friendSeeker.picURL, ...friendSeeker.choices]);
            // WRITE SCORES TO PERSISTANCE
            connection.query('INSERT INTO students (name, picture_link) VALUES(?, ?); INSERT INTO scores (student_id, question_id, answerchoice_id) VALUES (LAST_INSERT_ID(),1,?), (LAST_INSERT_ID(),2,?), (LAST_INSERT_ID(),3,?), (LAST_INSERT_ID(),4,?), (LAST_INSERT_ID(),5,?), (LAST_INSERT_ID(),6,?), (LAST_INSERT_ID(),7,?), (LAST_INSERT_ID(),8,?), (LAST_INSERT_ID(),9,?), (LAST_INSERT_ID(),10,?)', [friendSeeker.name, friendSeeker.picURL, ...friendSeeker.choices], (error, seeker_insert_id) => {
                if (error) console.log(error); // LAST_INSERT_ID()
                else {
                    var friendSeekerId = seeker_insert_id[0].insertId;
                    console.log('friendSeekerId ', friendSeekerId);
                    findMostCompatible(friendSeekerId);
                }
            });
        })();

        function findMostCompatible(friendSeekerId){

            connection.query("SELECT * FROM (SELECT SUM(score_diff) AS score_diff_sum, me, them FROM (SELECT my_scores.student_id AS me, their_scores.student_id AS them, ABS(my_scores.answerchoice_id - their_scores.answerchoice_id) AS score_diff FROM scores AS my_scores LEFT JOIN (select answerchoice_id, student_id, question_id from scores) their_scores ON their_scores.question_id = my_scores.question_id WHERE ? != their_scores.student_id AND my_scores.student_id = ?) intermediary GROUP BY them) stuff ORDER BY score_diff_sum ASC LIMIT 1;", [friendSeekerId,friendSeekerId], (error, [match], fields) => {
                if (error) console.log(error); 
                else {
                    console.log("match results: ", match.them);
                    connection.query("SELECT * FROM students where id=?;", [match.them], (err, [person], fields) => {
                        if (err) console.log(error); 
                        else {
                            res.json({name: person.name, picURL: person.picture_link});
                        }
                    });
                }
            });
           setTimeout(function(){ connection.end()}, 10);
        }
})
}