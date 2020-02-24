select * from EMPLOYEES limit 5;
select * from JOB_HISTORY limit 5;
--
select E.DEP_ID, E.F_NAME, E.L_NAME,  JH.START_DATE
from EMPLOYEES E inner join JOB_HISTORY JH
on E.DEP_ID=JH.DEPT_ID where E.DEP_ID=5;
--
select E.DEP_ID, E.F_NAME, E.L_NAME,  JH.START_DATE, J.JOB_TITLE
from EMPLOYEES E 
inner join JOB_HISTORY JH on E.DEP_ID=JH.DEPT_ID 
inner join JOBS J on E.JOB_ID=J.JOB_IDENT 
where E.DEP_ID=5;
--
select E.EMP_ID, E.L_NAME,  D.DEPT_ID_DEP, D.DEP_NAME
from EMPLOYEES E 
left outer join DEPARTMENTS D on E.DEP_ID=D.DEPT_ID_DEP ;
--
select E.EMP_ID, E.L_NAME,  D.DEPT_ID_DEP, D.DEP_NAME
from EMPLOYEES E 
left outer join DEPARTMENTS D on E.DEP_ID=D.DEPT_ID_DEP 
where year(E.B_DATE) < 1980;
--
select E.EMP_ID, E.L_NAME,  D.DEPT_ID_DEP, D.DEP_NAME
from EMPLOYEES E 
left outer join DEPARTMENTS D on E.DEP_ID=D.DEPT_ID_DEP 
AND year(E.B_DATE) < 1980;
--
select E.F_NAME, E.L_NAME,  D.DEP_NAME
from EMPLOYEES E 
full join DEPARTMENTS D on E.DEP_ID=D.DEPT_ID_DEP;
--
select E.F_NAME, E.L_NAME,  D.DEPT_ID_DEP, D.DEP_NAME
from EMPLOYEES E 
full join DEPARTMENTS D on E.DEP_ID=D.DEPT_ID_DEP and E.SEX='M';


