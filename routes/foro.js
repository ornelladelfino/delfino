var express = require('express');
var router = express.Router();
var articulosModel = require('../models/articulosModel'); 

router.get('/', async function(req, res, next) {
  var articulos;
  if(req.query.q === undefined){
      articulos = await articulosModel.getArticulos();
  }else{
      articulos = await articulosModel.buscarArticulos(req.query.q);
  }
   res.render('foro', {
       isForo: true,
       articulos,
       is_search: req.query.q !== undefined,
       q:req.query.q 
   });
   
});
module.exports = router;