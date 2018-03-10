var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
 connect.query('SELECT * FROM tbl_movies', function (err, result) {
      if (err) {
          throw err;
          console.log(err);
      } else {
          console.log(result);
  res.render('adult', { 
    title: 'Welcome to the Adult Account'

});
        }
    });
});


module.exports = router;
