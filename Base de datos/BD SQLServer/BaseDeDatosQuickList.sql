
---------------------------------------------------------------------- QUICKLIST

---------------------------------------------------------------------- CREAR Y BORRAR LA BASE DE DATOS
	
	--    Use master;
	--    Drop database BaseDeDatosQuickList;
	--    create database BaseDeDatosQuickList;
	--    Use BaseDeDatosQuickList;
	

---------------------------------------------------------------------- DAR FORMATO DE FECHA

	set dateformat dmy;

---------------------------------------------------------------------- CREAR TABLAS


	--FL
	create table T_Formato_De_Etapa_Lectiva(
  
		ID_Formato varchar(30) primary key, 
		Version_Formato Int, 
		Fecha_Actual datetime, 
		Codigo Varchar(30)

	)

	--PE
	Create table T_Plan_De_Estudios( 

		ID_Plan_De_Estudios varchar(30) primary key, 
		Nombre_Programa Varchar(100), 
		Version_Plan_De_Estudios int, 
		Meses_Etapa_Lectiva int ,
		Nivel_De_Formacion Varchar(100), 
	  
	) 

	--CO
	Create table T_Competencias( 

		ID_Competencia varchar(30) primary key, 
		ID_Plan_De_Estudios varchar(30) foreign key references T_Plan_De_Estudios (ID_Plan_De_Estudios),
		Competencia_A_Desarrollar text not null, 
	  
	)
	 
	--AA
	Create table T_Actividad_De_Aprendizaje( 

		ID_Actividad_De_Aprendizaje varchar(30) primary key, 
		ID_Competencia varchar(30) foreign key references T_Competencias (ID_Competencia),
		Fase_Del_Proyecto text not null, 
		Actividad_De_Aprendizaje text not null, 
	  
	)
	 
	--RA
	Create table T_Resultado_De_Aprendizaje( 

		ID_Resultado_De_Aprendizaje varchar(30) primary key, 
		ID_Actividad_De_Aprendizaje varchar(30) foreign key references T_Actividad_De_Aprendizaje (ID_Actividad_De_Aprendizaje),
		Resultado_De_Aprendizaje text not null, 
	  
	)

	--FI
	Create table T_Fichas(
		
		Numero_De_Ficha int primary key, 
		ID_Plan_De_Estudios varchar(30) foreign key references T_Plan_De_Estudios (ID_Plan_De_Estudios),
		ID_Formato_Etapa_Lectiva varchar(30) foreign key references T_Formato_De_Etapa_Lectiva (ID_Formato),
		Fecha_Inicio datetime not null, 
		Fecha_Fin datetime not null
		
	)

	--IF
	Create table T_Informacion_Funcionarios( 

		Documento_De_Identidad bigint primary key, 
		Contraseña Varchar(30), 
		Nombre Varchar(30) not null, 
		Primer_Apellido Varchar(30) not null, 
		Segundo_Apellido Varchar(30), 
		cargo Varchar(100),
		Correo_Electronico Varchar(100) not null, 
		Telefono_Fijo int, 
		Telefono_Celular bigint not null, 

	)

	--HO
	Create table T_Horario( 

		ID_Horario varchar(30) primary key, 
		ID_Ficha int foreign key references T_Fichas (Numero_De_Ficha),
		ID_Resultado_De_Aprendizaje varchar(30) foreign key references T_Resultado_De_Aprendizaje (ID_Resultado_De_Aprendizaje),
		ID_Funcionario bigint foreign key references T_Informacion_Funcionarios (Documento_De_Identidad),
		Dia_Semana Varchar(30), --Lunes, martes, mier......
		Hora_Inicio Varchar(30),
		Hora_Fin Varchar(30),
		Fecha_Inicio datetime not null,
		Fecha_Fin datetime not null,
		Lugar text
	  
	)

	--IA
	Create table T_Informacion_Aprendices( 

		Documento_De_Identidad bigint primary key, 
		Contraseña Varchar(30), 
		Nombre Varchar(30) not null, 
		Primer_Apellido Varchar(30) not null, 
		Segundo_Apellido Varchar(30), 
		Fecha_De_Nacimiento datetime default 'Desconocido', 
		Correo_Electronico Varchar(100) not null, 
		Genero Varchar(10) default 'Desconocido', 
		ID_Ficha int foreign key references T_Fichas (Numero_De_Ficha),
		Telefono_Fijo int, 
		Telefono_Celular bigint not null, 
		estado Varchar(30), 
		nombre_Proyecto text, 
		Estilos_Y_Ritmos_De_Aprendizaje text, 
	    Estrategia_Metodológica_De_Preferencia text, 
	    Caracteristicas_Culturales_Y_Sociales text
		

	)

	--AC 
	Create table T_Actividades( 

		ID_Actividad varchar(30) primary key, 
		ID_Horario varchar(30) foreign key references T_Horario (ID_Horario), 
		Titulo_Actividad Varchar(100) not null, 
		Descripcion_Actividad text not null, 
		Fecha_De_Entrega datetime default 'Desconocido', 
		Valor_Maximo_Actividad int default 'Desconocido'

	) 

	--CA
	Create table T_Calificaciones(
		
		ID_Actividad varchar(30) foreign key references T_Actividades (ID_Actividad),
		ID_Aprendiz bigint foreign key references T_Informacion_Aprendices (Documento_De_Identidad),
		Calificacion float,
		Observaciones text default 'No'  
		
	)

	--CL
	Create table T_Clase(
		
		ID_Clase varchar(30) primary key, 
		ID_Horario varchar(30) foreign key references T_Horario (ID_Horario),
		Fecha datetime not null, 
		
	)

	--IN
	Create table T_Inasistencia( 

		ID_Clase varchar(30) foreign key references T_Clase (ID_Clase),
		ID_Aprendiz bigint foreign key references T_Informacion_Aprendices (Documento_De_Identidad),
		Estado_De_Inasistencia Varchar(10) not null, --- CE (con escusa) y SE (sin escusa) 
		Justificacion_De_Inasistencia text default 'No'

	)

	
---------------------------------------------------------------------- ELIMINAR TABLAS
/*
		if object_id('Informacion_Aprendices') is not null
		  drop table Informacion_Aprendices;

		if object_id('Informacion_Instructores') is not null
		  drop table Informacion_Instructores;

		if object_id('Informacion_Administradores') is not null
		  drop table Informacion_Administradores;

		if object_id('Informacion_Actividades') is not null
		  drop table Informacion_Actividades;

		if object_id('Informacion_Asistencia') is not null
		  drop table Informacion_Asistencia;

		if object_id('Plan_De_Estudios') is not null
		  drop table Plan_De_Estudios;
*/


---------------------------------------------------------------------- INSERTAR REGISTROS "T_Formato_De_Etapa_Lectiva"

	insert into T_Formato_De_Etapa_Lectiva
	 values ('FL1',02,'30/09/2013','F007-P006-GFPI');

---------------------------------------------------------------------- INSERTAR REGISTROS "T_Plan_De_Estudios"

	insert into T_Plan_De_Estudios 
	 values ('PE1','ANALISIS Y DESARROLLO DE SISTEMAS DE INFORMACION',102,18,'TECNOLOGO');


---------------------------------------------------------------------- INSERTAR REGISTROS "T_Competencias"

	insert into T_Competencias
	 values ('PE1CO1','PE1','ANALIZAR LOS REQUISITOS DEL CLIENTE PARA CONSTRUIR EL SISTEMA DE INFORMACION.');

	insert into T_Competencias
	 values ('PE1CO2','PE1','PROMOVER LA INTERACCION IDONEA CONSIGO MISMO, CON LOS DEMAS Y CON LA NATURALEZA EN LOS CONTEXTOS LABORAL Y SOCIAL.');

	insert into T_Competencias
	 values ('PE1CO3','PE1','ESPECIFICAR LOS REQUISITOS NECESARIOS PARA DESARROLLAR EL SISTEMA DE INFORMACION DE ACUERDO CON LAS NECESIDADES DEL CLIENTE.');

	insert into T_Competencias
	 values ('PE1CO4','PE1','PARTICIPAR EN EL PROCESO DE NEGOCIACIÓN DE TECNOLOGÍA INFORMÁTICA PARA PERMITIR LA IMPLEMENTACIÓN DEL SISTEMA DE INFORMACIÓN.');
	
	insert into T_Competencias
	 values ('PE1CO5','PE1','DISEÑAR EL SISTEMA DE ACUERDO CON LOS REQUISITOS DEL CLIENTE.');

	insert into T_Competencias
	 values ('PE1CO6','PE1','CONSTRUIR EL SISTEMA QUE CUMPLA CON LOS REQUISITOS DE LA SOLUCIÓN INFORMÁTICA.');

	insert into T_Competencias
	 values ('PE1CO7','PE1','IMPLANTAR LA SOLUCION QUE CUMPLA CON LOS REQUISISTOS PARA SU OPERACIÓN.');

	insert into T_Competencias
	 values ('PE1CO8','PE1','APLICAR BUENAS PRÁCTICAS DE CALIDAD EN EL PROCESO DE DESARROLLO DE SOFTWARE,DE ACUERDO CON EL REFERENTE ADOPTADO EN LA EMPRESA.');

	insert into T_Competencias
	 values ('PE1CO9','PE1','COMPRENDER TEXTOS EN INGLÉS EN FORMA ESCRITA Y AUDITIVA.');

	insert into T_Competencias
	 values ('PE1CO10','PE1','PRODUCIR TEXTOS EN INGLÉS EN FORMA ESCRITA Y ORAL.');

	insert into T_Competencias
	 values ('PE1CO11','PE1','COMUNICACIÓN PARA PROGRAMAS DE TECNÓLOGO.');

---------------------------------------------------------------------- INSERTAR REGISTROS "T_Actividad_De_Aprendizaje"

	insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO1AA1','PE1CO1','ANALISIS','ELABORAR DIAGRAMAS DE CLASES.');

	insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO1AA2','PE1CO1','ANALISIS','ELABORAR DIAGRAMAS DE CASOS DE USO.');

	insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO1AA3','PE1CO1','ANALISIS','REALIZAR EL INFORME DE ANÁLISIS DEL SISTEMA QUE CUMPLA CON LOS REQUERIMIENTOS DE LA EMPRESA.');
	 
	insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO1AA4','PE1CO1','DISEÑO','ELABORAR BASES DE DATOS.');

	insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO1AA5','PE1CO1','ANALISIS','REALIZAR ALGORITMOS UTILIZANDO ATRIBUTOS, OBJETOS, MÉTODOS');

    insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO2AA1','PE1CO2','ANALISIS','ARGUMENTAR Y ACOGER LOS CRITERIOS QUE CONTRIBUYEN A LA RESOLUCIÓN DE PROBLEMAS');

	insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO2AA2','PE1CO2','ANALISIS','ESTABLECER PROCESOS COMUNICATIVOS ASERTIVOS QUE POSIBILITEN LA CONVIVENCIA EN LOS CONTEXTOS SOCIAL Y PRODUCTIVO');

	insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO1AA6','PE1CO1','ANALISIS','ELABORAR DIAGRAMAS DE TRANSICIÓN DE ESTADO.');

	insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO3AA1','PE1CO3','PLANEACION','ELABORAR EL INFORME DE REQUERIMIENTOS.');

	insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO3AA2','PE1CO3','PLANEACION','DISEÑAR Y APLICAR INSTRUMENTOS PARA RECOLECTAR INFORMACIÓN.');

	insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO3AA3','PE1CO3','PLANEACION','IDENTIFICAR EL SOFTWARE DE LA EMPRESA');

	insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO1AA7','PE1CO1','ANALISIS','REALIZAR ALGORITMOS UTILIZANDO VARIABLES, CONSTANTES, VARIABLES, BUCLES,');

	insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO2AA3','PE1CO2','PLANEACION','REALIZAR LOS PROCESOS DE FABRICACIÓN, CUMPLIENDO CON LAS NORMAS DE SEGURIDAD INDUSTRIAL Y AMBIENTAL. (SALUD OCUPACIONAL)');
	
	insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO4AA1','PE1CO4','DEFINICION','DIFERENCIAR LOS ELEMENTOS, CÓDIGOS, CONVENCIONES, UNIDADES DE MEDIDA Y SÍMBOLOS EMPLEADOS EN PLANOS');
	
	insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO5AA1','PE1CO5','DISEÑO','ELABORAR BASES DE DATOS.');

	insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO4AA2','PE1CO4','PLANEACION','VERIFICAR ESPECIFICACIONES DE LAS HERRAMIENTAS INFORMÁTICAS, ASÍ COMO DIFERENCIAS DE CARÁCTER TÉCNICO Y DE ESTÁNDARES DE CUMPLIMIENTO.');
	
	insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO4AA3','PE1CO4','PLANEACION','DETERMINAR ESPECIFICACIONES TÉCNICAS Y CONDICIONES PARA LA LICITACIÓN.');
	
	insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO5AA2','PE1CO5','DISEÑO','DISEÑAR EL COMPORTAMIENTO DE LAS CLASES Y OBJETOS.');
	
	insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO5AA3','PE1CO5','DISEÑO','ELABORAR DIAGRAMA DE DISTRIBUCIÓN.');

	 insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO5AA4','PE1CO5','ANALISIS','ELABORAR BASES DE DATOS.');

	 insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO5AA5','PE1CO5','DISEÑO','DISEÑAR EL DIAGRAMA DE DISTRIBUCIÓN.');

	 insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO5AA6','PE1CO5','DISEÑO','DISEÑAR LAS CLASES, LOS OBJETOS Y MECANISMOS DE COLABORACIÓN.');

	 insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO5AA7','PE1CO5','DISEÑO','DISEÑAR LA ARQUITECTURA DEL SISTEMA');

	 insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO5AA8','PE1CO5','DISEÑO','ELABORAR EL INFORME DE SELECCIÓN DE LAS HERRAMIENTAS PARA EL MONTAJE DEL SISTEMA');

	 insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO5AA9','PE1CO5','DISEÑO','DISEÑAR LA INTERFAZ DEL SISTEMA DE INFORMACIÓN');

	 insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO2AA4','PE1CO2','DISEÑO','ASUMIR RESPONSABLEMENTE LOS CRITERIOS DE PRESERVACIÓN Y CONSERVACIÓN DEL MEDIO AMBIENTE Y DE DESARROLLO SOSTENIBLE, EN EL EJERCICIO DE SU DESEMPEÑO LABORAL Y SOCIAL.');

	 insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO2AA5','PE1CO2','DISEÑO','ACTIVIDAD FÍSICA: DEFINICIÓN ,CARACTERÍSTICAS, COMPONENTES, VENTAJAS. (CULTURA FÍSICA)');

     insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO6AA1','PE1CO6','DESARROLLO','IDENTIFICAR EL ENTORNO DE TRABAJO DE LAS HERRAMIENTAS DE BASE DE DATOS YA SEA SQL SERVER U ORACLE');

	 insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO6AA2','PE1CO6','DESARROLLO','IDENTIFICAR LAS FUNCIONES DE CADA UNA DE LAS HERRAMIENTAS DE LENGUAJE DE PROGRAMACIÓN. .NET Y JAVA)');

	 insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO6AA3','PE1CO6','DESARROLLO','HABILIDADES PROCEDIMENTALES A NIVEL TECNOLÓGICO EL HACER TECNOLÓGICO EN CONTEXTO');

	 insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO6AA4','PE1CO6','DESARROLLO','HABILIDADES METODOLÓGICAS, DE LA ACTUACIÓN CONSCIENTE Y REFLEXIVA DE LOS EJERCICIOS DE MONITOREO DE LO QUE SE HACE APRENDER A APRENDER,');

	 insert into T_Actividad_De_Aprendizaje
	 values ('PE1CO6AA5','PE1CO6','DESARROLLO','DESARROLLAR SISTEMAS DE INFORMACIÓN ENTORNO WEB Y CLIENTE SERVIDOR');



---------------------------------------------------------------------- INSERTAR REGISTROS "T_Resultado_De_Aprendizaje"

	insert into T_Resultado_De_Aprendizaje
	 values ('PE1CO1AA1RA1','PE1CO1AA1','REPRESENTA EL BOSQUEJO DE LA SOLUCIÓN AL PROBLEMA PRESENTADO POR EL CLIENTE, MEDIANTE LA ELABORACIÓN DE DIAGRAMAS DE CASOS DE USO, APOYADO EN EL ANÁLISIS DEL INFORME DE REQUERIMIENTOS, AL CONFRONTAR LA SITUACIÓN PROBLEMICA CON EL USUARIO SEGÚN NORMAS Y PROTOCOLOS DE LA ORGANIZACIÓN.');
	
	insert into T_Resultado_De_Aprendizaje
	 values ('PE1CO1AA2RA1','PE1CO1AA2','INTERPRETAR LOS DIAGRAMAS DE CASO DE USO, DE OBJETOS, DE ESTADO, DE SECUENCIA, DE PAQUETES O COMPONENTES, DE DESPLIEGUE, DE COLABORACIÓN SEGÚN EL DISEÑO ENTREGADO');
	
	insert into T_Resultado_De_Aprendizaje
	 values ('PE1CO1AA3RA1','PE1CO1AA3','ELABORAR EL INFORME DE LOS RESULTADOS DEL ANÁLISIS DEL SISTEMA DE INFORMACIÓN, DE ACUERDO CON LOS REQUERIMIENTOS DEL CLIENTE SEGÚN NORMAS Y PROTOCOLOS ESTABLECIDOS.');
	
	insert into T_Resultado_De_Aprendizaje
	 values ('PE1CO1AA4RA1','PE1CO1AA4','VALORAR LA INCIDENCIA DE LOS DATOS EN LOS PROCESOS DEL MACRO SISTEMA, TOMANDO COMO REFERENTE EL DICCIONARIO DE DATOS Y LAS MINI ESPECIFICACIONES, PARA LA CONSOLIDACIÓN DE LOS DATOS QUE INTERVIENEN, DE ACUERDO CON PARÁMETROS ESTABLECIDOS.');
	
	insert into T_Resultado_De_Aprendizaje
	 values ('PE1CO1AA5RA1','PE1CO1AA5','IDENTIFICAR CADA UNO DE LOS CONCEPTOS Y PRINCIPIOS QUE CONSTITUYE LA PROGRAMACIÓN ORIENTADA A OBJETOS PARA INTREPRETAR EL DISEÑO');
	
	insert into T_Resultado_De_Aprendizaje
	 values ('PE1CO2AA1RA1','PE1CO2AA1','ASUMIR LOS DEBERES Y DERECHOS CON BASE EN LAS LEYES Y LA NORMATIVA INSTITUCIONAL EN EL MARCO DE SU PROYECTO DE VIDA.');
	
	insert into T_Resultado_De_Aprendizaje
	 values ('PE1CO2AA2RA1','PE1CO2AA2','DESARROLLAR PROCESOS COMUNICATIVOS EFICACES Y ASERTIVOS DENTRO DE CRITERIOS DE RACIONALIDAD QUE POSIBILITEN LA CONVIVENCIA, EL ESTABLECIMIENTO DE ACUERDOS, LA CONSTRUCCION COLECTIVA DEL CONOCIMIENTO Y LA RESOLUCION DE PROBLEMAS DE CARACTER PRODUCTIVO Y SOCIAL.');
	
	insert into T_Resultado_De_Aprendizaje
	 values ('PE1CO1AA6RA1','PE1CO1AA6','CONSTRUIR EL MODELO CONCEPTUAL DEL MACROSISTEMA FRENTE A LOS REQUERIMIENTOS DEL CLIENTE, MEDIANTE EL USO E INTERPRETACIÓN DE LA INFORMACIÓN LEVANTADA, REPRESENTADO EN DIAGRAMAS DE CLASE, DE INTERACCIÓN, COLABORACIÓN Y CONTRATOS DE OPERACIÓN, DE ACUERDO CON LAS DIFERENTES SECUENCIAS, FASES Y PROCEDIMIENTOS DEL SISTEMA.');
	
	insert into T_Resultado_De_Aprendizaje
	 values ('PE1CO3AA1RA1','PE1CO3AA1','ELABORAR MAPAS DE PROCESOS QUE PERMITAN IDENTIFICAR LAS ÁREAS INVOLUCRADAS EN UN SISTEMA DE INFORMACIÓN, UTILIZANDO HERRAMIENTAS INFORMÁTICAS Y LAS TICS, PARA GENERAR INFORMES SEGÚN LAS NECESIDADES DE LA EMPRESA');
	
	insert into T_Resultado_De_Aprendizaje
	 values ('PE1CO3AA2RA1','PE1CO3AA2','APLICAR LAS TÉCNICAS DE RECOLECCIÓN DE DATOS , DISEÑANDO lOS INSTRUMENTOS NECESARIOS PARA EL PROCESAMIENTO DE INFORMACIÓN, DEACUERDO CON LA SITUACIÓN PLANTEADA POR LA EMPRESA.');
	
	insert into T_Resultado_De_Aprendizaje
	 values ('PE1CO3AA3RA1','PE1CO3AA3','PLANTEAR DIFERENTES ALTERNATIVAS, DE MODELOS TECNOLÓGICOS DE INFORMACIÓN EMPRESARIAL, TENIENDO EN CUENTA LA PLATAFORMA TECNOLÓGICA DE LA EMPRESA Y LAS TENDENCIAS DEL MERCADO, PARA DAR SOLUCIÓN A LAS SITUACIONES RELACIONADAS CON EL MANEJO DE LA INFORMACIÓN DE LA ORGANIZACIÓN.');
	
	insert into T_Resultado_De_Aprendizaje
	 values ('PE1CO1AA7RA1','PE1CO1AA7','ELABORAR EL INFORME DE LOS RESULTADOS DEL ANÁLISIS DEL SISTEMA DE INFORMACIÓN, DE ACUERDO CON LOS REQUERIMIENTOS DEL CLIENTE SEGÚN NORMAS Y PROTOCOLOS ESTABLECIDOS.');
	
	insert into T_Resultado_De_Aprendizaje
	 values ('PE1CO1AA4RA2','PE1CO1AA4','CONSTRUIR EL MODELO CONCEPTUAL DEL MACROSISTEMA FRENTE A LOS REQUERIMIENTOS DEL CLIENTE, MEDIANTE EL USO E INTERPRETACIÓN DE LA INFORMACIÓN LEVANTADA, REPRESENTADO EN DIAGRAMAS DE CLASE, DE INTERACCIÓN, COLABORACIÓN Y CONTRATOS DE OPERACIÓN, DE ACUERDO CON LAS DIFERENTES SECUENCIAS, FASES Y PROCEDIMIENTOS DEL SISTEMA.');



---------------------------------------------------------------------- INSERTAR REGISTROS "T_Fichas"

	insert into T_Fichas
	 values (750566,'PE1','FL1','07/07/2014','07/07/2016');

	insert into T_Fichas
	 values (750567,'PE1','FL1','01/10/2014','01/10/2016');

	insert into T_Fichas
	 values (750568,'PE1','FL1','19/01/2015','19/01/2017');

---------------------------------------------------------------------- INSERTAR REGISTROS "T_Informacion_Funcionarios"

	insert into T_Informacion_Funcionarios
	 values (1022453456,'3EYRH48','ALFREDO','JIMENES','CAICEDO','AMINISTRADOR','AlfredJ3453@misena.edu.co',8596421,312456789585);

	 insert into T_Informacion_Funcionarios
	 values (7656756756,'345T4G8','LUIS','RESTREPO','VENAVIDES','INSTRUCTOR','LRVENAVIDES12@misena.edu.co',7656754,312534234235);

	 insert into T_Informacion_Funcionarios
	 values (7653567675,'56Y6Y56','ENRIQUE','OLARTE','CASTRO','INSTRUCTOR','enriguartg453@hotmail.com',7634551,323656456353);

	 insert into T_Informacion_Funcionarios
	 values (8564566786,'7UH7YBHB','SARA','VARGAS','BOLIBAR','INSTRUCTOR','saraV_432@misena.edu.co',64523431,321786565654);

	 insert into T_Informacion_Funcionarios
	 values (3576868647,'56YERGF8','CAMILO','JIMENES','VEGA','INSTRUCTOR','CamiloJimenes-45@gmail.com',9246524,31588285655);

	 insert into T_Informacion_Funcionarios
	 values (2686456557,'CVFDGGFG','LORENA','MENDEZ','RODRIGUES','INSTRUCTOR','lorenita66_5@misena.edu.co',6535454,320545423563);

	 insert into T_Informacion_Funcionarios
	 values (3467687864,'45645346','CATALINA','VENAVIDEZ','TORRES','INSTRUCTOR','cataVenavidez@hotmail.com',4531356,76742156555);

	 insert into T_Informacion_Funcionarios
	 values (4234565764,'56YR5T66','ALGEMIRO','CASTRO','CASTAÑEDA','INSTRUCTOR','algemiroCastro__454@misena.edu.co',7673561,32476745676);

	 insert into T_Informacion_Funcionarios
	 values (23455757434,'5RGTRGF','PABLO','MEJIA','CASAS','INSTRUCTOR','AlfredJ3453@gmail.com',8655345,27342565566);

	 insert into T_Informacion_Funcionarios
	 values (65345346577,'12RRFED','PEDRO','IVAÑES','PINZON','INSTRUCTOR','pedroivañes-343@misena.edu.co',945345454,853542345345);

---------------------------------------------------------------------- INSERTAR REGISTROS "T_Horario"

	insert into T_Horario
	 values ('PE1CO1AA1RA1HO1',750566,'PE1CO1AA1RA1',1022453456,'LUNES','12:00','15:00','07/07/2014','31/08/2014','Aula 402 CIDCA - Cr 38 Otro');

	insert into T_Horario
	 values ('PE1CO1AA2RA1HO1',750566,'PE1CO1AA2RA1',7656756756,'LUNES','15:00','18:00','07/07/2014','31/08/2014','Aula 402 CIDCA - Cr 38 Otro');

	insert into T_Horario
	 values ('PE1CO1AA3RA1HO1',750566,'PE1CO1AA3RA1',7653567675,'MARTES','13:00','18:00','07/07/2014','31/08/2014','Aula 402 CIDCA - Cr 38 Otro');

	insert into T_Horario
	 values ('PE1CO1AA4RA1HO1',750566,'PE1CO1AA4RA1',8564566786,'MIERCOLES','12:00','18:00','07/07/2014','31/08/2014','Aula 308 CIDCA - Cr 38 Otro')

	insert into T_Horario
	 values ('PE1CO1AA5RA1HO1',750566,'PE1CO1AA5RA1',3576868647,'JUEVES','12:00','18:00','07/07/2014','31/08/2014','Aula 308 CIDCA - Cr 38 Otro');

	insert into T_Horario
	 values ('PE1CO1AA6RA1HO1',750566,'PE1CO1AA6RA1',2686456557,'VIERNES','12:00','15:00','07/07/2014','31/08/2014','Aula 402 CIDCA - Cr 38 Otro');

	insert into T_Horario
	 values ('PE1CO1AA7RA1HO1',750566,'PE1CO1AA7RA1',3467687864,'VIERNES','15:00','18:00','07/07/2014','31/08/2014','Aula 402 CIDCA - Cr 38 Otro');


---------------------------------------------------------------------- INSERTAR REGISTROS "T_Informacion_Aprendices"


	insert into T_Informacion_Aprendices
	 values (7785885485,'5G5G5UR', 'PEDRO','CASAS','CUEVAS','08/03/1995','Pedrocuevas4545@hotmail.com','M',750566,6545342,2376534545,'EN FORMACION','PROYECTO1','','','');

	insert into T_Informacion_Aprendices
	 values (8456345345,'R6TUR56Y', 'CATERINE','RIVERA','BAUTISTA','04/10/1994','caterinerivera@misena.edu.co','F',750566,7345455,7634523434,'EN FORMACION','PROYECTO2','','','');
	
	insert into T_Informacion_Aprendices
	 values (5673563455,'5FG55TG5G', 'LEO','JIMENES','MERCADO','12/12/1996','leji_4ee@gmail.com','M',750566,5423434,134646235234,'EN FORMACION','PROYECTO3','','','');

	insert into T_Informacion_Aprendices
	 values (1235795434,'55G5HJ6HH', 'CRISTIAN','GARZON','OTAM','15/07/1990','cristin5445@hotmail.com','M',750566,56323434,7524546556,'EN FORMACION','PROYECTO4','','','');

	insert into T_Informacion_Aprendices
	 values (453413574,'4G44G4G4G', 'MARIA','HERNANDEZ','RODRIGUEZ','26/10/1996','mariri343@misena.edu.co','F',750566,21344454,5635423434,'EN FORMACION','PROYECTO5','','','');

	insert into T_Informacion_Aprendices
	 values (9842345766,'5RY5RYGTY', 'ALFREDO','CUEVAS','VELASQUEZ','20/01/1989','alfrecuevas-34@gmail.com','M',750566,8564356,7653454565,'EN FORMACION','PROYECTO6','','','');

	insert into T_Informacion_Aprendices
	 values (2356899745,'E4TG4RTTT', 'DAVID','CASALLAS','VISCONTI','01/03/1995','davidcasallas_13@gmail.com','M',750567,5634545,677456356,'EN FORMACION','PROYECTO7','','','');

	insert into T_Informacion_Aprendices
	 values (9934545578,'45TS4T5S5T', 'ANDREA','RIVERA','CALDAS','14/11/1997','andra2rivera@hotmail.com','F',750567,34223434,767673545,'EN FORMACION','PROYECTO8','','','');

	insert into T_Informacion_Aprendices
	 values (4352435865,'Y5Y5YT5R', 'JOSE','GUAYAMBUCO','AREVALO','03/03/1996','guayambucojose@misena.edu.co','M',750567,52345434,65234234565,'RETIRO VOLUNTARIO','PROYECTO9','','','');

	insert into T_Informacion_Aprendices
	 values (9734568645,'R5YR5Y6YR', 'DANIEL','PAREDES','SIERRA','20/09/1996','sierraDP@hotmail.com','M',750567,5445454,8756356565,'EN FORMACION','PROYECTO10','','','');

	insert into T_Informacion_Aprendices
	 values (4545579898,'R6TYHT6HY', 'JESUS','CORREA','CIFUENTES','16/02/1993','jesuscorrea123123@misena.edu.co','M',750567,1233234,93560756677,'EN FORMACION','PROYECTO11','','','');

	insert into T_Informacion_Aprendices
	 values (1843684547,'TH6YT6YT6', 'DANIELA','PARRA','LOPEZ','30/08/1995','danielaparra34@gmail.com','F',750568,1764566,95345466745,'EN FORMACION','PROYECTO12','','','');

	insert into T_Informacion_Aprendices
	 values (9423466724,'5R5RY6R6Y', 'PEDRO','QUIROGA','MERCHAN','23/05/1996','padrqiro4345@gmail.com','M',750568,6745234,565456564,'EN FORMACION','PROYECTO13','','','');

	insert into T_Informacion_Aprendices
	 values (6834548534,'FGBFTGFTG', 'OSWALDO','FARIAS','YEPEZ','02/08/1994','oswaldofarias-234@hotmail.com','M',750568,23455556,7634524345,'EN FORMACION','PROYECTO14','','','');

	insert into T_Informacion_Aprendices
	 values (1842346523,'T4YT56566', 'WENDY','LOPEZ','TORRES','04/01/1998','wendyLT_15@misena.edu.co','F',750568,84243545,389565443443,'RETIRO VOLUNTARIO','PROYECTO15','','','');

	insert into T_Informacion_Aprendices
	 values (1237765234,'165Y6Y6YY', 'PAUL','DIAS','DIAS','05/10/1995','pauldiasdias@gmail.com','M',750568,7356767,945624676766,'EN FORMACION','PROYECTO16','','','');


---------------------------------------------------------------------- INSERTAR REGISTROS "T_Actividades"

	insert into T_Actividades
	 values ('PE1CO1AA1RA1HO1AC1','PE1CO1AA1RA1HO1','ACTIVIDAD1','DESCRIPCION ACTIVIDAD 1','15/11/2014',5 );

	insert into T_Actividades
	 values ('PE1CO1AA1RA1HO1AC2','PE1CO1AA1RA1HO1','ACTIVIDAD2','DESCRIPCION ACTIVIDAD 2','15/11/2014',10 );

	insert into T_Actividades
	 values ('PE1CO1AA1RA1HO1AC3','PE1CO1AA1RA1HO1','ACTIVIDAD3','DESCRIPCION ACTIVIDAD 3','15/11/2014',5 );

	insert into T_Actividades
	 values ('PE1CO1AA3RA1HO1AC1','PE1CO1AA3RA1HO1','ACTIVIDAD4','DESCRIPCION ACTIVIDAD 4','15/11/2014',5 );

	insert into T_Actividades
	 values ('PE1CO1AA3RA1HO1AC2','PE1CO1AA3RA1HO1','ACTIVIDAD5','DESCRIPCION ACTIVIDAD 5','15/11/2014',10 );

	insert into T_Actividades
	 values ('PE1CO1AA3RA1HO1AC3','PE1CO1AA3RA1HO1','ACTIVIDAD6','DESCRIPCION ACTIVIDAD 6','15/11/2014',5 );

	insert into T_Actividades
	 values ('PE1CO1AA4RA1HO1AC1','PE1CO1AA4RA1HO1','ACTIVIDAD7','DESCRIPCION ACTIVIDAD 7','15/11/2014',100 );

	insert into T_Actividades
	 values ('PE1CO1AA4RA1HO1AC2','PE1CO1AA4RA1HO1','ACTIVIDAD8','DESCRIPCION ACTIVIDAD 8','15/11/2014',100 );

	 insert into T_Actividades
	 values ('PE1CO1AA4RA1HO1AC3','PE1CO1AA4RA1HO1','ACTIVIDAD9','DESCRIPCION ACTIVIDAD 9','15/11/2014',5 );

	 insert into T_Actividades
	 values ('PE1CO1AA4RA1HO1AC4','PE1CO1AA4RA1HO1','ACTIVIDAD10','DESCRIPCION ACTIVIDAD 10','15/11/2014',5 );

	 insert into T_Actividades
	 values ('PE1CO1AA5RA1HO1AC1','PE1CO1AA5RA1HO1','ACTIVIDAD11','DESCRIPCION ACTIVIDAD 11','15/11/2014',100 );

	 insert into T_Actividades
	 values ('PE1CO1AA5RA1HO1AC2','PE1CO1AA5RA1HO1','ACTIVIDAD12','DESCRIPCION ACTIVIDAD 12','15/11/2014',5 );

	 insert into T_Actividades
	 values ('PE1CO1AA5RA1HO1AC3','PE1CO1AA5RA1HO1','ACTIVIDAD13','DESCRIPCION ACTIVIDAD 13','15/11/2014',5 );

	 insert into T_Actividades
	 values ('PE1CO1AA7RA1HO1AC1','PE1CO1AA7RA1HO1','ACTIVIDAD14','DESCRIPCION ACTIVIDAD 14','15/11/2014',100 );

	 insert into T_Actividades
	 values ('PE1CO1AA7RA1HO1AC2','PE1CO1AA7RA1HO1','ACTIVIDAD15','DESCRIPCION ACTIVIDAD 15','15/11/2014',5 );

	 insert into T_Actividades
	 values ('PE1CO1AA7RA1HO1AC3','PE1CO1AA7RA1HO1','ACTIVIDAD16','DESCRIPCION ACTIVIDAD 16','15/11/2014',10 );

---------------------------------------------------------------------- INSERTAR REGISTROS "T_Calificaciones"


	insert into T_Calificaciones
	 values ('PE1CO1AA1RA1HO1AC1',7785885485,3.5,'NESESITA REFORSAR LOS CONOCIMIENTOS VISTOS EN CLASE');

	insert into T_Calificaciones
	 values ('PE1CO1AA1RA1HO1AC2',8456345345,10,'No');

	insert into T_Calificaciones
	 values ('PE1CO1AA1RA1HO1AC3',5673563455,5,'No');

	insert into T_Calificaciones
	 values ('PE1CO1AA3RA1HO1AC1',1235795434,1,'DEVE VOLVER A PRESENTAR LA ACTIVIDAD');
	
	insert into T_Calificaciones
	 values ('PE1CO1AA3RA1HO1AC2',453413574,7,'No');
	
	insert into T_Calificaciones
	 values ('PE1CO1AA3RA1HO1AC3',9842345766,5,'No');
	
	insert into T_Calificaciones
	 values ('PE1CO1AA4RA1HO1AC1',2356899745,80,'No');
	
	insert into T_Calificaciones
	 values ('PE1CO1AA4RA1HO1AC2',9934545578,100,'No');
	
	insert into T_Calificaciones
	 values ('PE1CO1AA4RA1HO1AC3',4352435865,0,'DEVE PRESENTAR PLAN DE MEJORAMIENTO');
	
	insert into T_Calificaciones
	 values ('PE1CO1AA4RA1HO1AC4',9734568645,3,'DEVE VOLVER A PRESENTAR LA ACTIVIDAD');
	
	insert into T_Calificaciones
	 values ('PE1CO1AA5RA1HO1AC1',4545579898,50,'DEVE TERMINAR LA ACTIVIDAD');
	
	insert into T_Calificaciones
	 values ('PE1CO1AA5RA1HO1AC2',1843684547,5,'No');
	
	insert into T_Calificaciones
	 values ('PE1CO1AA5RA1HO1AC3',9423466724,4,'No');
	
	insert into T_Calificaciones
	 values ('PE1CO1AA7RA1HO1AC1',6834548534,90,'No');
	
	insert into T_Calificaciones
	 values ('PE1CO1AA7RA1HO1AC2',1842346523,4,'DEVE VOLVER A PRESENTAR LA ACTIVIDAD');
	
	insert into T_Calificaciones
	 values ('PE1CO1AA7RA1HO1AC3',1237765234,10,'No');
		
---------------------------------------------------------------------- INSERTAR REGISTROS "T_Clase"

	insert into T_Clase
	 values ('PE1CO1AA1RA1HO1CL1','PE1CO1AA1RA1HO1','07/07/2014');

	insert into T_Clase
	 values ('PE1CO1AA1RA1HO1CL2','PE1CO1AA1RA1HO1','14/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA1RA1HO1CL3','PE1CO1AA1RA1HO1','21/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA2RA1HO1CL1','PE1CO1AA2RA1HO1','07/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA2RA1HO1CL2','PE1CO1AA2RA1HO1','14/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA2RA1HO1CL3','PE1CO1AA2RA1HO1','21/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA3RA1HO1CL1','PE1CO1AA3RA1HO1','08/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA3RA1HO1CL2','PE1CO1AA3RA1HO1','15/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA3RA1HO1CL3','PE1CO1AA3RA1HO1','22/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA4RA1HO1CL1','PE1CO1AA4RA1HO1','09/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA4RA1HO1CL2','PE1CO1AA4RA1HO1','16/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA4RA1HO1CL3','PE1CO1AA4RA1HO1','23/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA5RA1HO1CL1','PE1CO1AA5RA1HO1','10/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA5RA1HO1CL2','PE1CO1AA5RA1HO1','17/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA5RA1HO1CL3','PE1CO1AA5RA1HO1','24/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA6RA1HO1CL1','PE1CO1AA6RA1HO1','11/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA6RA1HO1CL2','PE1CO1AA6RA1HO1','18/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA6RA1HO1CL3','PE1CO1AA6RA1HO1','25/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA7RA1HO1CL1','PE1CO1AA7RA1HO1','11/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA7RA1HO1CL2','PE1CO1AA7RA1HO1','18/11/2014');

	insert into T_Clase
	 values ('PE1CO1AA7RA1HO1CL3','PE1CO1AA7RA1HO1','25/11/2014');



---------------------------------------------------------------------- INSERTAR REGISTROS "T_Inasistencia"

	insert into T_Inasistencia
	 values ('PE1CO1AA1RA1HO1CL1',7785885485,'CE','Cita odontologia en el hospital pablo vi' );

	insert into T_Inasistencia
	 values ('PE1CO1AA1RA1HO1CL1',8456345345,'NO','' );

	insert into T_Inasistencia
	 values ('PE1CO1AA1RA1HO1CL1',5673563455,'NO','' );

	insert into T_Inasistencia
	 values ('PE1CO1AA1RA1HO1CL1',1235795434,'SE','' );

	insert into T_Inasistencia
	 values ('PE1CO1AA1RA1HO1CL1',453413574,'NO','' );

	insert into T_Inasistencia
	 values ('PE1CO1AA1RA1HO1CL1',9842345766,'CE','Citacion para solucion de la situacion militar' );

	insert into T_Inasistencia
	 values ('PE1CO1AA2RA1HO1CL1',7785885485,'NO','' );

	insert into T_Inasistencia
	 values ('PE1CO1AA2RA1HO1CL1',8456345345,'SE','' );

	insert into T_Inasistencia
	 values ('PE1CO1AA2RA1HO1CL1',5673563455,'NO','' );

	insert into T_Inasistencia
	 values ('PE1CO1AA2RA1HO1CL1',1235795434,'SE','' );

	insert into T_Inasistencia
	 values ('PE1CO1AA2RA1HO1CL1',453413574,'NO','' );

	insert into T_Inasistencia
	 values ('PE1CO1AA2RA1HO1CL1',9842345766,'NO','' );

	insert into T_Inasistencia
	 values ('PE1CO1AA3RA1HO1CL1',7785885485,'NO','' );

	insert into T_Inasistencia
	 values ('PE1CO1AA3RA1HO1CL1',8456345345,'CE','Entrevista para el contrato de aprendizaje' );

	insert into T_Inasistencia
	 values ('PE1CO1AA2RA1HO1CL1',5673563455,'NO','' );

	insert into T_Inasistencia
	 values ('PE1CO1AA3RA1HO1CL1',1235795434,'NO','' );

	insert into T_Inasistencia
	 values ('PE1CO1AA3RA1HO1CL1',453413574,'NO','' );

	insert into T_Inasistencia
	 values ('PE1CO1AA3RA1HO1CL1',9842345766,'SE','' );

---------------------------------------------------------------------- CONSULTAS CON JOIN

	--Gerarquia del plan de estudios de una ficha

		select T_Fichas.Numero_De_Ficha,T_Plan_De_Estudios.Nombre_Programa,T_Competencias.Competencia_A_Desarrollar,T_Actividad_De_Aprendizaje.Actividad_De_Aprendizaje,T_Resultado_De_Aprendizaje.Resultado_De_Aprendizaje
		 from T_Plan_De_Estudios 
		 join T_Fichas on T_Plan_De_Estudios.ID_Plan_De_Estudios = T_Fichas.ID_Plan_De_Estudios
		 join T_Competencias on T_Plan_De_Estudios.ID_Plan_De_Estudios = T_Competencias.ID_Plan_De_Estudios
		 join T_Actividad_De_Aprendizaje on T_Competencias.ID_Competencia = T_Actividad_De_Aprendizaje.ID_Competencia
		 join T_Resultado_De_Aprendizaje on T_Actividad_De_Aprendizaje.ID_Actividad_De_Aprendizaje = T_Resultado_De_Aprendizaje.ID_Actividad_De_Aprendizaje
		 where T_Fichas.Numero_De_Ficha=750566;


	--Obtener informacion basica del los instructores asignados a cada horario

		select T_Horario.Dia_Semana,T_Horario.Hora_Inicio,T_Horario.Hora_Fin,T_Informacion_Funcionarios.Nombre,T_Informacion_Funcionarios.Primer_Apellido,T_Informacion_Funcionarios.Correo_Electronico,T_Informacion_Funcionarios.Telefono_Fijo,T_Informacion_Funcionarios.Telefono_Celular
		 from T_Horario left outer 
		 join T_Informacion_Funcionarios on T_Horario.ID_Funcionario = T_Informacion_Funcionarios.Documento_De_Identidad

	--Obtener Calificaciones de las actividades de un estudiante

		select T_Informacion_Aprendices.Documento_De_Identidad,T_Informacion_Aprendices.Nombre,T_Informacion_Aprendices.Primer_Apellido,T_Actividades.Titulo_Actividad,T_Actividades.Valor_Maximo_Actividad,T_Calificaciones.Calificacion,T_Calificaciones.Observaciones
		 from T_Informacion_Aprendices 
		 join T_Calificaciones on T_Informacion_Aprendices.Documento_De_Identidad = T_Calificaciones.ID_Aprendiz
		 join T_Actividades on T_Calificaciones.ID_Actividad = T_Actividades.ID_Actividad;
		 
		 
	--Obtener las clases de un dia especifico

		select T_Actividad_De_Aprendizaje.Actividad_De_Aprendizaje,T_Clase.Fecha,T_Horario.Dia_Semana,T_Horario.Hora_Inicio,T_Horario.Hora_Fin
		 from T_Clase
		 join T_Horario on T_Clase.ID_Horario = T_Horario.ID_Horario
		 join T_Resultado_De_Aprendizaje on T_Horario.ID_Resultado_De_Aprendizaje=T_Resultado_De_Aprendizaje.ID_Resultado_De_Aprendizaje
		 join T_Actividad_De_Aprendizaje on T_Resultado_De_Aprendizaje.ID_Actividad_De_Aprendizaje=T_Actividad_De_Aprendizaje.ID_Actividad_De_Aprendizaje
		 where T_Clase.Fecha='18/11/2014';

	--Obtener listado de estudiantes que tienen fallas con escusa

		select T_Informacion_Aprendices.Documento_De_Identidad,T_Informacion_Aprendices.Nombre,T_Informacion_Aprendices.Primer_Apellido,T_Inasistencia.Estado_De_Inasistencia,T_Inasistencia.Justificacion_De_Inasistencia
		 from T_Informacion_Aprendices 
		 join T_Inasistencia on T_Informacion_Aprendices.Documento_De_Identidad = T_Inasistencia.ID_Aprendiz
		 where T_Inasistencia.Estado_De_Inasistencia='CE';


---------------------------------------------------------------------- INDICES

	create nonclustered index agruparPorDocumento
	 on T_Informacion_Aprendices (Documento_De_Identidad);

	create nonclustered index agruparPorNombre
	 on T_Informacion_Aprendices (Nombre);

	create nonclustered index agruparPorApellido
	 on T_Informacion_Aprendices (Nombre);

	create nonclustered index agruparPorFechaDeIngreso
	 on T_Fichas (Fecha_Inicio)

	create nonclustered index agruparPorCalificacion
	 on T_Calificaciones (calificacion);

    create nonclustered index agruparPorFechaDeEntrega
	 on T_Actividades (Fecha_De_Entrega);

--------------------------------------------------------------------PROCEDIMIENTOS ALMACENADOS

	create procedure sp_Insertar_Aprendiz (
		
		@Documento_De_Identidad bigint, 
		@Contraseña Varchar(30), 
		@Nombre Varchar(30), 
		@Primer_Apellido Varchar(30), 
		@Segundo_Apellido Varchar(30), 
		@Fecha_De_Nacimiento datetime, 
		@Correo_Electronico Varchar(100), 
		@Genero Varchar(10), 
		@Telefono_Fijo int, 
		@Telefono_Celular bigint, 
		@estado Varchar(30),
		@nombre_Proyecto text,
		@Estilos_Y_Ritmos_De_Aprendizaje text,
	    @Estrategia_Metodológica_De_Preferencia text,
	    @Caracteristicas_Culturales_Y_Sociales text

	)as
	insert into T_Informacion_Aprendices (Documento_De_Identidad, Contraseña, Nombre, Primer_Apellido, Segundo_Apellido, Fecha_De_Nacimiento, Correo_Electronico, Genero, Telefono_Fijo, Telefono_Celular, estado,nombre_Proyecto,Estilos_Y_Ritmos_De_Aprendizaje,Estrategia_Metodológica_De_Preferencia,Caracteristicas_Culturales_Y_Sociales)
	values(@Documento_De_Identidad, @Contraseña, @Nombre, @Primer_Apellido, @Segundo_Apellido, @Fecha_De_Nacimiento, @Correo_Electronico, @Genero, @Telefono_Fijo, @Telefono_Celular, @estado,@nombre_Proyecto,@Estilos_Y_Ritmos_De_Aprendizaje,@Estrategia_Metodológica_De_Preferencia,@Caracteristicas_Culturales_Y_Sociales)
	
	execute sp_Insertar_Aprendiz '534545465','6y56y56y','alfredo','jimenes','restrepo','4/2/1996','alferejjj5454@gmail.com','M','656456','6456456','EN FORMACION','','','','';
	execute sp_Insertar_Aprendiz '534534525','6y5dfgd6','algemiro','jimenes','restrepo','4/2/1996','alferejjj5454@gmail.com','M','656456','6456456','EN FORMACION','','','','';
	execute sp_Insertar_Aprendiz '753456456','56y56y5t','cindy','jimenes','restrepo','4/2/1996','alferejjj5454@gmail.com','F','656456','6456456','EN FORMACION','','','','';
	execute sp_Insertar_Aprendiz '867567567','5j5u5ytf','carmenza','jimenes','restrepo','4/2/1996','alferejjj5454@gmail.com','M','656456','6456456','EN FORMACION','','','','';
	execute sp_Insertar_Aprendiz '124645656','6y5545tf','laurentino','jimenes','restrepo','4/2/1996','alferejjj5454@gmail.com','M','656456','6456456','EN FORMACION','','','','';
	execute sp_Insertar_Aprendiz '2343444567','5j5u5ytf','carmenza','jimenes','restrepo','4/2/1996','alferejjj5454@gmail.com','F','656456','6456456','EN FORMACION','','','','';
	execute sp_Insertar_Aprendiz '1246454546','6y5545tf','laurentino','jimenes','restrepo','4/2/1996','alferejjj5454@gmail.com','M','656456','6456456','EN FORMACION','','','','';

	delete T_Informacion_Aprendices;
	drop procedure sp_buscar_Aprendiz;

	create procedure sp_buscar_Aprendiz (
	
		@estado Varchar(30)
		
	)as
	select * from T_Informacion_Aprendices where estado=@estado;

	execute sp_buscar_Aprendiz'EN FORMACION';


	create procedure sp_eliminar_aprendiz (
	
		@ID_Aprendiz INT

	)as delete T_Informacion_Aprendices where @ID_Aprendiz=Documento_De_Identidad;
	
	execute sp_eliminar_aprendiz '' ;


   create procedure sp_actualizar_aprendiz (
	
		@Nombre Varchar(30)

	)as update T_Informacion_Aprendices
		 set Nombre=@Nombre;
	
	execute sp_actualizar_aprendiz 'ermenejildo';


	create procedure sp_consultar_aprendiz (
	
		@Genero Varchar(10)

	)as select * from T_Informacion_Aprendices where @Genero=Genero;

	execute sp_consultar_aprendiz 'M';