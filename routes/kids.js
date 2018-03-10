var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', (req, res, next) => {
  connect.query('SELECT * FROM tbl_movies', (err, result) => {
    if (err) {
      throw err; console.log(err);
    } else {
      console.log(result);
  res.render('kids', { 
    title: 'Welcome to the kids Account',
    movie_name : 'hey'
   });
    }
  });
});

module.exports = router;
