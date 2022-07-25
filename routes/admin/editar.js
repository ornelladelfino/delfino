var express = require('express');
var router = express.Router();


/* GET editar page. */
router.get('/', function(req, res, next) {
  res.render('admin/editar', {
      layout:'admin/layout'
  });
});

module.exports = router;