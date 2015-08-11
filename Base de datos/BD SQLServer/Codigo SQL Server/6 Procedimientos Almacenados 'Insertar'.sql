
---------------------------------------------------------------------- QUICKLIST

	Use BaseDeDatosQuickList;

--------------------------------------------------------------------PROCEDIMIENTOS ALMACENADOS


--------------------------------------------------------------------INSERTAR EN "T_Formato_De_Etapa_Lectiva"

	go
	create proc sp_Insertar_FormatoDeEtapaLectiva (
	
		@ID_Formato varchar(30), 
		@Version_Formato Int, 
		@Fecha_Actual datetime, 
		@Codigo Varchar(30)
	
	) as insert into T_Formato_De_Etapa_Lectiva(
	
		ID_Formato, Version_Formato, Fecha_Actual, Codigo

	) values(
		 
		@ID_Formato, @Version_Formato, @Fecha_Actual, @Codigo
				
	);


--------------------------------------------------------------------INSERTAR EN "T_Plan_De_Estudios"

	go
	create proc sp_Insertar_PlanDeEstudios (
	
		@ID_Plan_De_Estudios varchar(30), 
		@Nombre_Programa Varchar(100), 
		@Version_Plan_De_Estudios int, 
		@Meses_Etapa_Lectiva int , 
		@Nivel_De_Formacion Varchar(100) 
	
	) as insert into T_Plan_De_Estudios(
	
		ID_Plan_De_Estudios,Nombre_Programa,Version_Plan_De_Estudios, 
		Meses_Etapa_Lectiva,Nivel_De_Formacion 

	) values(
		 
		@ID_Plan_De_Estudios, @Nombre_Programa, @Version_Plan_De_Estudios, 
		@Meses_Etapa_Lectiva, @Nivel_De_Formacion 
				
	);

--------------------------------------------------------------------INSERTAR EN "T_Competencias"

	go
	create proc sp_Insertar_Competencias (
	
		@ID_Competencia varchar(30), 
		@ID_Plan_De_Estudios varchar(30),
		@Competencia_A_Desarrollar text
	
	) as insert into T_Competencias(
	
		ID_Competencia,ID_Plan_De_Estudios,Competencia_A_Desarrollar

	) values(
		 
		@ID_Competencia, @ID_Plan_De_Estudios, @Competencia_A_Desarrollar
				
	);


--------------------------------------------------------------------INSERTAR EN "T_Actividad_De_Aprendizaje"

	go
	create proc sp_Insertar_ActividadDeAprendizaje (
	
		@ID_Actividad_De_Aprendizaje varchar(30), 
		@ID_Competencia varchar(30),
		@Fase_Del_Proyecto text, 
		@Actividad_De_Aprendizaje text
	
	) as insert into T_Actividad_De_Aprendizaje(
	
		ID_Actividad_De_Aprendizaje,ID_Competencia,Fase_Del_Proyecto,Actividad_De_Aprendizaje 

	) values(
		 
		@ID_Actividad_De_Aprendizaje,@ID_Competencia,@Fase_Del_Proyecto,@Actividad_De_Aprendizaje 
				
	);


--------------------------------------------------------------------INSERTAR EN "T_Resultado_De_Aprendizaje"

	go
	create proc sp_Insertar_ResultadoDeAprendizaje (
	
		@ID_Resultado_De_Aprendizaje varchar(30), 
		@ID_Actividad_De_Aprendizaje varchar(30),
		@Resultado_De_Aprendizaje text 
	
	) as insert into T_Resultado_De_Aprendizaje(
	
		ID_Resultado_De_Aprendizaje, ID_Actividad_De_Aprendizaje, Resultado_De_Aprendizaje

	) values(
		 
		@ID_Resultado_De_Aprendizaje, @ID_Actividad_De_Aprendizaje, @Resultado_De_Aprendizaje
				
	);


--------------------------------------------------------------------INSERTAR EN "T_Fichas"

	go
	create proc sp_Insertar_Fichas (
	
		@Numero_De_Ficha int, 
		@ID_Plan_De_Estudios varchar(30),
		@ID_Formato_Etapa_Lectiva varchar(30),
		@Fecha_Inicio datetime, 
		@Fecha_Fin datetime
	
	) as insert into T_Fichas(
	
		Numero_De_Ficha , ID_Plan_De_Estudios ,ID_Formato_Etapa_Lectiva ,Fecha_Inicio , Fecha_Fin

	) values(
		 
		@Numero_De_Ficha , @ID_Plan_De_Estudios ,@ID_Formato_Etapa_Lectiva ,@Fecha_Inicio , @Fecha_Fin
				
	);


--------------------------------------------------------------------INSERTAR EN "T_Informacion_Funcionarios"

	go
	create proc sp_Insertar_InformacionFuncionarios (
	
		@Documento_De_Identidad bigint, 
		@Contraseña Varchar(30), 
		@Nombre Varchar(30), 
		@Primer_Apellido Varchar(30), 
		@Segundo_Apellido Varchar(30), 
		@cargo Varchar(100),
		@Correo_Electronico Varchar(100), 
		@Telefono_Fijo int, 
		@Telefono_Celular bigint
	
	) as insert into T_Informacion_Funcionarios(
	
		Documento_De_Identidad, Contraseña, Nombre, Primer_Apellido, Segundo_Apellido, cargo,Correo_Electronico, Telefono_Fijo, Telefono_Celular

	) values(
		 
		@Documento_De_Identidad, @Contraseña, @Nombre, @Primer_Apellido, @Segundo_Apellido, @cargo,@Correo_Electronico, @Telefono_Fijo, @Telefono_Celular
				
	);


--------------------------------------------------------------------INSERTAR EN "T_Horario"

	go
	create proc sp_Insertar_Horario (
	
		@ID_Horario varchar(30), 
		@ID_Ficha int,
		@ID_Resultado_De_Aprendizaje varchar(30),
		@ID_Funcionario bigint,
		@Dia_Semana Varchar(30),
		@Hora_Inicio Varchar(30),
		@Hora_Fin Varchar(30),
		@Fecha_Inicio datetime,
		@Fecha_Fin datetime,
		@Lugar text
	
	) as insert into T_Horario(
	
		ID_Horario, ID_Ficha,ID_Resultado_De_Aprendizaje,ID_Funcionario,Dia_Semana,Hora_Inicio,Hora_Fin,Fecha_Inicio,Fecha_Fin,Lugar

	) values(
		 
		@ID_Horario, @ID_Ficha,@ID_Resultado_De_Aprendizaje,@ID_Funcionario,@Dia_Semana,@Hora_Inicio,@Hora_Fin,@Fecha_Inicio,@Fecha_Fin,@Lugar
				
	);


--------------------------------------------------------------------INSERTAR EN "T_Informacion_Aprendices"

	go
	create proc sp_Insertar_Aprendiz (
	
		@Documento_De_Identidad bigint, 
		@Contraseña Varchar(30), 
		@Nombre Varchar(30), 
		@Primer_Apellido Varchar(30), 
		@Segundo_Apellido Varchar(30), 
		@Fecha_De_Nacimiento datetime, 
		@Correo_Electronico Varchar(100), 
		@Genero Varchar(10), 
		@ID_Ficha int,
		@Telefono_Fijo int, 
		@Telefono_Celular bigint, 
		@estado Varchar(30), 
		@nombre_Proyecto text, 
		@Estilos_Y_Ritmos_De_Aprendizaje text, 
	    @Estrategia_Metodológica_De_Preferencia text, 
	    @Caracteristicas_Culturales_Y_Sociales text 
	
	) as insert into T_Informacion_Aprendices (
	
			Documento_De_Identidad, Contraseña, Nombre, Primer_Apellido, 
			Segundo_Apellido, Fecha_De_Nacimiento, Correo_Electronico, Genero,ID_Ficha, 
			Telefono_Fijo, Telefono_Celular, estado,nombre_Proyecto,Estilos_Y_Ritmos_De_Aprendizaje,
			Estrategia_Metodológica_De_Preferencia,Caracteristicas_Culturales_Y_Sociales

	) values(
		 
		@Documento_De_Identidad, @Contraseña, @Nombre, @Primer_Apellido, 
		@Segundo_Apellido, @Fecha_De_Nacimiento, @Correo_Electronico, @Genero,@ID_Ficha, 
		@Telefono_Fijo, @Telefono_Celular, @estado,@nombre_Proyecto,@Estilos_Y_Ritmos_De_Aprendizaje,
		@Estrategia_Metodológica_De_Preferencia,@Caracteristicas_Culturales_Y_Sociales
				
	);


--------------------------------------------------------------------INSERTAR EN "T_Actividades"

	go
	create proc sp_Insertar_Actividades (
	
		@ID_Actividad varchar(30), 
		@ID_Horario varchar(30), 
		@Titulo_Actividad Varchar(100), 
		@Descripcion_Actividad text, 
		@Fecha_De_Entrega datetime, 
		@Valor_Maximo_Actividad int
	
	) as insert into T_Actividades(
	
		ID_Actividad , ID_Horario , Titulo_Actividad , Descripcion_Actividad , Fecha_De_Entrega , Valor_Maximo_Actividad

	) values(
		 
		@ID_Actividad , @ID_Horario , @Titulo_Actividad , @Descripcion_Actividad , @Fecha_De_Entrega , @Valor_Maximo_Actividad
			
	);

--------------------------------------------------------------------INSERTAR EN "T_Calificaciones"

	go
	create proc sp_Insertar_Calificaciones (
	
		@ID_Actividad varchar(30),
		@ID_Aprendiz bigint,
		@Calificacion float,
		@Observaciones text  
	
	) as insert into T_Calificaciones(
	
		ID_Actividad,ID_Aprendiz,Calificacion,Observaciones 

	) values(
		 
		@ID_Actividad,@ID_Aprendiz,@Calificacion,@Observaciones 
			
	);

--------------------------------------------------------------------INSERTAR EN "T_Clase"

	go
	create proc sp_Insertar_Clase (
	
		@ID_Clase varchar(30), 
		@ID_Horario varchar(30),
		@Fecha datetime
	
	) as insert into T_Clase(
	
		ID_Clase,ID_Horario,Fecha

	) values(
		 
		@ID_Clase,@ID_Horario,@Fecha
			
	);

--------------------------------------------------------------------INSERTAR EN "T_Inasistencia"

	go
	create proc sp_Insertar_Inasistencia (
	
		@ID_Clase varchar(30),
		@ID_Aprendiz bigint,
		@Estado_De_Inasistencia Varchar(10),
		@Justificacion_De_Inasistencia text
	
	) as insert into T_Inasistencia(
	
		ID_Clase, ID_Aprendiz, Estado_De_Inasistencia, Justificacion_De_Inasistencia

	) values(
		 
		@ID_Clase, @ID_Aprendiz, @Estado_De_Inasistencia, @Justificacion_De_Inasistencia
			
	);
