-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-03-2023 a las 12:13:55
-- Versión del servidor: 10.3.38-MariaDB-0ubuntu0.20.04.1
-- Versión de PHP: 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fansite`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_helpers`
--

CREATE TABLE `app_helpers` (
  `id` int(18) NOT NULL,
  `user_id` int(18) NOT NULL,
  `username` varchar(120) NOT NULL,
  `image` varchar(250) NOT NULL,
  `image2` varchar(250) NOT NULL DEFAULT '/images/no-image.png',
  `image3` varchar(250) NOT NULL DEFAULT '/images/no-image.png	',
  `image4` varchar(250) NOT NULL DEFAULT '/images/no-image.png	',
  `fecha` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `baneo`
--

CREATE TABLE `baneo` (
  `id` int(16) NOT NULL,
  `usuario` varchar(180) DEFAULT NULL,
  `razon` varchar(500) NOT NULL,
  `ban_i` date DEFAULT NULL,
  `ban_f` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `texto` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(700) NOT NULL,
  `principal` varchar(11) NOT NULL,
  `mostrarboton` varchar(50) DEFAULT 'No',
  `url_promo` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `texto`, `imagen`, `principal`, `mostrarboton`, `url_promo`) VALUES
(1, 'Vuelve Kuinz al ruedo!', 'Estamos de regreso con el fansite, esperenos con novedades.', 'https://i.imgur.com/59iK6gk.png', 'active', 'No', '#');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `book_comentarios`
--

CREATE TABLE `book_comentarios` (
  `id` int(11) NOT NULL,
  `username` varchar(12) NOT NULL,
  `noticia_id` int(11) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `comentario` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE `chat` (
  `id` int(16) NOT NULL,
  `username` varchar(12) NOT NULL,
  `noticia_id` int(11) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `comentario` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(16) NOT NULL,
  `username` varchar(12) NOT NULL,
  `noticia_id` int(11) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `comentario` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nameweb` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `pclaves` varchar(600) NOT NULL,
  `descripcion` varchar(4000) NOT NULL,
  `logo` varchar(1000) NOT NULL,
  `facebook` varchar(4000) NOT NULL,
  `facebookimg` varchar(500) NOT NULL,
  `mantenimiento` varchar(50) NOT NULL,
  `motivo` varchar(200) NOT NULL,
  `iniciar_sesion` varchar(50) NOT NULL,
  `registro` varchar(50) NOT NULL,
  `publicidad` varchar(50) NOT NULL,
  `codigo` text NOT NULL,
  `radio` varchar(9000) NOT NULL,
  `nombre_radio` varchar(100) NOT NULL,
  `radio_op` varchar(50) NOT NULL,
  `xat` text NOT NULL,
  `equipo` varchar(1000) NOT NULL,
  `puntos_img` varchar(1000) NOT NULL DEFAULT 'https://kuinz-fansite.space/images/puntos.png',
  `fichas_img` varchar(1000) DEFAULT NULL,
  `tokens_img` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `nameweb`, `url`, `pclaves`, `descripcion`, `logo`, `facebook`, `facebookimg`, `mantenimiento`, `motivo`, `iniciar_sesion`, `registro`, `publicidad`, `codigo`, `radio`, `nombre_radio`, `radio_op`, `xat`, `equipo`, `puntos_img`, `fichas_img`, `tokens_img`) VALUES
(1, 'Kuinz Fansite', 'https://kuinzfansite.online', 'kekocity,kuinz,fansite,keko,comunidad', 'Fansite oficial de la comunidad de KekoCity. Desarrollado y dise?ado por Krozox y Carlos.', '/images/logo.png', 'https://facebook.com/kuinz.fansite', '/images/logo.png', '0', 'eo', '1', '1', '0', ' ', '...', 'Alerta', '0', '<h2>test</h2>', '', '/images/puntos.png', '/images/fichas.png', '/images/tokens.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `publicacion` varchar(4000) NOT NULL,
  `fecha` varchar(12) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `avatar` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fecha`
--

CREATE TABLE `fecha` (
  `id` int(18) NOT NULL,
  `user_id` int(18) NOT NULL,
  `username` varchar(120) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `fecha` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `furnis`
--

CREATE TABLE `furnis` (
  `id` int(11) NOT NULL,
  `imagen` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `encima` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nombre` varchar(4000) NOT NULL,
  `creditos` varchar(26) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT 'https://kekocity.com/fly/i/fursv5/9944/4013054.png',
  `seccion` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` int(9) UNSIGNED NOT NULL,
  `url` varchar(500) DEFAULT NULL,
  `fecha` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kekocity_respuestas`
--

CREATE TABLE `kekocity_respuestas` (
  `ID` int(120) NOT NULL,
  `keko_nombre` varchar(1200) NOT NULL,
  `respuesta` varchar(1200) NOT NULL,
  `pregunta` varchar(1200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kekoguias`
--

CREATE TABLE `kekoguias` (
  `id` int(11) NOT NULL,
  `autor` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `titulo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resumen` varchar(126) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `categoria` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fecha` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imagen` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `noticia` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `megusta` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `no_megusta` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `kekoguias`
--

INSERT INTO `kekoguias` (`id`, `autor`, `titulo`, `resumen`, `categoria`, `fecha`, `imagen`, `noticia`, `megusta`, `no_megusta`) VALUES
(1, 'Krozox', 'Prueba', '', 'aaaaaa', '2023-03-28', 'https://i.imgur.com/vhsoGXQ.png', '<p>testestoeoaeooasdosdsadksadkasdasksadssadadsasdads</p>', '0', '0'),
(2, 'Krozox', 'Carlos es una rata malnacida :D', '', '50px', '2023-03-28', 'https://i.imgur.com/AmHpLeZ.png', '<p>Se busca una rata, 10mil clonds de rekompensa</p>', '0', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `likes_publis`
--

CREATE TABLE `likes_publis` (
  `id` int(9) UNSIGNED NOT NULL,
  `username` varchar(180) DEFAULT NULL,
  `tipo` varchar(180) DEFAULT NULL,
  `publi_id` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE `logs` (
  `id` int(12) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `accion` varchar(500) NOT NULL DEFAULT 'No definida',
  `fecha` varchar(100) NOT NULL DEFAULT 'No definida'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `logs`
--

INSERT INTO `logs` (`id`, `usuario`, `accion`, `fecha`) VALUES
(1, 'Carlos', 'Se ha registrado', '28-Mar-2023 12:36:22'),
(2, 'Carlos', 'Ha iniciado sesión', '28-Mar-2023 12:36:33'),
(3, 'Krozox', 'Se ha registrado', '28-Mar-2023 12:40:58'),
(4, 'Krozox', 'Ha iniciado sesión', '28-Mar-2023 12:41:08'),
(5, 'Attom', 'Se ha registrado', '28-Mar-2023 12:42:48'),
(6, 'The Sebas', 'Se ha registrado', '28-Mar-2023 12:43:26'),
(7, 'Attom', 'Ha iniciado sesión', '28-Mar-2023 12:43:48'),
(8, 'Carlos', 'Ha editado un rango', '2023-03-28'),
(9, 'Krozox', 'Ha enviado un mensaje a Carlos', '28-Mar-2023 12:53:48'),
(10, 'Krozox', 'Ha creado una guia', '2023-03-28'),
(11, 'Krozox', 'Ha creado una guia', '2023-03-28'),
(12, 'Carlos', 'Ha creado una Promo', '2023-03-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs_sospechosos`
--

CREATE TABLE `logs_sospechosos` (
  `id` int(12) NOT NULL,
  `user_logeado` varchar(180) DEFAULT NULL,
  `ip` varchar(180) DEFAULT NULL,
  `accion` varchar(180) DEFAULT NULL,
  `fecha` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `logs_sospechosos`
--

INSERT INTO `logs_sospechosos` (`id`, `user_logeado`, `ip`, `accion`, `fecha`) VALUES
(1, 'Carlos', '141.101.110.181', 'Ha iniciado sesión con otra ip (La cuenta No a sido bloqueada)', '2023-03-28'),
(2, 'Krozox', '108.162.210.138', 'Ha iniciado sesión con otra ip (La cuenta No a sido bloqueada)', '2023-03-28'),
(3, 'Attom', '172.70.254.205', 'Ha iniciado sesión con otra ip (La cuenta No a sido bloqueada)', '2023-03-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs_visitantes`
--

CREATE TABLE `logs_visitantes` (
  `id` int(9) UNSIGNED NOT NULL,
  `ip` varchar(180) DEFAULT NULL,
  `fecha_i` varchar(180) DEFAULT NULL,
  `hora` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_login`
--

CREATE TABLE `log_login` (
  `id` int(120) NOT NULL,
  `user_id` int(120) NOT NULL,
  `username` varchar(180) NOT NULL,
  `rango` varchar(18) NOT NULL,
  `last_ip` varchar(120) NOT NULL,
  `f_login` varchar(320) NOT NULL,
  `f_hora` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `log_login`
--

INSERT INTO `log_login` (`id`, `user_id`, `username`, `rango`, `last_ip`, `f_login`, `f_hora`) VALUES
(1, 1, 'Carlos', 'Usuario(1)', '141.101.110.181', '28-Mar-2023', '12:36:33'),
(2, 2, 'Krozox', 'Usuario(1)', '108.162.210.138', '28-Mar-2023', '12:41:08'),
(3, 3, 'Attom', 'Usuario(1)', '172.70.254.205', '28-Mar-2023', '12:43:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `misiones`
--

CREATE TABLE `misiones` (
  `id` int(11) NOT NULL,
  `titulo` varchar(4000) NOT NULL,
  `texto` varchar(4000) NOT NULL,
  `fecha` varchar(12) NOT NULL,
  `autor` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `resumen` varchar(126) NOT NULL,
  `categoria` varchar(500) NOT NULL,
  `fecha` varchar(12) NOT NULL,
  `imagen` varchar(4000) NOT NULL,
  `noticia` varchar(4000) NOT NULL,
  `megusta` varchar(10) NOT NULL DEFAULT '0',
  `no_megusta` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `placas`
--

CREATE TABLE `placas` (
  `id` int(11) NOT NULL,
  `code` varchar(200) NOT NULL,
  `imagen` varchar(4000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `placasdev`
--

CREATE TABLE `placasdev` (
  `id` int(11) NOT NULL,
  `code` varchar(200) NOT NULL,
  `imagen` varchar(4000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `placase`
--

CREATE TABLE `placase` (
  `id` int(12) NOT NULL,
  `code` varchar(500) NOT NULL,
  `imagen` varchar(280) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` int(9) UNSIGNED NOT NULL,
  `publicacion` varchar(180) DEFAULT NULL,
  `username` varchar(180) DEFAULT NULL,
  `avatar` varchar(180) DEFAULT NULL,
  `fecha` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicidad`
--

CREATE TABLE `publicidad` (
  `id` int(11) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `resumen` varchar(126) NOT NULL,
  `categoria` varchar(500) NOT NULL,
  `fecha` varchar(12) NOT NULL,
  `imagen` varchar(4000) NOT NULL,
  `noticia` varchar(4000) NOT NULL,
  `megusta` varchar(10) NOT NULL DEFAULT '0',
  `no_megusta` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rangos`
--

CREATE TABLE `rangos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `mision` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rangos`
--

INSERT INTO `rangos` (`id`, `nombre`, `mision`, `color`) VALUES
(6, 'Moderador', 'Moderador del fansite', 'gold'),
(4, 'Helper', 'Noticias', 'orange'),
(2, 'Pase Elite', 'Usuario prestigioso', 'blue'),
(1, 'Usuario', 'Usuario de Kuinz Fansite', 'azul'),
(8, 'Fundador', 'Estos son los fundadores de Kuinz.', 'oscuro'),
(7, 'Encargado', 'Administradores del Fansite', 'blue'),
(3, 'Becario', 'Publicidades', 'orange'),
(5, 'Moderador Becario', 'Moderador del fansite', 'orange');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `id` int(9) UNSIGNED NOT NULL,
  `user_enviado` varchar(180) DEFAULT NULL,
  `user_reportado` varchar(180) DEFAULT NULL,
  `mensaje` varchar(180) DEFAULT NULL,
  `tipo` varchar(180) DEFAULT NULL,
  `estado` varchar(180) DEFAULT NULL,
  `fecha_i` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones_furnis`
--

CREATE TABLE `secciones_furnis` (
  `id` int(9) UNSIGNED NOT NULL,
  `nombre` varchar(180) DEFAULT NULL,
  `tipo_n` varchar(180) DEFAULT NULL,
  `url_seccion` varchar(180) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `secciones_furnis`
--

INSERT INTO `secciones_furnis` (`id`, `nombre`, `tipo_n`, `url_seccion`) VALUES
(1, 'Rares Comunes', 'furnis_1', 'comunes'),
(2, 'Exclusivos', 'furnis_2', 'megas'),
(3, 'LIMITED', 'furnis_3', 'limited'),
(4, 'Ultras', 'furnis_4', 'ultras'),
(5, 'Extraños', 'furnis_5', 'extranos'),
(6, 'Dev', 'furni_6', 'dev'),
(7, 'San Valentin', 'furni_7', 'san-valentin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguidores`
--

CREATE TABLE `seguidores` (
  `id` int(9) UNSIGNED NOT NULL,
  `id_seguidor` int(18) NOT NULL,
  `id_perfil` int(18) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `seguidores`
--

INSERT INTO `seguidores` (`id`, `id_seguidor`, `id_perfil`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda`
--

CREATE TABLE `tienda` (
  `id` int(11) NOT NULL,
  `code_placa` varchar(180) DEFAULT NULL,
  `precio` bigint(180) DEFAULT NULL,
  `unidades` bigint(180) DEFAULT NULL,
  `icono` varchar(180) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiendadev`
--

CREATE TABLE `tiendadev` (
  `id` int(9) UNSIGNED NOT NULL,
  `code_placa` varchar(180) DEFAULT NULL,
  `precio` bigint(180) DEFAULT NULL,
  `unidades` bigint(180) DEFAULT NULL,
  `icono` varchar(180) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiendae`
--

CREATE TABLE `tiendae` (
  `id` int(12) NOT NULL,
  `code_placa` varchar(120) NOT NULL,
  `precio` int(12) NOT NULL,
  `unidades` int(12) NOT NULL,
  `icono` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(180) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(180) NOT NULL,
  `email` varchar(180) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `logeado` varchar(54) NOT NULL DEFAULT '0',
  `rank` varchar(2) DEFAULT '1',
  `avatar` varchar(4000) DEFAULT './images/avatars/noavatar.png',
  `portada` varchar(255) DEFAULT './images/portadahalloween.png',
  `fichas` int(255) DEFAULT 0,
  `puntos` int(255) DEFAULT 0,
  `tokens` int(255) DEFAULT 0,
  `ip` varchar(500) NOT NULL,
  `nombre` varchar(120) DEFAULT 'No especificado',
  `apellido` varchar(120) DEFAULT 'No especificado',
  `mision` varchar(180) NOT NULL DEFAULT 'Soy nuevo!',
  `anclado` varchar(500) NOT NULL DEFAULT 'sTfHzp8WP24',
  `megusta` int(50) DEFAULT 0,
  `pais` varchar(120) DEFAULT 'No especificado',
  `ban` varchar(20) DEFAULT '0',
  `ban_i` varchar(20) DEFAULT '0',
  `ban_f` varchar(20) DEFAULT '0',
  `mostraremail` varchar(50) DEFAULT 'No',
  `mostraranclado` varchar(50) DEFAULT 'No',
  `mostrarnombreapellido` varchar(50) DEFAULT 'No',
  `mostrarpais` varchar(50) DEFAULT 'No',
  `verificado` varchar(50) DEFAULT 'No',
  `seguridad_ip` varchar(10) DEFAULT 'No',
  `ultimavez` varchar(24) DEFAULT 'No disponible',
  `alerta` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `username`, `password`, `email`, `fecha`, `logeado`, `rank`, `avatar`, `portada`, `fichas`, `puntos`, `tokens`, `ip`, `nombre`, `apellido`, `mision`, `anclado`, `megusta`, `pais`, `ban`, `ban_i`, `ban_f`, `mostraremail`, `mostraranclado`, `mostrarnombreapellido`, `mostrarpais`, `verificado`, `seguridad_ip`, `ultimavez`, `alerta`) VALUES
(1, 'Carlos', 'f72a330d2ac225bbcf627d8eab19e7c5', 'sorac.dev@gmail.com', '2023-03-28 05:41:24', '0', '8', './images/avatars/noavatar.png', './images/portadahalloween.png', 0, 0, 0, '152.200.102.34', 'No especificado', 'No especificado', 'Soy nuevo!', 'sTfHzp8WP24', 1, 'No especificado', '0', '0', '0', 'No', 'Si', 'No', 'No', 'No', 'No', '28-Mar-2023 12:36:33', 'sTfHzp8WP24'),
(2, 'Krozox', '429beb1e7c4352c5b03737d296c27800', 'krozox@kuinzfansite.online', '2023-03-28 05:42:21', '0', '8', './images/avatars/noavatar.png', './images/portadahalloween.png', 0, 0, 0, '201.248.206.193', 'No especificado', 'No especificado', 'Soy nuevo!', 'sTfHzp8WP24', 0, 'No especificado', '0', '0', '0', 'No', 'No', 'No', 'No', 'No', 'No', '28-Mar-2023 12:41:08', '0'),
(3, 'Attom', '1239e36d250d26477531718d9bae6348', 'atomikok76@gmail.com', '2023-03-28 05:43:48', '0', '1', './images/avatars/noavatar.png', './images/portadahalloween.png', 0, 0, 0, '186.90.213.38', 'No especificado', 'No especificado', 'Soy nuevo!', 'sTfHzp8WP24', 0, 'No especificado', '0', '0', '0', 'No', 'No', 'No', 'No', 'No', 'No', '28-Mar-2023 12:43:48', '0'),
(4, 'The Sebas', '13950ad0d222b6e9c77acc3d7c58c0bd', 'sebastian.isaias0309@gmail.com', '2023-03-28 05:43:26', '0', '1', './images/avatars/noavatar.png', './images/portadahalloween.png', 0, 0, 0, '179.52.181.121', 'No especificado', 'No especificado', 'Soy nuevo!', 'sTfHzp8WP24', 0, 'No especificado', '0', '0', '0', 'No', 'No', 'No', 'No', 'No', 'No', 'No disponible', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_amigos`
--

CREATE TABLE `usuarios_amigos` (
  `id` int(12) NOT NULL,
  `user` varchar(180) DEFAULT NULL,
  `user_amigo` varchar(180) DEFAULT NULL,
  `estado_solicitud` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_mensajes_privados`
--

CREATE TABLE `usuarios_mensajes_privados` (
  `id` int(12) NOT NULL,
  `user_enviado` varchar(180) DEFAULT NULL,
  `rango` varchar(18) NOT NULL DEFAULT 'Usuario',
  `user_recibido` varchar(180) DEFAULT NULL,
  `asunto` varchar(180) DEFAULT NULL,
  `mensaje` varchar(500) DEFAULT NULL,
  `fecha` varchar(200) NOT NULL,
  `razon` varchar(255) NOT NULL DEFAULT '(No disponible)',
  `organizador` varchar(255) NOT NULL DEFAULT '(No disponible)'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios_mensajes_privados`
--

INSERT INTO `usuarios_mensajes_privados` (`id`, `user_enviado`, `rango`, `user_recibido`, `asunto`, `mensaje`, `fecha`, `razon`, `organizador`) VALUES
(1, 'Krozox', 'Usuario', 'Carlos', '(Sin asunto)', 'putasorramalnacida :dddd', '28-Mar-2023 12:53:48', '(No disponible)', '(No disponible)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_placas`
--

CREATE TABLE `usuarios_placas` (
  `id` int(12) NOT NULL,
  `username` varchar(180) DEFAULT NULL,
  `code_placa` varchar(180) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_placasdev`
--

CREATE TABLE `usuarios_placasdev` (
  `id` int(16) NOT NULL,
  `username` varchar(180) NOT NULL,
  `code_placa` varchar(180) NOT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_placase`
--

CREATE TABLE `usuarios_placase` (
  `id` int(16) NOT NULL,
  `username` varchar(200) NOT NULL,
  `code_placa` varchar(200) NOT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_regalos`
--

CREATE TABLE `usuarios_regalos` (
  `id` int(14) NOT NULL,
  `user_enviado` varchar(180) DEFAULT NULL,
  `user_recibido` varchar(180) DEFAULT NULL,
  `asunto_regalo` varchar(200) NOT NULL,
  `mensaje_regalo` varchar(200) NOT NULL,
  `fecha` varchar(200) NOT NULL,
  `code_placa` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos`
--

CREATE TABLE `votos` (
  `id` int(9) UNSIGNED NOT NULL,
  `username` varchar(180) DEFAULT NULL,
  `tipo` varchar(180) DEFAULT NULL,
  `noticia_id` varchar(180) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `app_helpers`
--
ALTER TABLE `app_helpers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `baneo`
--
ALTER TABLE `baneo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `book_comentarios`
--
ALTER TABLE `book_comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fecha`
--
ALTER TABLE `fecha`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `furnis`
--
ALTER TABLE `furnis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `kekoguias`
--
ALTER TABLE `kekoguias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `likes_publis`
--
ALTER TABLE `likes_publis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logs_sospechosos`
--
ALTER TABLE `logs_sospechosos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `log_login`
--
ALTER TABLE `log_login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `misiones`
--
ALTER TABLE `misiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `placas`
--
ALTER TABLE `placas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `placasdev`
--
ALTER TABLE `placasdev`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `placase`
--
ALTER TABLE `placase`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `publicidad`
--
ALTER TABLE `publicidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rangos`
--
ALTER TABLE `rangos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `secciones_furnis`
--
ALTER TABLE `secciones_furnis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiendadev`
--
ALTER TABLE `tiendadev`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiendae`
--
ALTER TABLE `tiendae`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios_amigos`
--
ALTER TABLE `usuarios_amigos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_mensajes_privados`
--
ALTER TABLE `usuarios_mensajes_privados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_placas`
--
ALTER TABLE `usuarios_placas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_placasdev`
--
ALTER TABLE `usuarios_placasdev`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_placase`
--
ALTER TABLE `usuarios_placase`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_regalos`
--
ALTER TABLE `usuarios_regalos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `votos`
--
ALTER TABLE `votos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `app_helpers`
--
ALTER TABLE `app_helpers`
  MODIFY `id` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `baneo`
--
ALTER TABLE `baneo`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `furnis`
--
ALTER TABLE `furnis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `kekoguias`
--
ALTER TABLE `kekoguias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `logs_sospechosos`
--
ALTER TABLE `logs_sospechosos`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `log_login`
--
ALTER TABLE `log_login`
  MODIFY `id` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `placas`
--
ALTER TABLE `placas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `placasdev`
--
ALTER TABLE `placasdev`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `placase`
--
ALTER TABLE `placase`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `publicidad`
--
ALTER TABLE `publicidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seguidores`
--
ALTER TABLE `seguidores`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tienda`
--
ALTER TABLE `tienda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tiendadev`
--
ALTER TABLE `tiendadev`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tiendae`
--
ALTER TABLE `tiendae`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(180) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios_amigos`
--
ALTER TABLE `usuarios_amigos`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_mensajes_privados`
--
ALTER TABLE `usuarios_mensajes_privados`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios_placas`
--
ALTER TABLE `usuarios_placas`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_placasdev`
--
ALTER TABLE `usuarios_placasdev`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_placase`
--
ALTER TABLE `usuarios_placase`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_regalos`
--
ALTER TABLE `usuarios_regalos`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
