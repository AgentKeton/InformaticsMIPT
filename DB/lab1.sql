/* 1) Выбрать фамилии и зарплаты тех продавцов, которые обслуживают покупателей в штате 'СА' (Калифорния).
2) Определить штаты, для которых средняя задержка между заключением сделки и поставкой товара превышает месяца.
3) Выбрать сотрудников, которые получают зарплату, составляющую болле 3/2 от средней зарплаты для своей должности.
4) Определить менеджера, у которого в непосредственном подчинении находится наибольшее число служащих.*/

SELECT last_name, salary
      FROM employee
      WHERE department_id IN
	      (SELECT department_id
		 FROM DEPARTMENT
		WHERE location_id IN
			 (SELECT location_id
			    FROM LOCATION
			   WHERE regional_group='CHICAGO')     /* CA??? */
		   );
		   
select last_name,salary,job_id
from [DfLessonDb].[dbo].employee
where salary/(select tmp.average
		from (SELECT  job_id ,  AVG(salary) AS average
			FROM [DfLessonDb].[dbo].employee
		    GROUP BY job_id) tmp
		where tmp.job_id=employee.job_id)>(3./2)
		;
		
select last_name,employee_id
into tmp1
from [DfLessonDb].[dbo].EMPLOYEE
where job_id=671

alter table tmp1
ADD [num] int null
go
 
update tmp1
set num =  ( select COUNT(*) from [DfLessonDb].[dbo].EMPLOYEE WHERE manager_id=tmp1.employee_id )  
;
select *
from tmp1
;
