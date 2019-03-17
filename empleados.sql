/*1. Número de empleado, nombre, apellido, código de departamento de los empleados cuyo nombre empieza por ‘J’ , 
ordenados por código de departamento.*/

use empleados_bbdd;
select nuempl, nombre, apellido, coddep
from templa
where nombre like 'J%'
order by coddep;


/*2. Obtener una lista de todos los empleados de los departamentos E11, E21, D11 y D21. La lista anterior debe contener 
#información sobre el número de empleado, nombre, apellido y número de teléfono.*/

use empleados_bbdd;
select nuempl, nombre, apellido, tlfn, coddep
from templa
where coddep in ('E11', 'E21', 'D11', 'D21');


/*3. Obtener un listado de todos los empleados (nombre y apellido) que ganan más de 2500€ al mes y 
#que entraron en la compañía después del 1 de Enero de 1997. También se quiere la información correspondiente a su código de trabajo*/

use empleados_bbdd;
select nombre, apellido, codtra, salario, salario/14 as salarioMensual, feching
from templa
where salario/14 > 2500 AND feching > '1997-01-01';


/*4.Nombre, salario, fecha de ingreso, código de departamento de los empleados que trabajan en los 
#departamentos A00, C01 y E21. Su salario está entre 25000€ y 45000€ incluidos.
# Además, haber entrado a trabajar desde el 2000. Ordenados por fecha de ingreso en ascendente y salario descendentemente.*/ 

use empleados_bbdd;
select nombre, apellido, salario, feching, coddep
from templa
where coddep in('A00', 'C01', 'E21') AND salario between 25000 and 45000 and feching > '2000'
order by feching, salario desc; 