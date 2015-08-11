
--1. CREAR Y BORRAR LA BASE DE DATOS
--2. USAR LA BASE DE DATOS
--3. CREAR LAS TABLAS
--4. BORRAR REGISTROS DE LAS TABLAS
--5. ELIMINAR TABLAS
--6. VER LAS TABLAS EXISTENTES CREADAS POR EL USUARIO
--7. VER LA ESTRUCTURA DE LAS TABLAS
--8. DAR FORMATO DE FECHA DIA/MES/AÑO
--9. INSERTAR INFORMACIÓN EN LA TABLA "Informacion_Aprendices"
--10. INSERTAR INFORMACIÓN EN LA TABLA "Informacion_Instructores"
--11. INSERTAR INFORMACIÓN EN LA TABLA "Informacion_Administradores"
--12. INSERTAR INFORMACIÓN EN LA TABLA "Informacion_Actividades"
--13. INSERTAR INFORMACIÓN EN LA TABLA "Informacion_Asistencia"
--14. INSERTAR INFORMACIÓN EN LA TABLA "Plan_De_Estudios"
--15. VER TODA LA INFORMACION DE LAS TABLAS
--16. VER PRIMER NOMBRE Y PRIMER APELLIDO DE LAS TABLAS
--17. VER LAS ACTIVIDADES
--18. SELECCIONAR LOS REGISTROS CON NOMBRES SIN REPETIR
--19. SELECCIONAR APRENDICES CON FALLAS
--20. SELECCIONAR APRENDICES QUE TIENEN FALLAS SIN JUSTIFICAR
--21. ORGANIZAR TABLAS POR APELLIDO ASENDENTE
--22. ORGANIZAR TABLAS POR APELLIDO DESENDENTE
--23. DAR CALIFICACION
--24. DAR OBSERVACION
--25. REGISTRAR ESCUSA DE INASISTENCIA
--26. SELECCIONAR LOS PRIMEROS 5 INSTRUCTORES DE LA TABLA "Informacion_Instructores"
--27. SELECCIONAR UNA DESCRIPCION EN LAS COMPETENCIAS DEL PLAN DE ESTUDIOS
--28. SELECCIONARSELECCIONAR REGISTROS CON LOS APELLIDOS 'Santana','Sierra','Hernandez','Torres'
--29. VER CONTACTOS DEL APRENDIZ
--30. COMBINACIONES 


--variable int foreign key references administrador (variable tipo primary key) 
----------------------------------------------------1. CREAR Y BORRAR LA BASE DE DATOS

  Create database BaseDeDatosInfomacion;
  --Drop database BaseDeDatosInfomacion;

----------------------------------------------------2. USAR LA BASE DE DATOS

  Use BaseDeDatosInfomacion;
  --Use master;

----------------------------------------------------3. CREAR LAS TABLAS

  Create table Informacion_Aprendices( 

	  Tipo_De_Identificacion Varchar(30) not null , 
	  Documento_De_Identidad bigint not null primary key, 
	  Primer_Nombre Varchar(30) not null, 
	  Segundo_Nombre Varchar(30),
	  Primer_Apellido Varchar(30) not null, 
	  Segundo_Apellido Varchar(30),
	  Fecha_De_Nacimiento datetime default 'Desconocido',
	  Correo_Electronico Varchar(100) not null, 
	  Genero Varchar(10) default 'Desconocido',
	  Telefono_Fijo int,
	  Telefono_Celular bigint not null, 
	  Numero_De_Ficha int not null, 
	  Nombre_De_Ficha Varchar(100) default 'Desconocido'
 )

 Create table Informacion_Instructores( 

	  Tipo_De_Identificacion Varchar(30) not null, 
	  Documento_De_Identidad bigint not null primary key, 
	  Primer_Nombre Varchar(30) not null, 
	  Segundo_Nombre Varchar(30),
	  Primer_Apellido Varchar(30) not null, 
	  Segundo_Apellido Varchar(30),
	  Correo_Electronico Varchar(100) not null, 
	  Telefono_Fijo int,
	  Telefono_Celular bigint not null, 
 )

 Create table Informacion_Administradores( 

	  Tipo_De_Identificacion Varchar(30) not null , 
	  Documento_De_Identidad bigint not null primary key, 
	  Primer_Nombre Varchar(30) not null, 
	  Segundo_Nombre Varchar(30),
	  Primer_Apellido Varchar(30) not null, 
	  Segundo_Apellido Varchar(30),
	  Correo_Electronico Varchar(100) not null, 
      Telefono_Fijo int,
	  Telefono_Celular bigint not null, 
	  
 )

  Create table Informacion_Actividades( 

	  Numero_Actividad int, 
	  Titulo_Actividad Varchar(100) not null, 
	  Descripcion_Actividad text not null, 
	  Fecha_De_Entrega datetime default 'Desconocido',
	  Valor_Maximo_Actividad int default 'Desconocido',
	  Calificacion float,
	  Observaciones text default 'No'  
 )

   Create table Informacion_Asistencia( 

	  Documento_De_Identidad_Estudiante bigint not null primary key,  
	  Fecha_De_Asistencia datetime not null, 
	  Estado_De_Asistencia Varchar(10) not null, 
	  Justificacion_De_Inasistencia Varchar(10) default 'No',
	  Descipcion_Justificacion text default 'No'
 )

    Create table Plan_De_Estudios( 

	  Ficha_Competencia int not null primary key, 
	  Competencia_A_Desarrollar text not null, 
	  Resultado_De_Aprendizaje text not null, 
	  Numero_Actividad_De_Aprendizaje int,
	  Actividad_De_Aprendizaje text not null, 
	  
 )

   create table Informacion_Formato_De_Etapa_Lectiva(
  
   Fecha_Actual datetime,
   Version_Formato Int,
   Codigo Varchar(30),
   Programa_De_Formacion Varchar(100),
   Instructor Varchar(60),
   Numero_De_Ficha int,
   Proytecto Varchar(100),
   Fase Varchar(30),
   Aprendiz Varchar(60),
   Documento_De_Identidad bigint,
   Observaciones text,
   Estilos_Y_Ritmos_De_Aprendizaje text,
   Estrategia_Metodológica_De_Preferencia text,
   Características_Culturales_Y_Sociales text,
  )

----------------------------------------------------4. BORRAR REGISTROS DE LAS TABLAS
/*
    Delete Informacion_Aprendices;
	Delete Informacion_Instructores;
	Delete Informacion_Administradores;
	Delete Informacion_Actividades;
	Delete Informacion_Asistencia;
	Delete Plan_De_Estudios;
*/
----------------------------------------------------5. ELIMINAR TABLAS
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
----------------------------------------------------6. VER LAS TABLAS EXISTENTES CREADAS POR EL USUARIO

	--sp_tables @table_owner='dbo';

----------------------------------------------------7. VER LA ESTRUCTURA DE LAS TABLAS
/*
	sp_columns Informacion_Aprendices;
	sp_columns Informacion_Instructores;
	sp_columns Informacion_Administradores;
	sp_columns Informacion_Actividades;
	sp_columns Informacion_Asistencia;
	sp_columns Plan_De_Estudios;
*/	
----------------------------------------------------8. DAR FORMATO DE FECHA DIA/MES/AÑO

    set dateformat dmy;

----------------------------------------------------9. INSERTAR INFORMACIÓN EN LA TABLA "Informacion_Aprendices"

  insert into Informacion_Aprendices(

		Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,Fecha_De_Nacimiento,
		Correo_Electronico,Genero,Telefono_Fijo,Telefono_Celular,Numero_De_Ficha,Nombre_De_Ficha
	
	) values (
	
		'Cedula',8437583958,'Luis',
		'Alberto','Suarez','Pedraza','28/12/1994',
		'Alfredraza456@gmail.com','Masculino',
		8457654,310344434234,5456738,'ADSI'
		
	);
	 insert into Informacion_Aprendices(

		Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,Fecha_De_Nacimiento,
		Correo_Electronico,Genero,Telefono_Fijo,Telefono_Celular,Numero_De_Ficha,Nombre_De_Ficha
	
	) values (
	
		'Cedula',101567569,'Jose',
		'Albaro','Gutierrez','Loza','18/11/1993',
		'josefito_lozarico@gmail.com','Masculino',
		4056895,3103454959,785986,'ADSI'
		
	);
	 insert into Informacion_Aprendices(

		Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,Fecha_De_Nacimiento,
		Correo_Electronico,Genero,Telefono_Fijo,Telefono_Celular,Numero_De_Ficha,Nombre_De_Ficha
	
	) values (
	
		'Cedula',101589567845,'Andrelo',
		'Josefo','Mondaco','Roza','29/03/1994',
		'Mondaco_roza@hotmail.es','Masculino',
		4065895,3107654897,755986,'ADSI'
		
	);
		 insert into Informacion_Aprendices(

		Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,Fecha_De_Nacimiento,
		Correo_Electronico,Genero,Telefono_Fijo,Telefono_Celular,Numero_De_Ficha,Nombre_De_Ficha
	
	) values (
	
		'Cedula',101285987845,'Cesar',
		'Augusto','Torrez','Ardila','22/04/1996',
		'Soycesar@gmail.com','Masculino',
		40895895,310314876959,785786,'ADSI'
		
	);
	 insert into Informacion_Aprendices(

		Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,Fecha_De_Nacimiento,
		Correo_Electronico,Genero,Telefono_Fijo,Telefono_Celular,Numero_De_Ficha,Nombre_De_Ficha
	
	) values (
	
		'Cedula',104885987845,'Jhonnatan',
		'Armando','Vergara','Mendivelso','01/01/1996',
		'solo_lol@gmail.com','Masculino',
		40895895,310314876959,785786,'ADSI'
		
	);
	 insert into Informacion_Aprendices(

		Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,Fecha_De_Nacimiento,
		Correo_Electronico,Genero,Telefono_Fijo,Telefono_Celular,Numero_De_Ficha,Nombre_De_Ficha
	
	) values (
	
		'Cedula',10656567845,'Paola',
		'Alejandra','Sierra','Mendez','15/09/1996',
		'fastidio_Spam@gmail.com','Mujer',
		5555555,301666666666,750566,'ADSI'
		
	);
	 insert into Informacion_Aprendices(

		Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,Fecha_De_Nacimiento,
		Correo_Electronico,Genero,Telefono_Fijo,Telefono_Celular,Numero_De_Ficha,Nombre_De_Ficha
	
	) values (
	
		'Cedula',1014286741,'Camilo',
		'Andres','Santana','Lizcano','17/03/1997',
		'es.andres@gmail.com','Machote',
		4060,301666666666,750566,'ADSI'
		
	);

----------------------------------------------------10. INSERTAR INFORMACIÓN EN LA TABLA "Informacion_Instructores"

    insert into Informacion_Instructores(

		Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,
		Correo_Electronico,
		Telefono_Fijo,Telefono_Celular
	
	) values (
	
		'Cedula',8437583958,'Luis',
		'Alfredo','Zuarez','Pedraza',
		'Alfredraza456@gmail.com',
		8457654,310344434234

		
	); 

  insert into Informacion_Instructores(

		Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,
		Correo_Electronico,
		Telefono_Fijo,Telefono_Celular
	
	) values (
	
		'Cedula',165464132,'Carlos',
		'Manuel','Eslava','Suarez',
		'Carlosmanuel@hotmail.com',
		85899777,3165478914

		
	); 

  insert into Informacion_Instructores(

			Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,
		Correo_Electronico,
		Telefono_Fijo,Telefono_Celular
	
		
	) values (
	
		'Cedula',798794544,'Luis',
		'Miguel','Araque','Chia',
		'Luismi-araque@gmail.com',
		54178962,3165412357

		
	); 


  insert into Informacion_Instructores(

			Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,
		Correo_Electronico,
		Telefono_Fijo,Telefono_Celular
	
	
	) values (
	
		'Cedula',64634773,'Wilson',
		'Felipe','Alfonso','Acero',
		'Felipe_Acero@hotmail.com',
		5412478,3201458796  
);

  insert into Informacion_Instructores(

		Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,
		Correo_Electronico,
		Telefono_Fijo,Telefono_Celular
	
	
	) values (
	
		'Cedula',2546763678,'Carolina',
		'luciana','Nuñez','Pedraza',
		'Luciana_95@gmail.com',
		5482123,3174512698

		
	); 

  insert into Informacion_Instructores(

		Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,
		Correo_Electronico,
		Telefono_Fijo,Telefono_Celular
	
	
	) values (
	
		'Cedula',145878652,'Cesar',
		'Leonardo','Suarez','Piamonte',
		'Cesittare@gmail.com',
		54984321,3225487899

		
	); 

  insert into Informacion_Instructores(

	Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,
		Correo_Electronico,
		Telefono_Fijo,Telefono_Celular
	
	
	) values (
	
		'Cedula', 798798545,'Lorena',
		'','gonzalez','Perez',
		'Lorena__@gmail.es',
		4517896,3114578963

		
	); 

  insert into Informacion_Instructores(

			Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,
		Correo_Electronico,
		Telefono_Fijo,Telefono_Celular
	
	
	) values (
	
		'Cedula',14578520,'veronica',
		'Alfredo','Jaramillo','Pozada',
		'Verojarazada@hotmail.com',
		1457801,31324457896

		
	); 

  insert into Informacion_Instructores(

			Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,
		Correo_Electronico,
		Telefono_Fijo,Telefono_Celular
	
	
	) values (
	
		'Cedula',86456568,'Ian',
		'Camilo','Diaz','Aldana',
		'Inacamilo_@hotmail.com',
		541247851,3125478965

		
	); 

  insert into Informacion_Instructores(

	Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,
		Correo_Electronico,
		Telefono_Fijo,Telefono_Celular
	
	
	) values (
	
		'Cedula',145782011,'Ana',
		'Lorena','Gonzales','Mora',
		'Lorenita09@gmail.com',
		4158796,3114875261

		
	); 


----------------------------------------------------11. INSERTAR INFORMACIÓN EN LA TABLA "Informacion_Administradores"


  insert into Informacion_Administradores(

		Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,
		Correo_Electronico,Telefono_Fijo,Telefono_Celular
	
	) values (
	
		'Cedula',8437583958,'Luis',
		'Alberto','Suarez','Pedraza',
		'Alfredraza456@gmail.com',
		8457654,310344434234
		
	);

	 insert into Informacion_Administradores(

		Tipo_De_Identificacion,Documento_De_Identidad,Primer_Nombre,
	    Segundo_Nombre,Primer_Apellido,Segundo_Apellido,
		Correo_Electronico,Telefono_Fijo,Telefono_Celular
	
	) values (
	
		'Cedula',10302635352,'Freddy',
		'Paulo','Jimenes','Reyez',
		'fredofredy1@gmail.com',
		34534564,5453453476743
		
	);


----------------------------------------------------12. INSERTAR INFORMACIÓN EN LA TABLA "Informacion_Actividades"

    insert into Informacion_Actividades(

	  Numero_Actividad, 
	  Titulo_Actividad,
	  Descripcion_Actividad,
	  Fecha_De_Entrega,Valor_Maximo_Actividad 
	
	) values (
	
		1,
		'Mapa de procesos',
		'Realizar el mapa de procesos del proyecto teniendo en cuenta los resultados obtenido en el informe de requerimientos',
		'15/7/2015',5

	);

	insert into Informacion_Actividades(

	  Numero_Actividad, 
	  Titulo_Actividad,
	  Descripcion_Actividad,
	  Fecha_De_Entrega,Valor_Maximo_Actividad

	) values (

		
		2,
		'ELABORAR BASES DE DATOS',
		'DISEÑAR LA ESTRUCTURA DE DATOS, A PARTIR DEL MODELO CONCEPTUAL DETERMINADO EN EL ANÁLISIS DEL SISTEMA, UTILIZANDO HERRAMIENTAS TECNOLÓGICAS DE BASES DE DATOS, SEGÚN LAS NORMAS Y ESTÁNDARES ESTABLECIDOS',
		17/8/2015,
		5

	);

	insert into Informacion_Actividades(
		  Numero_Actividad, 
		  Titulo_Actividad,
		  Descripcion_Actividad,
		  Fecha_De_Entrega,Valor_Maximo_Actividad

	) values (

		
		1,
		'Mapa de procesos',
		'Realizar el mapa de procesos del proyecto teniendo en cuenta los resultados obtenido en el informe de requerimientos',
		15/7/2015,
		5
	);

	insert into Informacion_Actividades(
		  Numero_Actividad, 
		  Titulo_Actividad,
		  Descripcion_Actividad,
		  Fecha_De_Entrega,Valor_Maximo_Actividad

	) values (

		
		3,
		'DISEÑAR EL DIAGRAMA DE DISTRIBUCIÓN',
		'ELABORAR EL INFORME DE DISEÑO DEL SISTEMA DE INFORMACIÓN, DE ACUERgDO CON LA SELECCIÓN DE LAS HERRAMIENTAS, TANTO DE SOFTWARE COMO DE HARDWARE, REQUERIDAS PARA LA SOLUCIÓN INFORMÁTICA',
		24/9/2015,
		5

	);

	insert into Informacion_Actividades(

		  Numero_Actividad, 
		  Titulo_Actividad,
		  Descripcion_Actividad,
		  Fecha_De_Entrega,Valor_Maximo_Actividad

	) values (

		
		3,
		'DISEÑAR EL DIAGRAMA DE DISTRIBUCIÓN',
		'ELABORAR EL INFORME DE DISEÑO DEL SISTEMA DE INFORMACIÓN, DE ACUERDO CON LA SELECCIÓN DE LAS HERRAMIENTAS, TANTO DE SOFTWARE COMO DE HARDWARE, REQUERIDAS PARA LA SOLUCIÓN INFORMÁTICA',
		24/9/2015,
		5
	);

	insert into Informacion_Actividades(

		  Numero_Actividad, 
		  Titulo_Actividad,
		  Descripcion_Actividad,
		  Fecha_De_Entrega,Valor_Maximo_Actividad

	) values (

		
		2,
		'ELABORAR BASES DE DATOS',
		'DISEÑAR LA ESTRUCTURA DE DATOS, A PARTIR DEL MODELO CONCEPTUAL DETERMINADO EN EL ANÁLISIS DEL SISTEMA, UTILIZANDO HERRAMIENTAS TECNOLÓGICAS DE BASES DE DATOS, SEGÚN LAS NORMAS Y ESTÁNDARES ESTABLECIDOS',
		17/8/2015,
		5

	);

	insert into Informacion_Actividades(

		  Numero_Actividad, 
		  Titulo_Actividad,
		  Descripcion_Actividad,
		  Fecha_De_Entrega,Valor_Maximo_Actividad

	) values (

		
		1,
		'Mapa de procesos',
		'Realizar el mapa de procesos del proyecto teniendo en cuenta los resultados obtenido en el informe de requerimientos',
		15/7/2015,
		5

	);

	insert into Informacion_Actividades(

		  Numero_Actividad, 
		  Titulo_Actividad,
		  Descripcion_Actividad,
		  Fecha_De_Entrega,Valor_Maximo_Actividad

	) values (

		
		1,
		'Mapa de procesos',
		'Realizar el mapa de procesos del proyecto teniendo en cuenta los resultados obtenido en el informe de requerimientos',
		15/7/2015,
		5

	);

	insert into Informacion_Actividades(

		  Numero_Actividad, 
		  Titulo_Actividad,
		  Descripcion_Actividad,
		  Fecha_De_Entrega,Valor_Maximo_Actividad

	) values (

		
		2,
		'ELABORAR BASES DE DATOS',
		'DISEÑAR LA ESTRUCTURA DE DATOS, A PARTIR DEL MODELO CONCEPTUAL DETERMINADO EN EL ANÁLISIS DEL SISTEMA, UTILIZANDO HERRAMIENTAS TECNOLÓGICAS DE BASES DE DATOS, SEGÚN LAS NORMAS Y ESTÁNDARES ESTABLECIDOS',
		17/8/2015,
		5

	);

	insert into Informacion_Actividades(

		  Numero_Actividad, 
		  Titulo_Actividad,
		  Descripcion_Actividad,
		  Fecha_De_Entrega,Valor_Maximo_Actividad

	) values (
		
		2,
		'ELABORAR BASES DE DATOS',
		'DISEÑAR LA ESTRUCTURA DE DATOS, A PARTIR DEL MODELO CONCEPTUAL DETERMINADO EN EL ANÁLISIS DEL SISTEMA, UTILIZANDO HERRAMIENTAS TECNOLÓGICAS DE BASES DE DATOS, SEGÚN LAS NORMAS Y ESTÁNDARES ESTABLECIDOS',
		17/8/2015,
		5
	);

	insert into Informacion_Actividades(

		  Numero_Actividad, 
		  Titulo_Actividad,
		  Descripcion_Actividad,
		  Fecha_De_Entrega,Valor_Maximo_Actividad

	) values (

		
		3,
		'DISEÑAR EL DIAGRAMA DE DISTRIBUCIÓN',
		'ELABORAR EL INFORME DE DISEÑO DEL SISTEMA DE INFORMACIÓN, DE ACUERDO CON LA SELECCIÓN DE LAS HERRAMIENTAS, TANTO DE SOFTWARE COMO DE HARDWARE, REQUERIDAS PARA LA SOLUCIÓN INFORMÁTICA',
		24/9/2015,
		5

	);

	insert into Informacion_Actividades(

		  Numero_Actividad, 
		  Titulo_Actividad,
		  Descripcion_Actividad,
		  Fecha_De_Entrega,Valor_Maximo_Actividad

	) values (

		
		3,
		'DISEÑAR EL DIAGRAMA DE DISTRIBUCIÓN',
		'ELABORAR EL INFORME DE DISEÑO DEL SISTEMA DE INFORMACIÓN, DE ACUERDO CON LA SELECCIÓN DE LAS HERRAMIENTAS, TANTO DE SOFTWARE COMO DE HARDWARE, REQUERIDAS PARA LA SOLUCIÓN INFORMÁTICA',
		24/9/2015,
		5

	);

	insert into Informacion_Actividades(

		  Numero_Actividad, 
		  Titulo_Actividad,
		  Descripcion_Actividad,
		  Fecha_De_Entrega,Valor_Maximo_Actividad

	) values (

		
		2,
		'ELABORAR BASES DE DATOS',
		'DISEÑAR LA ESTRUCTURA DE DATOS, A PARTIR DEL MODELO CONCEPTUAL DETERMINADO EN EL ANÁLISIS DEL SISTEMA, UTILIZANDO HERRAMIENTAS TECNOLÓGICAS DE BASES DE DATOS, SEGÚN LAS NORMAS Y ESTÁNDARES ESTABLECIDOS',
		17/8/2015,
		5

	);

	insert into Informacion_Actividades(

		  Numero_Actividad, 
		  Titulo_Actividad,
		  Descripcion_Actividad,
		  Fecha_De_Entrega,Valor_Maximo_Actividad

	) values (

		
		2,
		'ELABORAR BASES DE DATOS',
		'DISEÑAR LA ESTRUCTURA DE DATOS, A PARTIR DEL MODELO CONCEPTUAL DETERMINADO EN EL ANÁLISIS DEL SISTEMA, UTILIZANDO HERRAMIENTAS TECNOLÓGICAS DE BASES DE DATOS, SEGÚN LAS NORMAS Y ESTÁNDARES ESTABLECIDOS',
		17/8/2015,
		5

	);

	insert into Informacion_Actividades(

		  Numero_Actividad, 
		  Titulo_Actividad,
		  Descripcion_Actividad,
		  Fecha_De_Entrega,Valor_Maximo_Actividad

	) values (

		
		3,
		'DISEÑAR EL DIAGRAMA DE DISTRIBUCIÓN',
		'ELABORAR EL INFORME DE DISEÑO DEL SISTEMA DE INFORMACIÓN, DE ACUERDO CON LA SELECCIÓN DE LAS HERRAMIENTAS, TANTO DE SOFTWARE COMO DE HARDWARE, REQUERIDAS PARA LA SOLUCIÓN INFORMÁTICA',
		24/9/2015,
		5

	);

	insert into Informacion_Actividades(

		  Numero_Actividad, 
		  Titulo_Actividad,
		  Descripcion_Actividad,
		  Fecha_De_Entrega,Valor_Maximo_Actividad

	) values (

		
		1,
		'Mapa de procesos',
		'Realizar el mapa de procesos del proyecto teniendo en cuenta los resultados obtenido en el informe de requerimientos',
		15/7/2015,
		5

	);

----------------------------------------------------13. INSERTAR INFORMACIÓN EN LA TABLA "Informacion_Asistencia"


    insert into Informacion_Asistencia (

	  Documento_De_Identidad_Estudiante, Fecha_De_Asistencia,
	  Estado_De_Asistencia,Justificacion_De_Inasistencia,
	  Descipcion_Justificacion
	
	) values (
	
		8437583958,'2/6/2015',
		'Falla','No',
		'No'

	);

	insert into Informacion_Asistencia (

	  Documento_De_Identidad_Estudiante, 
	  Fecha_De_Asistencia,
	  Estado_De_Asistencia
	
	) values (

		9609240147,
		'2/6/2015',
		'Fallo'

	);

    insert into Informacion_Asistencia (

	  Documento_De_Identidad_Estudiante, 
	  Fecha_De_Asistencia,
	  Estado_De_Asistencia

	) values (

		1022420216,
		'2/6/2015',
		'Asistio'

	);

    insert into Informacion_Asistencia (

	  Documento_De_Identidad_Estudiante, 
	  Fecha_De_Asistencia,
	  Estado_De_Asistencia

	) values (

		65759670,
		'3/6/2015',
		'Asistio'

	);

    insert into Informacion_Asistencia (

	  Documento_De_Identidad_Estudiante, 
	  Fecha_De_Asistencia,
	  Estado_De_Asistencia,
	  Justificacion_De_Inasistencia,
	  Descipcion_Justificacion
	
	) values (

		93349463,
		'8/6/2015',
		'Falla',
		'Si',
		'Excusa Medica Urgencias'

	);

    insert into Informacion_Asistencia (

	  Documento_De_Identidad_Estudiante, 
	  Fecha_De_Asistencia,
	  Estado_De_Asistencia,
	  Justificacion_De_Inasistencia,
	  Descipcion_Justificacion
	
	) values (

		1030228520,
		'10/6/2015',
		'Falla',
		'Si',
		'Cita Medica'

	);

    insert into Informacion_Asistencia (

	  Documento_De_Identidad_Estudiante, 
	  Fecha_De_Asistencia,
	  Estado_De_Asistencia

	
	) values (

		65546456,
		'3/6/2015',
		'Asistio'

	);

    insert into Informacion_Asistencia (

	  Documento_De_Identidad_Estudiante, 
	  Fecha_De_Asistencia,
	  Estado_De_Asistencia
	
	
	) values (

		653453450,
		'3/6/2015',
		'Asistio'

	);

	insert into Informacion_Asistencia (

	  Documento_De_Identidad_Estudiante, 
	  Fecha_De_Asistencia,
	  Estado_De_Asistencia,
	  Justificacion_De_Inasistencia,
	  Descipcion_Justificacion
	
	) values (

		93453453,
		'8/6/2015',
		'Falla',
		'Si',
		'Excusa Medica Urgencias'

	);

	insert into Informacion_Asistencia (

	  Documento_De_Identidad_Estudiante, 
	  Fecha_De_Asistencia,
	  Estado_De_Asistencia,
	  Justificacion_De_Inasistencia,
	  Descipcion_Justificacion
	
	) values (

		9456456,
		'8/6/2015',
		'Falla',
		'Si',
		'Excusa Medica Urgencias'

	);

	insert into Informacion_Asistencia (

	  Documento_De_Identidad_Estudiante, 
	  Fecha_De_Asistencia,
	  Estado_De_Asistencia
	 
	) values (

		63454545,
		'3/6/2015',
		'Asistio'

	);

  insert into Informacion_Asistencia (

	  Documento_De_Identidad_Estudiante, 
	  Fecha_De_Asistencia,
	  Estado_De_Asistencia

	
	) values (

		1045454346,
		'9/6/2015',
		'Asistio'

	);

	insert into Informacion_Asistencia (

	  Documento_De_Identidad_Estudiante, 
	  Fecha_De_Asistencia,
	  Estado_De_Asistencia

	
	) values (

		645453450,
		'9/6/2015',
		'Asistio'

	);

	insert into Informacion_Asistencia (

	  Documento_De_Identidad_Estudiante, 
	  Fecha_De_Asistencia,
	  Estado_De_Asistencia

	
	) values (

		62346564,
		'9/6/2015',
		'Asistio'

	);

insert into Informacion_Asistencia (

	  Documento_De_Identidad_Estudiante, 
	  Fecha_De_Asistencia,
	  Estado_De_Asistencia

	
	) values (

		4564545,
		'9/6/2015',
		'Asistio'

	);

 insert into Informacion_Asistencia (

	  Documento_De_Identidad_Estudiante, 
	  Fecha_De_Asistencia,
	  Estado_De_Asistencia,
	  Justificacion_De_Inasistencia,
	  Descipcion_Justificacion
	
	) values (

		94545445457,
		'2/6/2015',
		'Fallo',
		'No',
		'No'

	);


----------------------------------------------------14. INSERTAR INFORMACIÓN EN LA TABLA "Plan_De_Estudios"

    insert into Plan_De_Estudios (

	  Ficha_Competencia,
	  Competencia_A_Desarrollar,
	  Resultado_De_Aprendizaje,
	  Numero_Actividad_De_Aprendizaje,
	  Actividad_De_Aprendizaje
	
	) values (
	
		220501006,
		'ESPECIFICAR LOS REQUISITOS NECESARIOS PARA DESARROLLAR EL SISTEMA DE INFORMACION DE ACUERDO CON LAS NECESIDADES DEL CLIENTE.',
		'APLICAR LAS TÉCNICAS DE RECOLECCIÓN DE DATOS , DISEÑANDO LOSINSTRUMENTOS NECESARIOS PARA EL PROCESAMIENTO DE INFORMACIÓN, DEACUERDO CON LA SITUACIÓN PLANTEADA POR LA EMPRESA',
		1,
		'APLICAR TÉCNICAS E INSTRUMENTOS PARA RECOLECTAR LA INFORMACIÓN A UTILIZAR, QUE PERMITAN LA ORGANIZACIÓN Y ANÁLISIS DE LOS DATOS RECOLECTADOS, SEGÚN NORMAS ESTABLECIDAS.'

	);

	insert into Plan_De_Estudios (

	  Ficha_Competencia,
	  Competencia_A_Desarrollar,
	  Resultado_De_Aprendizaje,
	  Numero_Actividad_De_Aprendizaje,
	  Actividad_De_Aprendizaje
	
	) values (
220501007,

'CONSTRUIR EL SISTEMA QUE CUMPLA CON LOS REQUISITOS DE LA SOLUCIÓN
 INFORMÁTICA',
'EJECUTAR Y DOCUMENTAR LAS PRUEBAS DEL SOFTWARE, APLICANDO TÉCNICAS DEENSAYO-ERROR, DE ACUERDO CON EL PLAN DISEÑADO Y LOS PROCEDIMIENTOSESTABLECIDOS POR LA EMPRESA',
1,
'DOCUMENTAR TODAS LAS PRUEBAS QUE SE HAGAN DE TODOS Y CADA UNO DE LOS SOFTWARES APLICANDO LA TECNICA DE ENSAYO-ERROR'
);

insert into Plan_De_Estudios (

	  Ficha_Competencia,
	  Competencia_A_Desarrollar,
	  Resultado_De_Aprendizaje,
	  Numero_Actividad_De_Aprendizaje,
	  Actividad_De_Aprendizaje
	
	) values (
220501009,

'PARTICIPAR EN EL PROCESO DE NEGOCIACIÓN DE TECNOLOGÍA INFORMÁTICA PARA PERMITIR LA IMPLEMENTACIÓN DEL SISTEMA DE INFORMACIÓN',
'DEFINIR ESTRATEGIAS PARA LA ELABORACIÓN DE TÉRMINOS DE REFERENCIA YPROCESOS DE EVALUACIÓN DE PROVEEDORES, EN LA ADQUISICIÓN DE TECNOLOGÍA,SEGÚN PROTOCOLOS ESTABLECIDOS',
1,
'PARTICIPAR EN LOS PERFECCIONAMIENTOS DE CONTRATOS INFORMÁTICOS,ESTABLECIENDO CLÁUSULAS TÉCNICAS, QUE RESPONDAN A LAS NECESIDADES DELOS ACTORES DE LA NEGOCIACIÓN'
);

insert into Plan_De_Estudios (

	  Ficha_Competencia,
	  Competencia_A_Desarrollar,
	  Resultado_De_Aprendizaje,
	  Numero_Actividad_De_Aprendizaje,
	  Actividad_De_Aprendizaje
	
	) values (
220501032,

'ANALIZAR LOS REQUISITOS DEL CLIENTE PARA CONSTRUIR EL SISTEMA DE INFORMACION',
'ELABORAR EL INFORME DE LOS RESULTADOS DEL ANÁLISIS DEL SISTEMA DEINFORMACIÓN, DE ACUERDO CON LOS REQUERIMIENTOS DEL CLIENTE SEGÚNNORMAS Y PROTOCOLOS ESTABLECIDOS',
1,
'INTERPRETAR EL INFORME DE REQUERIMIENTOS, PARA DETERMINAR LASNECESIDADES TECNOLÓGICAS EN EL MANEJO DE LA INFORMACIÓN, DE ACUERDOCON LAS NORMAS Y PROTOCOLOS ESTABLECIDOS EN LA EMPRESA'
);

insert into Plan_De_Estudios (

	  Ficha_Competencia,
	  Competencia_A_Desarrollar,
	  Resultado_De_Aprendizaje,
	  Numero_Actividad_De_Aprendizaje,
	  Actividad_De_Aprendizaje
	
	) values (
220501033,
'DISEÑAR EL SISTEMA DE ACUERDO CON LOS REQUISITOS DEL CLIENTE',

'ELABORAR EL INFORME DE DISEÑO DEL SISTEMA DE INFORMACIÓN, DE ACUERDOCON LA SELECCIÓN DE LAS HERRAMIENTAS, TANTO DE SOFTWARE COMO DEHARDWARE, REQUERIDAS PARA LA SOLUCIÓN INFORMÁTICA',
1,
'DISEÑAR LA ARQUITECTURA DEL SOFTWARE, MEDIANTE LA INTERPRETACIÓN DE LASCLASES, OBJETOS Y MECANISMOS DE COLABORACIÓN, UTILIZANDO HERRAMIENTASTECNOLÓGICAS DE DISEÑO'
);

insert into Plan_De_Estudios (

	  Ficha_Competencia,
	  Competencia_A_Desarrollar,
	  Resultado_De_Aprendizaje,
	  Numero_Actividad_De_Aprendizaje,
	  Actividad_De_Aprendizaje
	
	) values (
220501034,

'IMPLANTAR LA SOLUCIÓN QUE CUMPLA CON LOS REQUISITOS PARA SU OPERACIÓN',

'CAPACITAR A LOS USUARIOS DEL SISTEMA, SOBRE LA ESTRUCTURACIÓN Y EL MANEJODEL APLICATIVO, DE ACUERDO CON EL PLAN ESTABLECIDO, EL PERFIL DE LOSUSUARIOS, SEGÚN POLÍTICAS DE LA ORGANIZACIÓN',
1,
'CONFIGURAR EL SOFTWARE DE LA APLICACIÓN PARA CLIENTE Y SERVIDOR, MEDIANTELA UTILIZACIÓN DEL HARDWARE DISPONIBLE'
);

insert into Plan_De_Estudios (

	  Ficha_Competencia,
	  Competencia_A_Desarrollar,
	  Resultado_De_Aprendizaje,
	  Numero_Actividad_De_Aprendizaje,
	  Actividad_De_Aprendizaje
	
	) values (
220501035,
'APLICAR BUENAS PRÁCTICAS DE CALIDAD EN EL PROCESO DE DESARROLLO DE SOFTWARE, DE ACUERDO CON EL REFERENTE ADOPTADO EN LA EMPRESA',
'APLICAR LOS ESTÁNDARES DE CALIDAD INVOLUCRADOS EN LOS PROCESOS DEDESARROLLO DE SOFTWARE, SIGUIENDO EL PLAN ESTABLECIDO PARA MANTENER LAINTEGRIDAD DE LOS PRODUCTOS DE TRABAJO DEFINIDOS, SEGÚN LAS PRÁCTICASDE CONFIGURACIÓN ESTABLECIDAS POR LA EMPRESA',
1,
'EVALÚA LOS PROCESOS INVOLUCRADOS EN EL DESARROLLO DE SOFTWARE, APLICANDO TÉCNICAS DE EVALUACIÓN DE PROCESOS, DE ACUERDO CON LOS REFERENTES DE UN MODELO DE CALIDAD, PARA DETERMINAR SU NIVEL DE CAPACIDAD O MADUREZ'							
);
							
insert into Plan_De_Estudios (

	  Ficha_Competencia,
	  Competencia_A_Desarrollar,
	  Resultado_De_Aprendizaje,
	  Numero_Actividad_De_Aprendizaje,
	  Actividad_De_Aprendizaje
	
	) values (
240201501,
'COMPRENDER TEXTOS EN INGLÉS EN FORMA ESCRITA Y AUDITIVA',
'COMPRENDER FRASES Y VOCABULARIO HABITUAL SOBRE TEMAS DE INTERÉS PERSONAL Y TEMAS TÉCNICOS',
1,
'INTERPRETAR UN TEXTO SENCILLO Y PODER CONSTRUIR UN MAPA CONCEPTUAL BASADO EN EL MISMO.'
);

insert into Plan_De_Estudios (

	  Ficha_Competencia,
	  Competencia_A_Desarrollar,
	  Resultado_De_Aprendizaje,
	  Numero_Actividad_De_Aprendizaje,
	  Actividad_De_Aprendizaje
	
	) values (
240201502,
'PRODUCIR TEXTOS EN INGLÉS EN FORMA ESCRITA Y ORAL',
'LEER TEXTOS COMPLEJOS Y CON UN VOCABULARIO MÁS ESPECÍFICO, EN INGLÉS GENERAL Y TÉCNICO',
1,
'SALUDAR EN INGLÉS UTILIZANDO EXPRESIONES DE CORTESÍA DE ACUERDO CON EL MOMENTO DEL DÍA'							
);

insert into Plan_De_Estudios (

	  Ficha_Competencia,
	  Competencia_A_Desarrollar,
	  Resultado_De_Aprendizaje,
	  Numero_Actividad_De_Aprendizaje,
	  Actividad_De_Aprendizaje
	
	) values (
240201500,
'PROMOVER LA INTERACCIÓN IDÓNEA CONSIGO MISMO, CON LOS DEMÁS Y CON LA NATURALEZA EN LOS CONTEXTOS LABORAL Y SOCIAL',
'INTERACTUAR EN LOS CONTEXTOS PRODUCTIVOS Y SOCIALES EN FUNCIÓN DE LOS PRINCIPIOS Y VALORES UNIVERSALES',							
1,
'PROPONER ALTERNATIVAS CREATIVAS, LÓGICAS Y COHERENTES QUE POSIBILITEN LA RESOLUCIÓN DE PROBLEMAS SEGÚN LA DEMANDA DEL CONTEXTO SOCIAL Y PRODUCTIVO.'
);							

	
				
					













----------------------------------------------------15. VER TODA LA INFORMACION DE LAS TABLAS

  select * from Informacion_Aprendices;
  select * from Informacion_Instructores;
  select * from Informacion_Administradores;
  select * from Informacion_Actividades;
  select * from Informacion_Asistencia;
  select * from Plan_De_Estudios;

  ----------------------------------------------------16. VER PRIMER NOMBRE Y PRIMER APELLIDO DE LAS TABLAS

  select Primer_Nombre,Primer_Apellido from Informacion_Aprendices;
  select Primer_Nombre,Primer_Apellido from Informacion_Instructores;
  select Primer_Nombre,Primer_Apellido from Informacion_Administradores;


  ----------------------------------------------------17. VER LAS ACTIVIDADES

  select Titulo_Actividad,Descripcion_Actividad from Informacion_Actividades;

  ----------------------------------------------------18. SELECCIONAR LOS REGISTROS CON NOMBRES SIN REPETIR

  select distinct Primer_Nombre from Informacion_Aprendices;

  ----------------------------------------------------19. SELECCIONAR APRENDICES CON FALLAS

  select * from Informacion_Asistencia where Estado_De_Asistencia = 'Falla'

  ----------------------------------------------------20. SELECCIONAR APRENDICES QUE TIENEN FALLAS SIN JUSTIFICAR

  select * from Informacion_Asistencia where Estado_De_Asistencia = 'Falla' AND Justificacion_De_Inasistencia='No'


  ----------------------------------------------------21. ORGANIZAR TABLAS POR APELLIDO ASENDENTE

  select *from Informacion_Aprendices order by Primer_Apellido ASC;

  ----------------------------------------------------22. ORGANIZAR TABLAS POR APELLIDO DESENDENTE

  select *from Informacion_Aprendices order by Primer_Apellido DESC; 

  ----------------------------------------------------23. DAR CALIFICACION

  update Informacion_Actividades set Calificacion=3.5 
   where Doc_Aprendiz=101589567845;

----------------------------------------------------24. DAR OBSERVACION

  update Informacion_Actividades set Observaciones='Deve corregir y entregar nuevamente la actividad para subir su calificacion' 
   where Calificacion<3.0;

----------------------------------------------------25. REGISTRAR ESCUSA DE INASISTENCIA

  update Informacion_Asistencia set Justificacion_De_Inasistencia='Si', Descipcion_Justificacion='Consulta general en el Hospital Pablo V'
   where Documento_De_Identidad_Estudiante=8437583958 and Fecha_De_Asistencia='2/6/2015';

----------------------------------------------------26. SELECCIONAR LOS PRIMEROS 5 INSTRUCTORES DE LA TABLA "Informacion_Instructores"

  select top 5 * from Informacion_Instructores;

----------------------------------------------------27. SELECCIONAR UNA DESCRIPCION EN LAS COMPETENCIAS DEL PLAN DE ESTUDIOS

  select *from Plan_De_Estudios
   where Competencia_A_Desarrollar like '%DESARROLLAR EL SISTEMA DE INFORMACION%';


----------------------------------------------------28. SELECCIONARSELECCIONAR REGISTROS CON LOS APELLIDOS 'Santana','Sierra','Hernandez','Torres'
  
  SELECT* FROM  Informacion_Aprendices WHERE Primer_Apellido IN('Santana','Sierra','Hernandez','Torres');

----------------------------------------------------29. VER CONTACTOS DEL APRENDIZ
  
  select Primer_Nombre,Correo_Electronico,Telefono_Fijo,Telefono_Celular as 'Contactos del aprendiz' 
   from Informacion_Aprendices; 

----------------------------------------------------29. RELACIONAR LAS TABLAS 'Informacion_Actividades' Y 'Informacion_Aprendices'

  alter table Informacion_Actividades
  add Doc_Aprendiz bigint foreign key 
  references Informacion_Aprendices (Documento_De_Identidad);


  insert into Informacion_Actividades(
		  
		  Numero_Actividad, 
		  Titulo_Actividad,
		  Descripcion_Actividad,
		  Fecha_De_Entrega,Valor_Maximo_Actividad

	) values (

		1,
		'Mapa de procesos',
		'Realizar el mapa de procesos del proyecto teniendo en cuenta los resultados obtenido en el informe de requerimientos',
		15/7/2015,
		5

	);



----------------------------------------------------30. COMBINACIONES 

   select * from Informacion_Aprendices cross join Informacion_Actividades where Titulo_Actividad = 'Mapa de procesos';

   select * from Informacion_Aprendices right join Informacion_Actividades on Titulo_Actividad = 'Mapa de procesos';
   
   select * from Informacion_Aprendices inner join Informacion_Actividades on Titulo_Actividad = 'Mapa de procesos';

   select Documento_De_Identidad,Primer_Nombre,Titulo_Actividad,Calificacion from Informacion_Aprendices inner join Informacion_Actividades
    on Titulo_Actividad = 'Mapa de procesos' 
	where (genero='Masculino') or (Fecha_De_Nacimiento='22/04/1996')
	group by Documento_De_Identidad,Primer_Nombre,Titulo_Actividad,Calificacion
	order by Documento_De_Identidad 
