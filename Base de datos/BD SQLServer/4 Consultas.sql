
---------------------------------------------------------------------- QUICKLIST

		Use BaseDeDatosQuickList;

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

