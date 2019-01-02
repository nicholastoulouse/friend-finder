// require("dotenv").config();
require('dotenv/config');
console.log("flag output", process.env.PORT);
var express = require("express");
var app = express();
var bodyParser = require("body-parser");
var mysql = require('mysql');
var path = require("path");

var PORT = process.env.PORT || 8080;

// Sets up the Express app to handle data parsing
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// ================================================================================
// ROUTER
// The below points our server to a series of "route" files.
// These routes give our server a "map" of how to respond when users visit or request data from various URLs.
// ================================================================================
/* create a new router instance in the htmlroutes and export that instance to here
then do app.use
*/

require("./app/routes/htmlRoutes")(app); // must be first for static line
require("./app/routes/apiRoutes")(app);

// =============================================================================
// LISTENER
// The below code effectively "starts" our server
// =============================================================================

app.listen(PORT, function() { // require config for .env
    console.log("App listening on PORT: " + PORT);
});