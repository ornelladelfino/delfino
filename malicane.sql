-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-07-2022 a las 13:24:42
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `malicane`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `resumen` text NOT NULL,
  `cuerpo` text NOT NULL,
  `autor` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `titulo`, `subtitulo`, `resumen`, `cuerpo`, `autor`) VALUES
(1, 'La microficción-\r\n\r\nTouch, comprimido y algo más.\r\n\r\nDe mi experiencia', '', 'Un concepto de la microficción y sus características y peculiaridades desde mi experiencia.', 'La microficción es una de las experiencias de la brevedad: un macromundo contenido en pocas palabras.\r\n\r\nCuando escribo y leo textos breves hay una primera reacción que se siente como impacto. Emoción, sorpresa, desconcierto, sonrisa, carcajada, incertidumbre, son algunas de las impresiones que he experimentado y que registro también en quienes leen o escuchan una micro.\r\n\r\nHe sentido cuando escribo que estoy gestando poesía o microficción, formas breves que se generan como diferentes pero con un límite difuso. Muchas de mis microficciones provienen de la poesía o han sido antes cuentos extensos de los que tomé el concepto, la síntesis. Otras nacieron como microficciones.\r\n\r\nLas que provienen de la poesía no se “sentían” como poesía, necesitaban ser prosificadas, tituladas, contaban una historia breve o la sugerían más a modo de relato que de imagen poética.\r\n\r\nLas que nacieron como cuentos extensos no toleraban la extensión, pedían brevedad para poder comunicar desde una estética diferente.\r\n\r\nCada microficción contiene un macromundo que no se queda en el primer impacto: la presentación de la microficción define el primer momento de encuentro entre\r\n\r\ntexto y lector y permite, si quisiéramos, distintas lecturas después de este primer impacto.\r\n\r\nLo breve no impide lo profundo.\r\n\r\nLo vertiginoso no evita la lentitud con la que podemos ponernos a saborear diversos sentidos de un solo texto.\r\n\r\nEl macromundo lleno de aristas y perspicacias cabe dentro de un breve texto, que sugiere o cuenta una historia y que se registra como narrativo aun cuando los límites con la poesía están en un borde sutil.\r\n\r\nEscribo poesía y siento que estoy creando poesía, que vibro poesía.\r\n\r\nEscribo microficción y estoy jugando, contando, provocando la reacción del que escucha o lee o abriendo un diálogo con un clima diferente al que genera la conexión con la poesía.\r\n\r\nHumor, ironía, absurdo, presentación de personas y personajes tal como son o somos en distintos contextos, en un renglón, en pocas líneas, en una carilla.\r\n\r\nLa brevedad nos remite a la captación del instante y tiene la posibilidad de poner por unos segundos el mundo en nuestras manos.\r\n\r\nCuando leo microficción tengo la certeza de la primera impresión y puedo después releer, reescuchar cuantas veces necesite hacerlo hasta involucrarme en la pluralidad de significados presentados en un touch, en un comprimido.\r\n\r\nYo “siento” a modo de poesía o microficción y se trata siempre de un instante que define, de una percepción que se impone como tal, aunque después venga lo que viene después: la corrección, quitar, dejar, modificar, agregar, dar tiempo y volver a leer y escribir hasta que digo “ya está.”\r\n\r\nVolver sobre una brevedad después de la primera reacción, de la primera lectura, no quita nada de lo recibido como impresión inicial y permite agregar nuevos sentidos.\r\n\r\nEn una de mis microficciones digo: “Cuestión de géneros” : De todos los géneros el más importante es el generoso.\r\n\r\nTouch. Comprimido, foto o algo más, no he definido más que mi experiencia personal. Simplemente experimentando.\r\n\r\nMis micros tienen que ver con una vivencia, emociones, sueños de los que se sueñan dormida y también de los que se sueñan despierta, ganas de jugar con las palabras, ironía, inversión de términos de la realidad, intertextualidad, absurdo, humor.\r\n\r\nUn toquecito. Un “digo esto y me callo”.\r\n\r\nEn una de mis microficciones defino la incomunicación: “Hablamos. Siempre hablamos.Y lo que callamos sigue allí bajo el peso del silencio.” La microficción dice también al no decir. Dice con lo que dice pero su brevedad implica un decir lo que no se dice.\r\n\r\nUna sugerencia.\r\n\r\nUna lectura entrelíneas.', 'Marylena Cambiarieri'),
(2, 'Acerca de la autoficción, la autobiografía y la autorreferencialidad.', '¿Somos o nos inventamos?', 'Reflexiones acerca de lo autobiográfico y sus distintas posibilidades y significados.', 'En los cuentos o novelas autobiográficas es difícil establecer cuánto hay de ficción y cuánto de realidad.\r\n\r\n¿Siempre hablamos de nosotros mismos, aun cuando los personajes sean otras personas? ¿ Estamos creando ficción cuando relatamos algunos acontecimientos autobiográficos como parte de una obra literaria? La ficción y la realidad tienen a veces un límite sutil.\r\n\r\nPor otra parte, algunos fragmentos de nuestra vida se nos pegan hasta encarnizarse en nuestros personajes, aunque ellos sean otras personas, distintas a nosotros, creadas desde la realidad imaginaria de una novela, cuento, microrrelato.\r\n\r\nAdemás, ¿desde dónde es posible contar algo propio? ¿El discurrir del mundo interior aun cuando no se trate de circunstancias de vida si no de pensamientos, emociones y el fluir del pensamiento mismo, que suele ser engañoso o dispararse hacia la fantasía, es a veces parte de la vida cotidiana de las personas de carne y hueso, las que funcionamos en este mundo y no solo en el mundo de papel de la literatura?\r\n\r\nLa ensoñación, el carácter surrealista y absurdo de los sueños que soñamos dormidos, la imaginación que nos hace crear monstruos o ilusiones ¿no son acaso una especie de literatura que no fue llevada al mundo de las letras?\r\n\r\nLos miedos ¿no convierten nuestra vida en ficciones?\r\n\r\n¿Somos creados por un dios que nos sueña? Esta es sin duda una de las teorías que a veces retorna de distintas maneras con respecto a nuestro posible “carácter ficcional”y que ha sido preocupación de muchos escritores cuando intentan dar cuenta de la ficción .\r\n\r\nSin duda también los literatos y no solo los filósofos y otros estudiosos del hombre hacemos un aporte al descubrimiento de nuestras revelaciones íntimas y humanas, a la inquietud acerca de quiénes somos.\r\n\r\nLa gran pregunta es si existe la ficción como tal, sin una conexión vital con la persona que está detrás de la creación literaria, aun cuando ni siquiera nuestra obra sea autobiográfica.\r\n\r\nSin dudas nos identificamos de algún modo con los personajes a los que hemos dado vida en la literatura, aun cuando no se trate de autobiografía, y nos sentimos a veces muy diferentes a ellos aunque hablemos de nosotros mismos.\r\n\r\nEllos tienen una entidad propia así contemos una historia personal.\r\n\r\nY también son parte de nosotros aunque su vida ni se parezca a la nuestra.\r\n\r\nY nuestros lectores hacen su propio viaje con nuestros libros, su modo de identificación es diferente.\r\n\r\nAsí es como leyendo nos autodescubrimos también.\r\n\r\nEn el libro más remoto del autor más desconocido, que no tendría cómo conocernos, ahí nos vemos, y llegamos a pensar que el autor “está hablando de nosotros”. Del mismo modo no nos reconocemos a veces en nuestras propias creaciones literarias, o en nuestra propia piel.\r\n\r\nDescubrirnos es parte de cada momento de nuestra obra.\r\n\r\nY de nuestra vida.', 'Marylena Cambarieri'),
(3, 'probando agregar un articulo', 'saldra bien?', 'esta es mi prueba', 'bla bla bla', 'ornella'),
(4, 'agregar', 'un articulo', 'estoy probando', 'hola', 'yo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Malicane', '39dcaf7a053dc372fbc391d4e6b5d693'),
(2, 'Ornella', '96055f5b06bf9381ac43879351642cf5'),
(3, 'Flavia', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
