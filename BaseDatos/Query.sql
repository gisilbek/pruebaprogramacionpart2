select B.documentsid, B.namefirst,B.namelast, C.name
from admcurso.inscripcion as A, admcurso.alumnos as B, admcurso.curso as C
where A.idcurso =2 and C.id= 2 and A.idalumnos = B.id

SELECT AVG(nota)as Promedio 
FROM admcurso.nota as A
where  A.idalumnos = 2 


SELECT AVG(nota)as Promedio 
FROM admcurso.nota as A
where  A.idalumnos = 2 and A.idprofesor=1


select B.documentsid, B.namefirst,B.namelast, C.name,AVG(A.nota)as Promedio  
from admcurso.nota as A, admcurso.alumnos as B, admcurso.curso as C
where A.idcurso =2 and C.id= 2 and A.idalumnos = B.id  and (select count (nota) as cantidad from admcurso.nota where idcurso =2  and idalumnos = 2 and nota<10 ) >=2
group by B.documentsid, B.namefirst,B.namelast, C.name, A.nota 

/*
La respuesta la pregunta 6 de la seccion Manejo de Datos es la C

*/
