
require('dotenv/config');

var express = require("express");
var app = express();
var bodyParser = require("body-parser");
var mysql = require('mysql');
var path = require("path");

var PORT = process.env.PORT || 8080;

var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : '127.0.0.1',
  user     : 'root',
  password : 'sideHustle$1975',
  database : 'friend_finder'
});
 
connection.connect();

// Sets up the Express app to handle data parsing or URL-encoded parser
// See docs: https://expressjs.com/en/api.html#express.urlencoded
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// // Display all friends from the friends table in json
// app.get('/api/friends', function(req, res){
// 	connection.query('SELECT name FROM students', (error, results, fields) => {
// 	  (error)? res.send(error) : res.json(results);
//     });
// });

// // This will be used to handle incoming survey results. This route will also be used to handle the compatibility logic.
// app.post('/api/friends', function(req, res){
// 	connection.query('SELECT * FROM', [req.body.actor_name],function (error, results, fields) {
// 	  if (error) res.send(error)
// 	  else res.json({
// 	  	message: 'success'
// 	  });
// 	});
// });

/*
The below points our server to a series of "route" files, which we require – 
routes give our server a "map" of how to respond when users visit or request data from various URLs.
We create a new router instance in the htmlroutes and export 'module.exports = function(app)' that instance to here, then do app.use
*/

require("./routing/htmlRoutes")(app); // must be first for static line
require("./routing/apiRoutes")(app);

// PORT requires config (above at top) for .env
console.log("flag output", process.env.PORT);
app.listen(PORT, function() { // Listener 'starts' the server
    console.log("App listening on PORT: " + PORT);
});