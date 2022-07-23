var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');

/* GET contacto page. */
router.get('/', function(req, res, next) {
  res.render('contacto', {
    isContacto:true
  });
});

router.post('/', async function(req, res, next){
  /* console.log(req.body) */
  var nombre = req.body.nombre;
  var email = req.body.email;
  var telefono = req.body.telefono;
  var comentario = req.body.comentario;
  /* console.log(req.body.telefono) */

  var obj = {
    to: 'mary@gmail.com',
    subject: 'Contacto desde la pagina web',
    html: nombre + " se contactó a través de la web y quiere saber más info a este correo: " + email + ".<br> Su telefono es: " + telefono + ". Su comentario es: " + comentario
  }
  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  }) /* FINALIZA TRANSPORT*/

var info = await transport.sendMail(obj);
res.render('contacto', {
  message: '*Mensaje enviado correctamente'
})

})

 

module.exports = router;