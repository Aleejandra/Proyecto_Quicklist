
---------------------------------------------------------------------- QUICKLIST

	Use BaseDeDatosQuickList;

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
