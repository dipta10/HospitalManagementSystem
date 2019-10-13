create or replace view mv3(Doc_Name,Salary) as
select Name,Salary
from Doctor
where salary>100000; 
select * from mv3;
