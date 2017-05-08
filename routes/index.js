var express = require('express');
var router = express.Router();
var dr = require('../models/dr');
var db = require('../db/queries');

router.get('/chat', function(req, res, next){
  res.render('chat');
});


router.get('/char', function(req, res, next) {
	var jpost = JSON.stringify(dr);
  res.render('char', {dr:jpost});

})


/*module.exports = function(io) {
    var app = require('express');
    var router = app.Router();

    io.on('connection', function(socket) { 
       
    });

    return router;
}

io.on('connection', function(socket){
  socket.on('chat', function(msg){
    io.emit('chat', msg);
  });
});

/*http.listen(4000, function(){
	console.log('listening on *:4000');
});*/

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/trivia', function(req, res, next){
	res.render('trivia')
});

router.get('/people', function(req, res, next){
	res.render('people')
});



router.get('/test/:id', db.getOneCharacter);
router.get('/test', db.getAllCharacters);
router.get('/notes', db.getAllContacts);
router.post('/notes', db.createContact);
router.delete('/notes/:id', db.removeContact)
router.patch('/notes/:id', db.updateContact)

module.exports = router;
