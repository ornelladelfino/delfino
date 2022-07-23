var express = require('express');
var router = express.Router();

/* GET ventanas page. */
router.get('/', function(req, res, next) {
  res.render('ventanas');
});

module.exports = router;