-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-07-2015 a las 19:22:00
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `basededatosquicklist`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_actividades`
--

CREATE TABLE IF NOT EXISTS `t_actividades` (
  `ID_Actividad` int(11) NOT NULL,
  `ID_Horario` int(11) DEFAULT NULL,
  `ID_Aprendiz` bigint(20) DEFAULT NULL,
  `Titulo_Actividad` varchar(100) NOT NULL,
  `Descripcion_Actividad` text NOT NULL,
  `Fecha_De_Entrega` datetime DEFAULT NULL,
  `Valor_Maximo_Actividad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_actividades`
--

INSERT INTO `t_actividades` (`ID_Actividad`, `ID_Horario`, `ID_Aprendiz`, `Titulo_Actividad`, `Descripcion_Actividad`, `Fecha_De_Entrega`, `Valor_Maximo_Actividad`) VALUES
(111111, 11111, 7785885485, 'INFORME DEL DIAGRAMA DE TRANSICION DE ESTADO', 'REALIZAR UN INFORME CON NORMAS APA DESCRIBIENDO Y REPRESENTANDO GREFICAMENTE CADA UNO DE LOS COMPONENTES DEL DIAGRAMA DE TRANSICION DE ESTADO.', '0000-00-00 00:00:00', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_actividad_de_aprendizaje`
--

CREATE TABLE IF NOT EXISTS `t_actividad_de_aprendizaje` (
  `ID_Actividad_De_Aprendizaje` int(11) NOT NULL,
  `ID_Competencia` int(11) DEFAULT NULL,
  `Fase_Del_Proyecto` text NOT NULL,
  `Actividad_De_Aprendizaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_actividad_de_aprendizaje`
--

INSERT INTO `t_actividad_de_aprendizaje` (`ID_Actividad_De_Aprendizaje`, `ID_Competencia`, `Fase_Del_Proyecto`, `Actividad_De_Aprendizaje`) VALUES
(111, 11, 'ANALISIS', 'ELABORAR DIAGRAMAS DE TRANSICIÓN DE ESTADO.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_calificaciones`
--

CREATE TABLE IF NOT EXISTS `t_calificaciones` (
  `ID_Calificacion` int(11) NOT NULL,
  `ID_Actividad` int(11) DEFAULT NULL,
  `Calificacion` float DEFAULT NULL,
  `Observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_calificaciones`
--

INSERT INTO `t_calificaciones` (`ID_Calificacion`, `ID_Actividad`, `Calificacion`, `Observaciones`) VALUES
(1111111, 111111, 3.5, 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_clase`
--

CREATE TABLE IF NOT EXISTS `t_clase` (
  `ID_Clase` int(11) NOT NULL,
  `ID_Horario` int(11) DEFAULT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_clase`
--

INSERT INTO `t_clase` (`ID_Clase`, `ID_Horario`, `Fecha`) VALUES
(11111111, 11111, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_competencias`
--

CREATE TABLE IF NOT EXISTS `t_competencias` (
  `ID_Competencia` int(11) NOT NULL,
  `ID_Plan_De_Estudios` int(11) DEFAULT NULL,
  `Competencia_A_Desarrollar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_competencias`
--

INSERT INTO `t_competencias` (`ID_Competencia`, `ID_Plan_De_Estudios`, `Competencia_A_Desarrollar`) VALUES
(11, 1, 'ANALIZAR LOS REQUISITOS DEL CLIENTE PARA CONSTRUIR EL SISTEMA DE INFORMACION.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_fichas`
--

CREATE TABLE IF NOT EXISTS `t_fichas` (
  `Numero_De_Ficha` int(11) NOT NULL,
  `ID_Plan_De_Estudios` int(11) DEFAULT NULL,
  `Fecha_Inicio` datetime NOT NULL,
  `Fecha_Fin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_fichas`
--

INSERT INTO `t_fichas` (`Numero_De_Ficha`, `ID_Plan_De_Estudios`, `Fecha_Inicio`, `Fecha_Fin`) VALUES
(750566, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_formato_de_etapa_lectiva`
--

CREATE TABLE IF NOT EXISTS `t_formato_de_etapa_lectiva` (
  `ID_Formato` int(11) NOT NULL,
  `ID_Aprendiz` bigint(20) DEFAULT NULL,
  `Version_Formato` int(11) DEFAULT NULL,
  `Fecha_Actual` datetime DEFAULT NULL,
  `Codigo` varchar(30) DEFAULT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_horario`
--

CREATE TABLE IF NOT EXISTS `t_horario` (
  `ID_Horario` int(11) NOT NULL,
  `ID_Resultado_De_Aprendizaje` int(11) DEFAULT NULL,
  `ID_Funcionario` bigint(20) DEFAULT NULL,
  `Dia_Semana` varchar(30) DEFAULT NULL,
  `Hora_Inicio` varchar(30) DEFAULT NULL,
  `Hora_Fin` varchar(30) DEFAULT NULL,
  `Fecha_Inicio` datetime NOT NULL,
  `Fecha_Fin` datetime NOT NULL,
  `Lugar` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_horario`
--

INSERT INTO `t_horario` (`ID_Horario`, `ID_Resultado_De_Aprendizaje`, `ID_Funcionario`, `Dia_Semana`, `Hora_Inicio`, `Hora_Fin`, `Fecha_Inicio`, `Fecha_Fin`, `Lugar`) VALUES
(11111, 1111, 1022453456, 'MIERCOLES', '12:00', '18:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Aula 308 CIDCA - Cr 38 Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_inasistencia`
--

CREATE TABLE IF NOT EXISTS `t_inasistencia` (
  `ID_Inasistencia` int(11) NOT NULL,
  `ID_Aprendiz` bigint(20) DEFAULT NULL,
  `Estado_De_Inasistencia` varchar(10) NOT NULL,
  `Justificacion_De_Inasistencia` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_inasistencia`
--

INSERT INTO `t_inasistencia` (`ID_Inasistencia`, `ID_Aprendiz`, `Estado_De_Inasistencia`, `Justificacion_De_Inasistencia`) VALUES
(111111111, 7785885485, 'CE', 'Cita odontologia en el hospital pablo vi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_informacion_aprendices`
--

CREATE TABLE IF NOT EXISTS `t_informacion_aprendices` (
  `Documento_De_Identidad` bigint(20) NOT NULL,
  `Contraseña` varchar(30) DEFAULT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Primer_Apellido` varchar(30) NOT NULL,
  `Segundo_Apellido` varchar(30) DEFAULT NULL,
  `Fecha_De_Nacimiento` datetime DEFAULT NULL,
  `Correo_Electronico` varchar(100) NOT NULL,
  `Genero` varchar(13) DEFAULT 'Desconocido',
  `Telefono_Fijo` int(11) DEFAULT NULL,
  `Telefono_Celular` bigint(20) NOT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `nombre_Proyecto` text,
  `Estilos_Y_Ritmos_De_Aprendizaje` text,
  `Estrategia_Metodológica_De_Preferencia` text,
  `Caracteristicas_Culturales_Y_Sociales` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_informacion_aprendices`
--

INSERT INTO `t_informacion_aprendices` (`Documento_De_Identidad`, `Contraseña`, `Nombre`, `Primer_Apellido`, `Segundo_Apellido`, `Fecha_De_Nacimiento`, `Correo_Electronico`, `Genero`, `Telefono_Fijo`, `Telefono_Celular`, `estado`, `nombre_Proyecto`, `Estilos_Y_Ritmos_De_Aprendizaje`, `Estrategia_Metodológica_De_Preferencia`, `Caracteristicas_Culturales_Y_Sociales`) VALUES
(7785885485, '5Y6Y56UR', 'PEDRO', 'CASAS', 'CUEVAS', '0000-00-00 00:00:00', 'Pedrocuevas4545@gmail.com', 'M', 6985732, 3102558947, 'EN FORMACION', 'CREACION DE UN APLICATIVO PARA LA GESTION DE LAS COMPRAS DE LA SERRAGERIA SERGIO´S', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_informacion_funcionarios`
--

CREATE TABLE IF NOT EXISTS `t_informacion_funcionarios` (
  `Documento_De_Identidad` bigint(20) NOT NULL,
  `Contraseña` varchar(30) DEFAULT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Primer_Apellido` varchar(30) NOT NULL,
  `Segundo_Apellido` varchar(30) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `Correo_Electronico` varchar(100) NOT NULL,
  `Telefono_Fijo` int(11) DEFAULT NULL,
  `Telefono_Celular` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_informacion_funcionarios`
--

INSERT INTO `t_informacion_funcionarios` (`Documento_De_Identidad`, `Contraseña`, `Nombre`, `Primer_Apellido`, `Segundo_Apellido`, `cargo`, `Correo_Electronico`, `Telefono_Fijo`, `Telefono_Celular`) VALUES
(1022453456, '3EYRH48', 'ALFREDO', 'JIMENES', 'CAICEDO', 'INSTRUCTOR', 'AlfredJ3453@misena.edu.co', 8596421, 312456789585);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_plan_de_estudios`
--

CREATE TABLE IF NOT EXISTS `t_plan_de_estudios` (
  `ID_Plan_De_Estudios` int(11) NOT NULL,
  `Nombre_Programa` varchar(100) DEFAULT NULL,
  `Version_Plan_De_Estudios` int(11) DEFAULT NULL,
  `Meses_Etapa_Lectiva` int(11) DEFAULT NULL,
  `Nivel_De_Formacion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_plan_de_estudios`
--

INSERT INTO `t_plan_de_estudios` (`ID_Plan_De_Estudios`, `Nombre_Programa`, `Version_Plan_De_Estudios`, `Meses_Etapa_Lectiva`, `Nivel_De_Formacion`) VALUES
(1, 'ANALISIS Y DESARROLLO DE SISTEMAS DE INFORMACION', 102, 18, 'TECNOLOGO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_resultado_de_aprendizaje`
--

CREATE TABLE IF NOT EXISTS `t_resultado_de_aprendizaje` (
  `ID_Resultado_De_Aprendizaje` int(11) NOT NULL,
  `ID_Actividad_De_Aprendizaje` int(11) DEFAULT NULL,
  `Resultado_De_Aprendizaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_resultado_de_aprendizaje`
--

INSERT INTO `t_resultado_de_aprendizaje` (`ID_Resultado_De_Aprendizaje`, `ID_Actividad_De_Aprendizaje`, `Resultado_De_Aprendizaje`) VALUES
(1111, 111, 'CONSTRUIR EL MODELO CONCEPTUAL DEL MACROSISTEMA FRENTE A LOS REQUERIMIENTOS DEL CLIENTE, MEDIANTE EL USO E INTERPRETACIÓN DE LA INFORMACIÓN LEVANTADA, REPRESENTADO EN DIAGRAMAS DE CLASE, DE INTERACCIÓN, COLABORACIÓN Y CONTRATOS DE OPERACIÓN, DE ACUERDO CON LAS DIFERENTES SECUENCIAS, FASES Y PROCEDIMIENTOS DEL SISTEMA.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t_actividades`
--
ALTER TABLE `t_actividades`
  ADD PRIMARY KEY (`ID_Actividad`), ADD KEY `ID_Horario` (`ID_Horario`), ADD KEY `ID_Aprendiz` (`ID_Aprendiz`);

--
-- Indices de la tabla `t_actividad_de_aprendizaje`
--
ALTER TABLE `t_actividad_de_aprendizaje`
  ADD PRIMARY KEY (`ID_Actividad_De_Aprendizaje`), ADD KEY `ID_Competencia` (`ID_Competencia`);

--
-- Indices de la tabla `t_calificaciones`
--
ALTER TABLE `t_calificaciones`
  ADD PRIMARY KEY (`ID_Calificacion`), ADD KEY `ID_Actividad` (`ID_Actividad`);

--
-- Indices de la tabla `t_clase`
--
ALTER TABLE `t_clase`
  ADD PRIMARY KEY (`ID_Clase`), ADD KEY `ID_Horario` (`ID_Horario`);

--
-- Indices de la tabla `t_competencias`
--
ALTER TABLE `t_competencias`
  ADD PRIMARY KEY (`ID_Competencia`), ADD KEY `ID_Plan_De_Estudios` (`ID_Plan_De_Estudios`);

--
-- Indices de la tabla `t_fichas`
--
ALTER TABLE `t_fichas`
  ADD PRIMARY KEY (`Numero_De_Ficha`), ADD KEY `ID_Plan_De_Estudios` (`ID_Plan_De_Estudios`);

--
-- Indices de la tabla `t_formato_de_etapa_lectiva`
--
ALTER TABLE `t_formato_de_etapa_lectiva`
  ADD PRIMARY KEY (`ID_Formato`), ADD KEY `ID_Aprendiz` (`ID_Aprendiz`);

--
-- Indices de la tabla `t_horario`
--
ALTER TABLE `t_horario`
  ADD PRIMARY KEY (`ID_Horario`), ADD KEY `ID_Resultado_De_Aprendizaje` (`ID_Resultado_De_Aprendizaje`), ADD KEY `ID_Funcionario` (`ID_Funcionario`);

--
-- Indices de la tabla `t_inasistencia`
--
ALTER TABLE `t_inasistencia`
  ADD PRIMARY KEY (`ID_Inasistencia`), ADD KEY `ID_Aprendiz` (`ID_Aprendiz`);

--
-- Indices de la tabla `t_informacion_aprendices`
--
ALTER TABLE `t_informacion_aprendices`
  ADD PRIMARY KEY (`Documento_De_Identidad`);

--
-- Indices de la tabla `t_informacion_funcionarios`
--
ALTER TABLE `t_informacion_funcionarios`
  ADD PRIMARY KEY (`Documento_De_Identidad`);

--
-- Indices de la tabla `t_plan_de_estudios`
--
ALTER TABLE `t_plan_de_estudios`
  ADD PRIMARY KEY (`ID_Plan_De_Estudios`);

--
-- Indices de la tabla `t_resultado_de_aprendizaje`
--
ALTER TABLE `t_resultado_de_aprendizaje`
  ADD PRIMARY KEY (`ID_Resultado_De_Aprendizaje`), ADD KEY `ID_Actividad_De_Aprendizaje` (`ID_Actividad_De_Aprendizaje`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `t_actividades`
--
ALTER TABLE `t_actividades`
ADD CONSTRAINT `t_actividades_ibfk_1` FOREIGN KEY (`ID_Horario`) REFERENCES `t_horario` (`ID_Horario`),
ADD CONSTRAINT `t_actividades_ibfk_2` FOREIGN KEY (`ID_Aprendiz`) REFERENCES `t_informacion_aprendices` (`Documento_De_Identidad`);

--
-- Filtros para la tabla `t_actividad_de_aprendizaje`
--
ALTER TABLE `t_actividad_de_aprendizaje`
ADD CONSTRAINT `t_actividad_de_aprendizaje_ibfk_1` FOREIGN KEY (`ID_Competencia`) REFERENCES `t_competencias` (`ID_Competencia`);

--
-- Filtros para la tabla `t_calificaciones`
--
ALTER TABLE `t_calificaciones`
ADD CONSTRAINT `t_calificaciones_ibfk_1` FOREIGN KEY (`ID_Actividad`) REFERENCES `t_actividades` (`ID_Actividad`);

--
-- Filtros para la tabla `t_clase`
--
ALTER TABLE `t_clase`
ADD CONSTRAINT `t_clase_ibfk_1` FOREIGN KEY (`ID_Horario`) REFERENCES `t_horario` (`ID_Horario`);

--
-- Filtros para la tabla `t_competencias`
--
ALTER TABLE `t_competencias`
ADD CONSTRAINT `t_competencias_ibfk_1` FOREIGN KEY (`ID_Plan_De_Estudios`) REFERENCES `t_plan_de_estudios` (`ID_Plan_De_Estudios`);

--
-- Filtros para la tabla `t_fichas`
--
ALTER TABLE `t_fichas`
ADD CONSTRAINT `t_fichas_ibfk_1` FOREIGN KEY (`ID_Plan_De_Estudios`) REFERENCES `t_plan_de_estudios` (`ID_Plan_De_Estudios`);

--
-- Filtros para la tabla `t_formato_de_etapa_lectiva`
--
ALTER TABLE `t_formato_de_etapa_lectiva`
ADD CONSTRAINT `t_formato_de_etapa_lectiva_ibfk_1` FOREIGN KEY (`ID_Aprendiz`) REFERENCES `t_informacion_aprendices` (`Documento_De_Identidad`);

--
-- Filtros para la tabla `t_horario`
--
ALTER TABLE `t_horario`
ADD CONSTRAINT `t_horario_ibfk_1` FOREIGN KEY (`ID_Resultado_De_Aprendizaje`) REFERENCES `t_resultado_de_aprendizaje` (`ID_Resultado_De_Aprendizaje`),
ADD CONSTRAINT `t_horario_ibfk_2` FOREIGN KEY (`ID_Funcionario`) REFERENCES `t_informacion_funcionarios` (`Documento_De_Identidad`);

--
-- Filtros para la tabla `t_inasistencia`
--
ALTER TABLE `t_inasistencia`
ADD CONSTRAINT `t_inasistencia_ibfk_1` FOREIGN KEY (`ID_Aprendiz`) REFERENCES `t_informacion_aprendices` (`Documento_De_Identidad`);

--
-- Filtros para la tabla `t_resultado_de_aprendizaje`
--
ALTER TABLE `t_resultado_de_aprendizaje`
ADD CONSTRAINT `t_resultado_de_aprendizaje_ibfk_1` FOREIGN KEY (`ID_Actividad_De_Aprendizaje`) REFERENCES `t_actividad_de_aprendizaje` (`ID_Actividad_De_Aprendizaje`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
