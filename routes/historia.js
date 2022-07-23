var express = require('express');
var router = express.Router();

/* GET historia page. */
router.get('/', function(req, res, next) {
  res.render('historia');
});

module.exports = router;