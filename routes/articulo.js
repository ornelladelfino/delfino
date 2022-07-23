var express = require('express');
var router = express.Router();

/* GET articulo page. */
router.get('/', function(req, res, next) {
  res.render('la_microficcion');
});

module.exports = router;