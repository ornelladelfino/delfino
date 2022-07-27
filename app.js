var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

require('dotenv').config();/* para que cargue los datos del archivo .env */

var session = require('express-session');

var indexRouter = require('./routes/index');
var obraRouter = require('./routes/obra');
var foroRouter = require('./routes/foro');
var novedadesRouter = require('./routes/novedades');
var contactoRouter = require('./routes/contacto');
var fragmentosRouter = require('./routes/fragmentos');
var ventanasRouter = require('./routes/ventanas');
var historiaRouter = require('./routes/historia');
var articuloRouter = require('./routes/articulo');
var loginRouter = require('./routes/admin/login');
var editarRouter = require('./routes/admin/editar');


var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use(session({
  secret: 'qwertyuioppoiuytrewq',
  cookie:{MaxAge:null},
  resave: false,
  saveUninitialized: true,
}))

secured = async (req, res, next) => {
  try {
    console.log(req.session.id_usuario);
    if (req.session.id_usuario) {
      next();

    } else {
      res.redirect('/admin/login')
    }

  } catch (error) {
    console.log(error)
  }
}

app.use('/', indexRouter);
app.use('/obra', obraRouter);
app.use('/foro', foroRouter);
app.use('/novedades', novedadesRouter);
app.use('/contacto', contactoRouter);
app.use('/fragmentos', fragmentosRouter);
app.use('/ventanas', ventanasRouter);
app.use('/historia', historiaRouter);
app.use('/articulo', articuloRouter);
app.use('/admin/login', loginRouter);
app.use('/admin/editar', secured, editarRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
