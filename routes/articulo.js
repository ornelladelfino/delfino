var express = require('express');
var router = express.Router();
var articulosModel = require('../models/articulosModel')
/* GET articulo page. */

router.get('/:id', async function(req, res, next) {
  var id = req.params.id;
  var articulo = await articulosModel.getArticuloByID(id);
  res.render('articulo', {
    articulo,
    isForo: true
  });
});

module.exports = router;
