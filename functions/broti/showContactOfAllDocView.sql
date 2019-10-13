create or replace view mv(Doc_Name,ContactNo) as
select Name,ContactNo
from Doctor; 
select * from mv;
