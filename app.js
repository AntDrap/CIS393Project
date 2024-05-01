const express = require('express');
const portNumber = 8080;
const mysql = require('mysql');

// Establishes the connection to the database
const con = mysql.createConnection
({
    host:'localhost',
    user:'root',
    database:'bradleygamearchive'
});

const app = express();

app.use(express.static("public"));
app.use(express.urlencoded({extended: false}));

app.listen(portNumber, function () {
    console.log(`App listening on port: ${portNumber}`);
});

// Defines the search command
app.get("/search/:query", function(req, res){

    // Assembles the search query based on the fields and search parameters
    var q = "SELECT * FROM game WHERE ";

    const fields = [
        "game_name",
        "game_description",
        "game_contributors",
    ]

    const searches = req.params.query.split(' ')

    for(let i = 0; i < fields.length; i++)
    {
        for(let j = 0; j < searches.length; j++)
        {
            q += fields[i] + " LIKE '%" + searches[j] + "%' ";

            if(i != fields.length - 1)
            {
                q += "OR ";
            }
            else if(j != searches.length - 1)
            {
                q += "OR ";
            }
        }
    }
    
    con.query(q, (err, results) => {
        if(err) throw err;
        res.send(results);
    })
});

// Defines the full database search that returns all games
app.get("/search", function(req, res){
    const q = "SELECT * FROM game"

    con.query(q, (err, results) => {
        if(err) throw err;
        res.send(results);
    })
});

// Defines the create action that inserts a new game based on the form
app.post("/create", function(req, res){
    const gameEntry = 
    {
        game_name: req.body.game_name, 
        game_release: req.body.game_release, 
        game_link: req.body.game_link, 
        game_videoID: youtube_parser(req.body.game_videoID), 
        game_description: req.body.game_description,
        game_contributors: req.body.game_contributors
    }

    const q = "INSERT INTO game SET ?"

    con.query(q, gameEntry, (err, results) => {
        if(err) throw err
        else
        {
            return res.redirect('/message.html?msg=Game-Successfully-Created');
        }
    })
}); 

// Defines an action that returns the game with the specified ID
app.get("/read/:id", function(req, res){
    const q = "SELECT * FROM game WHERE game_ID = ?"
    con.query(q, req.params.id, (err, results) => {
        if(err) throw err;
        res.send(results);
    })
});

// Defines an action that updates a game 
app.post("/update/:id", function(req, res){
    var q = "UPDATE game SET "
    q += "game_ID = '" +  req.body.game_name + "', ";
    q += "game_release = '" +  req.body.game_release + "', ";
    q += "game_link = '" +  req.body.game_link + "', ";
    q += "game_videoID = '" +  req.body.game_videoID + "', ";
    q += "game_description = '" +  req.body.game_description + "', ";
    q += "game_contributors = '" +  req.body.game_contributors + "' ";
    q += "WHERE game_ID = '" + req.params.id + "' ";

    con.query(q, (err, results) => {
        if(err) throw err
        else
        {
            return res.redirect('/message.html?msg=Game-Successfully-Updated');
        }
    })
}); 

// Defines an action that deletes a game
app.post("/delete/:id", function(req, res){
    var q = "DELETE FROM game WHERE game_ID = ?"

    con.query(q, req.params.id, (err, results) => {
        if(err) throw err
    })
}); 

// Parses a youtube link and extracts the video id
function youtube_parser(url){
    var regExp = /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#&?]*).*/;
    var match = url.match(regExp);
    return (match&&match[7].length==11)? match[7] : "";
}