var express = require('express');
var router = express.Router();
var app = require('express')();
var http = require('http').Server(app);
var io = require('socket.io')(http);
var db = require('../db/queries');

app.get('/chat', function(req, res){
  res.sendFile(__dirname + '/chat.html');
});





io.on('connection', function(socket){
  socket.on('chat', function(msg){
    io.emit('chat', msg);
  });
});

http.listen(7000, function(){
	console.log('listening on *:7000');
});

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/trivia', function(req, res, next){
	res.render('trivia')
});


router.get('/people/:id', db.getOneCharacter);
router.get('/people', db.getAllCharacters);
router.get('/notes', db.getAllContacts);
router.post('/notes', db.createContact);
router.delete('/notes/:id', db.removeContact)
router.patch('/notes/:id', db.updateContact)

module.exports = router;
