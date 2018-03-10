var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();
var config = require('../config');

// do some checking here => check the default user profile
// ternary statement => MDN ternary
// var toRender = (config.kidsmode) ? 'kidsAccount' : 'home';

/* GET home page. */
router.get('/', function(req, res, next) {

  connect.query('SELECT * FROM tbl_user', (err, result) => {
    if (err) {
      throw err; console.log(err);
    } else {
      console.log(result);

      res.render('home', {
        // title: 'Mini Cars',
        // message : "A Selection of Minis",
        userData : result
      });
    }
  });

});


module.exports = router;
