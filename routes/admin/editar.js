var express = require('express');
var router = express.Router();
var articulosModel = require('../../models/articulosModel')


router.get('/', async function(req, res, next) {
    /* var articulos = await articulosModel.getArticulos();  */ 
    var articulos
    if(req.query.q=== undefined){
        articulos = await articulosModel.getArticulos();
    }else{
        articulos = await articulosModel.buscarArticulos(req.query.q);
    }
   
    res.render('admin/editar', {
        layout: 'admin/layout',
        persona: req.session.nombre,
        articulos,
        q:req.query.q,
        is_search:req.query.q !==undefined
    }); 
    
})

router.get('/agregar', (req, res, next) => {
res.render('admin/agregar', {
    layout:'admin/layout'
})
})

router.post('/agregar', async(req, res, next) =>{
    /* console.log(req.body); */
    try {
        if(req.body.titulo != "" && req.body.subtitulo !="" && req.body.resumen !="" && req.body.cuerpo !="" && req.body.autor !="") {
            await articulosModel.insertArticulo(req.body);
            res.redirect('/admin/editar')
        } else {
            res.render('admin/agregar', {
                layout: 'admin/layout',
                error: true,
                message: '*Todos los campos son requeridos'
            })
        }
        
    } catch (error) {
        console.log(error)
        res.render('admin/agregar', {
            layout:'admin/layout',
            error:true,
            message: 'No se carga la novedad'
        })
        
    }
})



router.get('/modificar/:id', async(req, res, next) =>{
    var id = req.params.id;
    var articulo = await articulosModel.getArticuloByID(id);
    res.render('admin/modificar', {
        layout: 'admin/layout',
        articulo
     
})

})

router.post('/modificar', async(req, res, next) =>{
    try{
        var obj = {
            titulo:req.body.titulo,
            subtitulo:req.body.subtitulo,
            resumen:req.body.resumen, 
            cuerpo:req.body.cuerpo,
            autor:req.body.autor
        }
        await articulosModel.modificarArticuloByID(obj, req.body.id)
        res.redirect('/admin/editar')
    }catch(error){
/* console.log(error) */
res.render('admin/modificar', {
    layout: 'admin/layout',
    error: true,
    message: '*No se modifico la novedad'
}) 
    }
})
router.get('/eliminar/:id', async (req, res, next) =>{
    /* console.log(req.params.id); */
    var id = req.params.id;
    await articulosModel.deleteArticuloByID(id);
    res.redirect('/admin/editar')
})


module.exports=router;