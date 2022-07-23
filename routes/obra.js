var express = require('express');
var router = express.Router();

/* GET obra page. */
router.get('/', function(req, res, next) {
  res.render('obra', {
    isObra:true
  });
});

module.exports = router;