
var express = require('express');
var _ = require('lodash');
var router = express.Router();
var dr = require('../models/dr');

router.get('/char', function(req, res, next) {

  var name = req.query.name;
  var birthday = req.query.birthday;
  var game = req.query.game;
  var image = req.query.image;
  var talent = req.query.talent;
  var quote = req.query.quote;
  var likes = req.query.likes;
  var dislikes = req.query.dislikes;

  router.get('/char/:id', function(req, res, next) {
  var id = req.params.id;

  res.render('name', {
    dr: dr[id-1]
  });
});
  });
  
 



module.exports = router;