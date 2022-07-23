var express = require('express');
var router = express.Router();

/* GET fragmentos page. */
router.get('/', function(req, res, next) {
  res.render('fragmentos');
});

module.exports = router;