var express = require('express');
var router = express.Router();
var articulosModel = require('../../models/articulosModel')

router.get('/', async function(req, res, next) {
   var articulos = await articulosModel.getArticulos();
    res.render('admin/articulos', {
        articulos,
        layout:'admin/layout'
        }); 
    
})



module.exports = router;

