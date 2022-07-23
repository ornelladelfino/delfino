var express = require('express');
var router = express.Router();

/* GET foro page. */
router.get('/', function(req, res, next) {
  res.render('foro', {
    isForo:true
  });
});

module.exports = router;