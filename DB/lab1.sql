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
		;*/
		
select last_name,employee_id
	into [DfLessonDb].[dbo].tmp5
	from [DfLessonDb].[dbo].EMPLOYEE
	where job_id=671

alter table [DfLessonDb].[dbo].tmp5
ADD [num] int null
go
 
update [DfLessonDb].[dbo].tmp5
set [DfLessonDb].[dbo].tmp5.num =  
	( select COUNT(*) 
		from [DfLessonDb].[dbo].EMPLOYEE 
		WHERE manager_id=tmp5.employee_id )  


SELECT last_name, employee_Id, num
FROM [DfLessonDb].[dbo].tmp5
WHERE num=
		(SELECT MAX(num)
			FROM [DfLessonDb].[dbo].tmp5)
;

SELECT regional_group, DATEDIFF ( day , order_date , ship_date ) as diff
FROM [DfLessonDb].[dbo].SALES_ORDER,  [DfLessonDb].[dbo].CUSTOMER, [DfLessonDb].[dbo].EMPLOYEE, [DfLessonDb].[dbo].DEPARTMENT, [DfLessonDb].[dbo].LOCATION
WHERE  LOCATION.location_id=DEPARTMENT.location_id
AND DEPARTMENT.department_id=EMPLOYEE.department_id
AND EMPLOYEE.employee_id=CUSTOMER.salesperson_id
AND CUSTOMER.customer_id=SALES_ORDER.customer_id
AND CAST(DATEDIFF ( day , order_date , ship_date ) AS FLOAT)/30 >1         /* возвращает, количество месяцев между датами d1 и d2 (возможно, с дробной частью)*/
;
