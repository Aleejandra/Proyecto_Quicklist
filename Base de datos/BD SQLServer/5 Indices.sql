
---------------------------------------------------------------------- QUICKLIST

	Use BaseDeDatosQuickList;

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