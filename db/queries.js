var promise = require('bluebird');
var options = { promiseLib: promise };

var pgp = require('pg-promise')(options);
var connString = 'postgres://localhost:5432/posts_db';

var db = pgp(connString);

getOneCharacter = (req,res,next) => {
  var id = req.params.id;
  console.log(id);
  db.one('SELECT * FROM posts WHERE id = $1', id)
    .then(function(data){
      res.status(200)
      .json({
        status: 'success',
        data: data,
        message: 'Onecharacter was retrieved'
      });
    })
    .catch(function(err){
      return next(err);
    });
};

getAllCharacters = (req,res,next)  => {

   db.any('SELECT * FROM posts')
  .then(function(data){
    res.status(200)
    .json({
      status: 'success',
      data: data,
      message: 'All characters were retrieved'
    });
  })
  .catch(function(err){
    return next(err);
  });

};

function updateContact(req, res, next) {
console.log(req.body)
  db.none('update notes set post=$1 where id=$2',
 [req.body.first, parseInt(req.params.id)])
  .then(function() {
    res.status(200)
    })
}

function createContact(req, res, next) {
  console.log(req.body)
  db.none('insert into notes(name, game, post)' +
      'values(${name}, ${game}, ${post})',
    req.body)
    .catch(function (err) {
       return next(err);
     });
}

function getAllContacts(req, res, next){
  db.any('select * from notes')
  .then(function(data){
    console.log(data)
    res.render( 'notes', { data:data })
    })
}

function removeContact(req, res, next) {
  console.log("inside removeContact", req.params.id)
  let contactID = parseInt(req.params.id)
  db.result('delete from notes where id = $1', contactID)
}

module.exports = {
  getOneCharacter: getOneCharacter,
  getAllCharacters: getAllCharacters,
  createContact: createContact,
  getAllContacts: getAllContacts,
  removeContact: removeContact,
  updateContact: updateContact
}
