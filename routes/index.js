var express = require('express');
var router = express.Router();
var config = require('../config');

// do some checking here => check the default user profile
// ternary statement => MDN ternary
var toRender = (config.kidsmode) ? 'main_kids' : 'home';

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('home', { //esto va a render el master page main.handlebars
    title: 'Done yet?',
    message : "handlebars is awesome",
    mainpage : true,
    cms : false,
    kidsmode : config.kidsmode
  });
});

//cuando pongan localhost:3000/cms va a hacer esta funcion. The router is giving the direction where to go. the path.
router.get('/cms', (req, res) => { //req for request and res for response
  console.log('hit the cms route');
  res.render('cmsForm', {
    cms : true,
    mainpage : false
  });
});

module.exports = router;
