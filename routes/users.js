var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', (req, res) => {
  // connect.query('SELECT * FROM tbl_user', (err, result) => {
  //   if (err) {
  //     throw err; console.log(err);
  //   } else {
  //     console.log(result);

  //     res.render('users', {
  //       // title: 'Mini Cars',
  //       // message : "A Selection of Minis",
  //       userData : result
  //     });
  //   }
  // });
});

module.exports = router;
