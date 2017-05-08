var express = require('express');
var router = express.Router();
var dr = require('../models/dr');
var db = require('../db/queries');

router.get('/chat', function(req, res, next){
  res.render('chat');
});


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
router.get('/notes', db.getAllCharacters);
router.post('/notes', db.createCharacter);
router.delete('/notes/:id', db.removeCharacter);
router.patch('/notes/:id', db.updateCharacter);

module.exports = router;
