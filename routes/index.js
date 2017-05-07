var express = require('express');
var router = express.Router();
var db = require('../db/queries')

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
