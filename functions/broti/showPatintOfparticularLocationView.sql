create or replace view mv2(PName,Address) as
select Name,Address
from all_patient
where Address='Uttara'; 
select * from mv2;
