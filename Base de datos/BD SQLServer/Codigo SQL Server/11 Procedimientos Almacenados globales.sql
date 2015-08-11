
---------------------------------------------------------------------- QUICKLIST

	Use BaseDeDatosQuickList;

--------------------------------------------------------------------PROCEDIMIENTOS ALMACENADOS

--------------------------------------------------------------------PROMEDIAR CALIFICACIONES DE UN TRIMESTRE "T_horario"

	go
	create proc ##sp_aprendicesCon3Fallas  as 

	begin
	
		select count(T_Inasistencia.Estado_De_Inasistencia),
					 T_Informacion_Aprendices.Documento_De_Identidad,
					 T_Informacion_Aprendices.Nombre,
					 T_Informacion_Aprendices.Primer_Apellido,
					 T_Inasistencia.Estado_De_Inasistencia
		 from T_Informacion_Aprendices 
		 join T_Inasistencia on T_Informacion_Aprendices.Documento_De_Identidad = T_Inasistencia.ID_Aprendiz
		 where (T_Inasistencia.Estado_De_Inasistencia='CE' OR T_Inasistencia.Estado_De_Inasistencia='SE') 
		 group by T_Informacion_Aprendices.Documento_De_Identidad,
				  T_Informacion_Aprendices.Nombre,
				  T_Informacion_Aprendices.Primer_Apellido,
				  T_Inasistencia.Estado_De_Inasistencia
		 having count(T_Inasistencia.Estado_De_Inasistencia)>2;
	
	end;

	execute ##sp_aprendicesCon3Fallas;


--------------------------------------------------------------------PROMEDIAR CALIFICACIONES DE UN TRIMESTRE "T_horario"

--   drop proc #sp_estudiantesConEscusa ;

	go
	create proc #sp_estudiantesConEscusa 

	(
	
		@ID_Aprendiz bigint
	
	)as 

	begin
	
		select T_Informacion_Aprendices.Documento_De_Identidad,T_Informacion_Aprendices.Nombre,
		T_Informacion_Aprendices.Primer_Apellido,T_Inasistencia.Estado_De_Inasistencia,T_Inasistencia.Justificacion_De_Inasistencia
		 from T_Informacion_Aprendices 
		 join T_Inasistencia on T_Informacion_Aprendices.Documento_De_Identidad = T_Inasistencia.ID_Aprendiz
		 where @ID_Aprendiz = T_Informacion_Aprendices.Documento_De_Identidad;
		
	end;

	execute #sp_estudiantesConEscusa '7785885485';
