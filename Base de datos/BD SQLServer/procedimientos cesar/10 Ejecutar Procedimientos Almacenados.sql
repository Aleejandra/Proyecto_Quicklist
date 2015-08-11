
---------------------------------------------------------------------- QUICKLIST

	Use BaseDeDatosQuickList;

---------------------------------------------------------------------- INSERTAR EN "T_Formato_De_Etapa_Lectiva"

	execute sp_Insertar_FormatoDeEtapaLectiva 'FL1','02','30/09/2013','F007-P006-GFPI';

--------------------------------------------------------------------INSERTAR EN "T_Plan_De_Estudios"

	execute sp_Insertar_PlanDeEstudios 'PE1','ANALISIS Y DESARROLLO DE SISTEMAS DE INFORMACION','102','18','TECNOLOGO';

--------------------------------------------------------------------INSERTAR EN "T_Competencias"

	execute sp_Insertar_Competencias 'PE1CO1','PE1','ANALIZAR LOS REQUISITOS DEL CLIENTE PARA CONSTRUIR EL SISTEMA DE INFORMACION.';
	execute sp_Insertar_Competencias 'PE1CO2','PE1','PROMOVER LA INTERACCION IDONEA CONSIGO MISMO, CON LOS DEMAS Y CON LA NATURALEZA EN LOS CONTEXTOS LABORAL Y SOCIAL.';
	execute sp_Insertar_Competencias 'PE1CO3','PE1','ESPECIFICAR LOS REQUISITOS NECESARIOS PARA DESARROLLAR EL SISTEMA DE INFORMACION DE ACUERDO CON LAS NECESIDADES DEL CLIENTE.';
	execute sp_Insertar_Competencias 'PE1CO4','PE1','PARTICIPAR EN EL PROCESO DE NEGOCIACIÓN DE TECNOLOGÍA INFORMÁTICA PARA PERMITIR LA IMPLEMENTACIÓN DEL SISTEMA DE INFORMACIÓN.';
	execute sp_Insertar_Competencias 'PE1CO5','PE1','DISEÑAR EL SISTEMA DE ACUERDO CON LOS REQUISITOS DEL CLIENTE.';
	execute sp_Insertar_Competencias 'PE1CO6','PE1','CONSTRUIR EL SISTEMA QUE CUMPLA CON LOS REQUISITOS DE LA SOLUCIÓN INFORMÁTICA.';
	execute sp_Insertar_Competencias 'PE1CO7','PE1','IMPLANTAR LA SOLUCION QUE CUMPLA CON LOS REQUISISTOS PARA SU OPERACIÓN.'; 
	execute sp_Insertar_Competencias 'PE1CO8','PE1','APLICAR BUENAS PRÁCTICAS DE CALIDAD EN EL PROCESO DE DESARROLLO DE SOFTWARE,DE ACUERDO CON EL REFERENTE ADOPTADO EN LA EMPRESA.';
	execute sp_Insertar_Competencias 'PE1CO9','PE1','COMPRENDER TEXTOS EN INGLÉS EN FORMA ESCRITA Y AUDITIVA.';
	execute sp_Insertar_Competencias 'PE1CO10','PE1','PRODUCIR TEXTOS EN INGLÉS EN FORMA ESCRITA Y ORAL.';
	execute sp_Insertar_Competencias 'PE1CO11','PE1','COMUNICACIÓN PARA PROGRAMAS DE TECNÓLOGO.';
--------------------------------------------------------------------INSERTAR EN "T_Actividad_De_Aprendizaje"

	 execute sp_Insertar_ActividadDeAprendizaje 'PE1CO1AA1','PE1CO1','ANALISIS','ELABORAR DIAGRAMAS DE CLASES.';
	 execute sp_Insertar_ActividadDeAprendizaje 'PE1CO1AA2','PE1CO1','ANALISIS','ELABORAR DIAGRAMAS DE CASOS DE USO.';
	 execute sp_Insertar_ActividadDeAprendizaje 'PE1CO1AA3','PE1CO1','ANALISIS','REALIZAR EL INFORME DE ANÁLISIS DEL SISTEMA QUE CUMPLA CON LOS REQUERIMIENTOS DE LA EMPRESA.';
	 execute sp_Insertar_ActividadDeAprendizaje 'PE1CO1AA4','PE1CO1','DISEÑO','ELABORAR BASES DE DATOS.';
	 execute sp_Insertar_ActividadDeAprendizaje 'PE1CO1AA5','PE1CO1','ANALISIS','REALIZAR ALGORITMOS UTILIZANDO ATRIBUTOS, OBJETOS, MÉTODOS';
	 execute sp_Insertar_ActividadDeAprendizaje 'PE1CO2AA1','PE1CO2','ANALISIS','ARGUMENTAR Y ACOGER LOS CRITERIOS QUE CONTRIBUYEN A LA RESOLUCIÓN DE PROBLEMAS';
	 execute sp_Insertar_ActividadDeAprendizaje 'PE1CO2AA2','PE1CO2','ANALISIS','ESTABLECER PROCESOS COMUNICATIVOS ASERTIVOS QUE POSIBILITEN LA CONVIVENCIA EN LOS CONTEXTOS SOCIAL Y PRODUCTIVO';
	 execute sp_Insertar_ActividadDeAprendizaje 'PE1CO1AA6','PE1CO1','ANALISIS','ELABORAR DIAGRAMAS DE TRANSICIÓN DE ESTADO.';
	 execute sp_Insertar_ActividadDeAprendizaje 'PE1CO3AA1','PE1CO3','PLANEACION','ELABORAR EL INFORME DE REQUERIMIENTOS.';
	 execute sp_Insertar_ActividadDeAprendizaje 'PE1CO3AA2','PE1CO3','PLANEACION','DISEÑAR Y APLICAR INSTRUMENTOS PARA RECOLECTAR INFORMACIÓN.';
	 execute sp_Insertar_ActividadDeAprendizaje 'PE1CO3AA3','PE1CO3','PLANEACION','IDENTIFICAR EL SOFTWARE DE LA EMPRESA';
	 execute sp_Insertar_ActividadDeAprendizaje 'PE1CO1AA7','PE1CO1','ANALISIS','REALIZAR ALGORITMOS UTILIZANDO VARIABLES, CONSTANTES, VARIABLES, BUCLES,';
	 execute sp_Insertar_ActividadDeAprendizaje 'PE1CO2AA3','PE1CO2','PLANEACION','REALIZAR LOS PROCESOS DE FABRICACIÓN, CUMPLIENDO CON LAS NORMAS DE SEGURIDAD INDUSTRIAL Y AMBIENTAL. (SALUD OCUPACIONAL)';
	 execute sp_Insertar_ActividadDeAprendizaje 'PE1CO4AA1','PE1CO4','DEFINICION','DIFERENCIAR LOS ELEMENTOS, CÓDIGOS, CONVENCIONES, UNIDADES DE MEDIDA Y SÍMBOLOS EMPLEADOS EN PLANOS';
	 execute sp_Insertar_ActividadDeAprendizaje 'PE1CO5AA1','PE1CO5','DISEÑO','ELABORAR BASES DE DATOS.';
	 execute sp_Insertar_ActividadDeAprendizaje 'PE1CO4AA2','PE1CO4','PLANEACION','VERIFICAR ESPECIFICACIONES DE LAS HERRAMIENTAS INFORMÁTICAS, ASÍ COMO DIFERENCIAS DE CARÁCTER TÉCNICO Y DE ESTÁNDARES DE CUMPLIMIENTO.';
	 execute sp_Insertar_ActividadDeAprendizaje 'PE1CO4AA3','PE1CO4','PLANEACION','DETERMINAR ESPECIFICACIONES TÉCNICAS Y CONDICIONES PARA LA LICITACIÓN.';
	 execute sp_Insertar_ActividadDeAprendizaje 'PE1CO5AA2','PE1CO5','DISEÑO','DISEÑAR EL COMPORTAMIENTO DE LAS CLASES Y OBJETOS.';

--------------------------------------------------------------------INSERTAR EN "T_Resultado_De_Aprendizaje"


	execute sp_Insertar_ResultadoDeAprendizaje 'PE1CO1AA1RA1','PE1CO1AA1','REPRESENTA EL BOSQUEJO DE LA SOLUCIÓN AL PROBLEMA PRESENTADO POR EL CLIENTE, MEDIANTE LA ELABORACIÓN DE DIAGRAMAS DE CASOS DE USO, APOYADO EN EL ANÁLISIS DEL INFORME DE REQUERIMIENTOS, AL CONFRONTAR LA SITUACIÓN PROBLEMICA CON EL USUARIO SEGÚN NORMAS Y PROTOCOLOS DE LA ORGANIZACIÓN.';
	execute sp_Insertar_ResultadoDeAprendizaje 'PE1CO1AA2RA1','PE1CO1AA2','INTERPRETAR LOS DIAGRAMAS DE CASO DE USO, DE OBJETOS, DE ESTADO, DE SECUENCIA, DE PAQUETES O COMPONENTES, DE DESPLIEGUE, DE COLABORACIÓN SEGÚN EL DISEÑO ENTREGADO';
	execute sp_Insertar_ResultadoDeAprendizaje 'PE1CO1AA3RA1','PE1CO1AA3','ELABORAR EL INFORME DE LOS RESULTADOS DEL ANÁLISIS DEL SISTEMA DE INFORMACIÓN, DE ACUERDO CON LOS REQUERIMIENTOS DEL CLIENTE SEGÚN NORMAS Y PROTOCOLOS ESTABLECIDOS.';
	execute sp_Insertar_ResultadoDeAprendizaje 'PE1CO1AA4RA1','PE1CO1AA4','VALORAR LA INCIDENCIA DE LOS DATOS EN LOS PROCESOS DEL MACRO SISTEMA, TOMANDO COMO REFERENTE EL DICCIONARIO DE DATOS Y LAS MINI ESPECIFICACIONES, PARA LA CONSOLIDACIÓN DE LOS DATOS QUE INTERVIENEN, DE ACUERDO CON PARÁMETROS ESTABLECIDOS.';
	execute sp_Insertar_ResultadoDeAprendizaje 'PE1CO1AA5RA1','PE1CO1AA5','IDENTIFICAR CADA UNO DE LOS CONCEPTOS Y PRINCIPIOS QUE CONSTITUYE LA PROGRAMACIÓN ORIENTADA A OBJETOS PARA INTREPRETAR EL DISEÑO';


--------------------------------------------------------------------INSERTAR EN "T_Fichas"

	 execute sp_Insertar_Fichas '750566','PE1','FL1','07/07/2014','07/07/2016';
	 execute sp_Insertar_Fichas '750567','PE1','FL1','01/10/2014','01/10/2016';
	 execute sp_Insertar_Fichas '750568','PE1','FL1','19/01/2015','19/01/2017';

--------------------------------------------------------------------INSERTAR EN "T_Informacion_Funcionarios"

	 execute sp_Insertar_InformacionFuncionarios '1022453456','3EYRH48','ALFREDO','JIMENES','CAICEDO','AMINISTRADOR','AlfredJ3453@misena.edu.co','8596421','312456789585';
	 execute sp_Insertar_InformacionFuncionarios '7656756756','345T4G8','LUIS','RESTREPO','VENAVIDES','INSTRUCTOR','LRVENAVIDES12@misena.edu.co','7656754','312534234235';
	 execute sp_Insertar_InformacionFuncionarios '7653567675','56Y6Y56','ENRIQUE','OLARTE','CASTRO','INSTRUCTOR','enriguartg453@hotmail.com','7634551','323656456353';
	 execute sp_Insertar_InformacionFuncionarios '8564566786','7UH7YBHB','SARA','VARGAS','BOLIBAR','INSTRUCTOR','saraV_432@misena.edu.co','64523431','321786565654';
	 execute sp_Insertar_InformacionFuncionarios '3576868647','56YERGF8','CAMILO','JIMENES','VEGA','INSTRUCTOR','CamiloJimenes-45@gmail.com','9246524','31588285655';

--------------------------------------------------------------------INSERTAR EN "T_Horario"

	execute sp_Insertar_Horario 'PE1CO1AA1RA1HO1','750566','PE1CO1AA1RA1','1022453456','LUNES','12:00','15:00','07/07/2014','31/08/2014','Aula 402 CIDCA - Cr 38 Otro';
	execute sp_Insertar_Horario 'PE1CO1AA2RA1HO1','750566','PE1CO1AA2RA1','7656756756','LUNES','15:00','18:00','07/07/2014','31/08/2014','Aula 402 CIDCA - Cr 38 Otro';
	execute sp_Insertar_Horario 'PE1CO1AA3RA1HO1','750566','PE1CO1AA3RA1','7653567675','MARTES','13:00','18:00','07/07/2014','31/08/2014','Aula 402 CIDCA - Cr 38 Otro';
	execute sp_Insertar_Horario 'PE1CO1AA4RA1HO1','750566','PE1CO1AA4RA1','8564566786','MIERCOLES','12:00','18:00','07/07/2014','31/08/2014','Aula 308 CIDCA - Cr 38 Otro';
	execute sp_Insertar_Horario 'PE1CO1AA5RA1HO1','750566','PE1CO1AA5RA1','3576868647','JUEVES','12:00','18:00','07/07/2014','31/08/2014','Aula 308 CIDCA - Cr 38 Otro';

--------------------------------------------------------------------INSERTAR EN "T_Informacion_Aprendices"


	 execute sp_Insertar_Aprendiz '7785885485','5G5G5UR', 'PEDRO','CASAS','CUEVAS','08/03/1995','Pedrocuevas4545@hotmail.com','M','750566','6545342','2376534545','EN FORMACION','PROYECTO1','','','';
	 execute sp_Insertar_Aprendiz '8456345345','R6TUR56Y', 'CATERINE','RIVERA','BAUTISTA','04/10/1994','caterinerivera@misena.edu.co','F','750566','7345455','7634523434','EN FORMACION','PROYECTO2','','','';
	 execute sp_Insertar_Aprendiz '5673563455','5FG55TG5G', 'LEO','JIMENES','MERCADO','12/12/1996','leji_4ee@gmail.com','M','750566','5423434','134646235234','EN FORMACION','PROYECTO3','','','';
	 execute sp_Insertar_Aprendiz '1235795434','55G5HJ6HH', 'CRISTIAN','GARZON','OTAM','15/07/1990','cristin5445@hotmail.com','M','750566','56323434','7524546556','EN FORMACION','PROYECTO4','','','';
	 execute sp_Insertar_Aprendiz '453413574','4G44G4G4G', 'MARIA','HERNANDEZ','RODRIGUEZ','26/10/1996','mariri343@misena.edu.co','F','750566','21344454','5635423434','EN FORMACION','PROYECTO5','','','';


--------------------------------------------------------------------INSERTAR EN "T_Actividades"
    execute sp_Insertar_Actividades 'PE1CO1AA1RA1HO1AC1','PE1CO1AA1RA1HO1','ACTIVIDAD1','DESCRIPCION ACTIVIDAD 1','15/11/2014','5'; 
	execute sp_Insertar_Actividades 'PE1CO1AA1RA1HO1AC2','PE1CO1AA1RA1HO1','ACTIVIDAD2','DESCRIPCION ACTIVIDAD 2','15/11/2014','10' ;
	execute sp_Insertar_Actividades 'PE1CO1AA1RA1HO1AC3','PE1CO1AA1RA1HO1','ACTIVIDAD3','DESCRIPCION ACTIVIDAD 3','15/11/2014','5';
	execute sp_Insertar_Actividades 'PE1CO1AA4RA1HO1AC1','PE1CO1AA4RA1HO1','ACTIVIDAD7','DESCRIPCION ACTIVIDAD 7','15/11/2014','100 ';
	execute sp_Insertar_Actividades 'PE1CO1AA4RA1HO1AC2','PE1CO1AA4RA1HO1','ACTIVIDAD8','DESCRIPCION ACTIVIDAD 8','15/11/2014','100';
--------------------------------------------------------------------INSERTAR EN "T_Calificaciones"
    execute sp_Insertar_Calificaciones 'PE1CO1AA1RA1HO1AC1','7785885485','3.5','NECESITA REFORSAR LOS CONOCIMIENTOS VISTOS EN CLASE';
	execute sp_Insertar_Calificaciones 'PE1CO1AA1RA1HO1AC2','8456345345','10','No';
    execute sp_Insertar_Calificaciones 'PE1CO1AA1RA1HO1AC3','5673563455','5','No';
	execute sp_Insertar_Calificaciones 'PE1CO1AA4RA1HO1AC4','9734568645','3','DEVE VOLVER A PRESENTAR LA ACTIVIDAD';
	execute sp_Insertar_Calificaciones 'PE1CO1AA5RA1HO1AC1','4545579898','50','DEVE TERMINAR LA ACTIVIDAD';


--------------------------------------------------------------------INSERTAR EN "T_Clase"

   execute sp_Insertar_Clase 'PE1CO1AA1RA1HO1CL1','PE1CO1AA1RA1HO1','07/07/2014';
   execute sp_Insertar_Clase 'PE1CO1AA1RA1HO1CL2','PE1CO1AA1RA1HO1','14/11/2014';
   execute sp_Insertar_Clase 'PE1CO1AA1RA1HO1CL3','PE1CO1AA1RA1HO1','21/11/2014';
   execute sp_Insertar_Clase 'PE1CO1AA2RA1HO1CL1','PE1CO1AA2RA1HO1','07/11/2014';
   execute sp_Insertar_Clase 'PE1CO1AA4RA1HO1CL1','PE1CO1AA4RA1HO1','09/11/2014';

--------------------------------------------------------------------INSERTAR EN "T_Inasistencia"
  execute sp_Insertar_Inasistencia 'PE1CO1AA1RA1HO1CL1','7785885485','CE','Cita odontologia en el hospital pablo vi' ;
  execute sp_Insertar_Inasistencia 'PE1CO1AA1RA1HO1CL1','1235795434','SE','' ;
  execute sp_Insertar_Inasistencia 'PE1CO1AA1RA1HO1CL1','9842345766','CE','Citacion para solucion de la situacion militar';
  execute sp_Insertar_Inasistencia 'PE1CO1AA2RA1HO1CL1','7785885485','NO','' ;
  execute sp_Insertar_Inasistencia 'PE1CO1AA3RA1HO1CL1','8456345345','CE','Entrevista para el contrato de aprendizaje';