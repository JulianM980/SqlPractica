USE [Universidad]
GO
/****** Object:  StoredProcedure [dbo].[SP_Cargar_Asignaturas]    Script Date: 17/8/2022 01:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[SP_Cargar_Asignaturas]
@Carrera int = 0
as
select A.nombre 'Asignatura'
from Asignaturas A
join DetalleCarreras D on D.codAsignatura=A.codAsignatura
join Carreras C on C.codCarrera=D.codCarrera
where C.codCarrera=@Carrera
order by 1

