var promise = require('bluebird');
var options = { promiseLib: promise };

var pgp = require('pg-promise')(options);
var connString = 'postgress://clandestine1@localhost:5432/posts_db';

var db = pgp(process.env.DATABASE_URL || connString);

getOneCharacter = (req,res,next) => {
  var id = req.params.id;
  console.log(id);
  db.one('SELECT * FROM posts WHERE id = $1', id)
    .then(function(data){
      res.status(200)
      .json({
        status: 'success',
        data: data
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
    .render({
      status: 'success',
      data: data    });
  })
  .catch(function(err){
    return next(err);
  });

};

updateCharacter = (req, res, next) => {
console.log(req.body)
  db.none('update notes set post=$1 where id=$2',
 [req.body.first, parseInt(req.params.id)])
  .then(function() {
    res.status(200)
    })
}

  createCharacter = (req, res, next) => {
  console.log(req.body)
  db.none('insert into notes(name, game, post)' +
      'values(${name}, ${game}, ${post})',
    req.body)
    .catch(function (err) {
       return next(err);
     });
}

 getAllCharacters = (req, res, next) => {
  db.any('select * from notes')
  .then(function(data){
    console.log(data)
    res.render( 'notes', { data:data })
    })
}

  removeCharacter = (req, res, next) => {
  console.log("inside removeCharacter", req.params.id)
  let cID = parseInt(req.params.id)
  db.result('delete from notes where id = $1', cID)
}

module.exports = {
  getOneCharacter: getOneCharacter,
  getAllCharacters: getAllCharacters,
  createCharacter: createCharacter,
  getAllCharacters: getAllCharacters,
  removeCharacter: removeCharacter,
  updateCharacter: updateCharacter
}