
---------------------------------------------------------------------- QUICKLIST

	Use BaseDeDatosQuickList;

--------------------------------------------------------------------PROCEDIMIENTOS ALMACENADOS


--------------------------------------------------------------------INSERTAR EN "T_Formato_De_Etapa_Lectiva"


	create proc sp_Borrar_FormatoDeEtapaLectiva (
	
		@ID_Formato varchar(30)
	
	) as delete T_Formato_De_Etapa_Lectiva where ID_Formato=@ID_Formato;


--------------------------------------------------------------------INSERTAR EN "T_Plan_De_Estudios"


	create proc sp_Borrar_PlanDeEstudios (
	
		@ID_Plan_De_Estudios varchar(30) 
	
	) as delete T_Plan_De_Estudios where ID_Plan_De_Estudios=@ID_Plan_De_Estudios;

--------------------------------------------------------------------INSERTAR EN "T_Competencias"


	create proc sp_Borrar_Competencias (
	
		@ID_Competencia varchar(30)
	
	) as delete T_Competencias where ID_Competencia=@ID_Competencia;


--------------------------------------------------------------------INSERTAR EN "T_Actividad_De_Aprendizaje"


	create proc sp_Borrar_ActividadDeAprendizaje (
	
		@ID_Actividad_De_Aprendizaje varchar(30)
	
	) as delete T_Actividad_De_Aprendizaje where ID_Actividad_De_Aprendizaje=@ID_Actividad_De_Aprendizaje;


--------------------------------------------------------------------INSERTAR EN "T_Resultado_De_Aprendizaje"


	create proc sp_Borrar_ResultadoDeAprendizaje (
	
		@ID_Resultado_De_Aprendizaje varchar(30)
	
	) as delete T_Resultado_De_Aprendizaje where ID_Resultado_De_Aprendizaje=@ID_Resultado_De_Aprendizaje;


--------------------------------------------------------------------INSERTAR EN "T_Fichas"


	create proc sp_Borrar_Fichas (
	
		@Numero_De_Ficha int
	
	) as delete T_Fichas where Numero_De_Ficha=@Numero_De_Ficha;


--------------------------------------------------------------------INSERTAR EN "T_Informacion_Funcionarios"


	create proc sp_Borrar_InformacionFuncionarios (
	
		@Documento_De_Identidad bigint
	
	) as delete T_Informacion_Funcionarios where Documento_De_Identidad=@Documento_De_Identidad;


--------------------------------------------------------------------INSERTAR EN "T_Horario"


	create proc sp_Borrar_Horario (
	
		@ID_Horario varchar(30)
	
	) as delete T_Horario where ID_Horario=@ID_Horario;


--------------------------------------------------------------------INSERTAR EN "T_Informacion_Aprendices"

	create proc sp_Borrar_Aprendiz (
	
		@Documento_De_Identidad bigint
	
	) as delete T_Informacion_Aprendices where Documento_De_Identidad=@Documento_De_Identidad;


--------------------------------------------------------------------INSERTAR EN "T_Actividades"


	create proc sp_Borrar_Actividades (
	
		@ID_Actividad varchar(30)
	
	) as delete T_Actividades where ID_Actividad=@ID_Actividad;


--------------------------------------------------------------------INSERTAR EN "T_Calificaciones"


	create proc sp_Borrar_Calificaciones (
	
		@ID_Actividad varchar(30)
	
	) as delete T_Calificaciones where ID_Actividad=@ID_Actividad;


--------------------------------------------------------------------INSERTAR EN "T_Clase"


	create proc sp_Borrar_Clase (
	
		@ID_Clase varchar(30)
	
	) as delete T_Clase where ID_Clase=@ID_Clase;


--------------------------------------------------------------------INSERTAR EN "T_Inasistencia"


	create proc sp_Borrar_Inasistencia (
	
		@ID_Aprendiz varchar(30)
	
	) as delete T_Inasistencia where ID_Aprendiz=@ID_Aprendiz;
