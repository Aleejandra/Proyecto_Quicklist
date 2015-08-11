
---------------------------------------------------------------------- QUICKLIST

	Use BaseDeDatosQuickList;

--------------------------------------------------------------------PROCEDIMIENTOS ALMACENADOS


--------------------------------------------------------------------INSERTAR EN "T_Formato_De_Etapa_Lectiva"

	go
	create proc sp_Actualizar_FormatoDeEtapaLectiva (
	
		@ID_Formato varchar(30),
		@Codigo Varchar(30)
	
	) as update T_Formato_De_Etapa_Lectiva 
		 set Codigo=@Codigo 
		 where ID_Formato=@ID_Formato;


--------------------------------------------------------------------INSERTAR EN "T_Plan_De_Estudios"

    go
	create proc sp_Actualizar_NombrePlanDeEstudios (
	
		@ID_Plan_De_Estudios varchar(30),
		@Nombre_Programa Varchar(100)
	
	) as update T_Plan_De_Estudios
		 set Nombre_Programa=@Nombre_Programa 
		 where ID_Plan_De_Estudios=@ID_Plan_De_Estudios;

--------------------------------------------------------------------INSERTAR EN "T_Competencias"

    go
	create proc sp_Actualizar_Competencia (
	
		@ID_Competencia varchar(30), 
		@Competencia_A_Desarrollar text 
	
	) as update T_Competencias
		 set Competencia_A_Desarrollar=@Competencia_A_Desarrollar 
		 where ID_Competencia=@ID_Competencia;


--------------------------------------------------------------------INSERTAR EN "T_Actividad_De_Aprendizaje"

    go
	create proc sp_Actualizar_ActividadDeAprendizaje (
	
		@ID_Actividad_De_Aprendizaje varchar(30), 
		@Actividad_De_Aprendizaje text
	
	) as update T_Actividad_De_Aprendizaje
		 set Actividad_De_Aprendizaje=@Actividad_De_Aprendizaje
		 where ID_Actividad_De_Aprendizaje=@ID_Actividad_De_Aprendizaje;


--------------------------------------------------------------------INSERTAR EN "T_Resultado_De_Aprendizaje"

    go
	create proc sp_Actualizar_ResultadoDeAprendizaje (
	
		@ID_Resultado_De_Aprendizaje varchar(30), 
		@Resultado_De_Aprendizaje text
	
	) as update T_Resultado_De_Aprendizaje
		 set Resultado_De_Aprendizaje=@Resultado_De_Aprendizaje 
		 where ID_Resultado_De_Aprendizaje=@ID_Resultado_De_Aprendizaje;


--------------------------------------------------------------------INSERTAR EN "T_Fichas"

    go
	create proc sp_Actualizar_TiempoFicha (
	
		@Numero_De_Ficha int, 
		@Fecha_Inicio datetime, 
		@Fecha_Fin datetime
	
	) as update T_Fichas
		 set Fecha_Inicio=@Fecha_Inicio, Fecha_Fin=@Fecha_Fin
		 where Numero_De_Ficha=@Numero_De_Ficha;


--------------------------------------------------------------------INSERTAR EN "T_Informacion_Funcionarios"

    go
	create proc sp_Actualizar_NombreFuncionario (
	
		@Documento_De_Identidad bigint,
		@Nombre Varchar(30)
	
	) as update T_Informacion_Funcionarios
		 set Nombre=@Nombre
		 where Documento_De_Identidad=@Documento_De_Identidad;


--------------------------------------------------------------------INSERTAR EN "T_Horario"

    go
	create proc sp_Actualizar_LugarHorario (
	
		@ID_Horario varchar(30), 
		@Lugar text
	
	) as update T_Horario
		 set Lugar=@Lugar 
		 where ID_Horario=@ID_Horario;


--------------------------------------------------------------------INSERTAR EN "T_Informacion_Aprendices"

    go
	create proc sp_Actualizar_ContraseñaAprendiz (
	
		@Documento_De_Identidad bigint, 
		@Contraseña Varchar(30) 
	
	) as update T_Informacion_Aprendices
		 set Contraseña=@Contraseña 
		 where Documento_De_Identidad=@Documento_De_Identidad;


--------------------------------------------------------------------INSERTAR EN "T_Actividades"

    go
	create proc sp_Actualizar_FechaEntregaActividad (
	
		@ID_Actividad varchar(30), 
		@Fecha_De_Entrega datetime 
	
	) as update T_Actividades
		 set Fecha_De_Entrega=@Fecha_De_Entrega 
		 where ID_Actividad=@ID_Actividad;


--------------------------------------------------------------------INSERTAR EN "T_Calificaciones"

    go
	create proc sp_Actualizar_Calificacion (
	
		@ID_Actividad varchar(30),
		@ID_Aprendiz bigint,
		@Calificacion float
	
	) as update T_Calificaciones
		 set @Calificacion=@Calificacion
		 where ID_Actividad=@ID_Actividad and ID_Aprendiz=@ID_Aprendiz;


--------------------------------------------------------------------INSERTAR EN "T_Clase"

    go
	create proc sp_Actualizar_FechaClase (
	
		@ID_Clase varchar(30), 
		@Fecha datetime 
	
	) as update T_Clase
		 set Fecha=@Fecha 
		 where ID_Clase=@ID_Clase;


--------------------------------------------------------------------INSERTAR EN "T_Inasistencia"

    go
	create proc sp_Actualizar_EstadoInasistencia (
	
		@ID_Clase varchar(30),
		@ID_Aprendiz bigint,
		@Estado_De_Inasistencia Varchar(10),
		@Justificacion_De_Inasistencia text
	
	) as update T_Inasistencia
		 set Estado_De_Inasistencia=@Estado_De_Inasistencia , Justificacion_De_Inasistencia=@Justificacion_De_Inasistencia
		 where ID_Clase=@ID_Clase and ID_Aprendiz=@ID_Aprendiz;
