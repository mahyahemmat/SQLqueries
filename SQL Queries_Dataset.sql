--1
select * from EMPLOYEES where ADDRESS like '%Elgin,IL';
--2
select * from EMPLOYEES where B_DATE like '197%';
--3
select * from EMPLOYEES where DEP_ID=5 AND SALARY between 60000 and 70000;
--4A
select * from EMPLOYEES order by DEP_ID;
--4B
select * from EMPLOYEES order by DEP_ID desc, L_NAME desc;
--5A
select DEP_ID, count(DEP_ID) from EMPLOYEES group by DEP_ID;
--5B
select DEP_ID, count(*) as NUM_EMPLOYEES, avg(SALARY) as  AVG_SALARY 
from EMPLOYEES group by DEP_ID;
--5c
select DEP_ID, count(*) as NUM_EMPLOYEES, avg(SALARY) as  AVG_SALARY
from EMPLOYEES group by DEP_ID order by AVG_SALARY;
--5d
select DEP_ID as NUM_EMPLOYEES, avg(SALARY) as  AVG_SALARY
from EMPLOYEES
group by DEP_ID
having count(DEP_ID) < 4 
order by AVG_SALARY;
--6
select * from DEPARTMENTS limit 2;
select * from EMPLOYEES limit 2;
select D.DEP_NAME, E.F_name, E.L_name
from DEPARTMENTS as D, EMPLOYEES as E
where D.DEPT_ID_DEP=E.DEP_ID
order by D.DEP_NAME, E.L_name desc