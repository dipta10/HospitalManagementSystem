create or replace view all_patient as
select * from (
    (select * from patient@broti ) 
    union 
    (select * from patient)
);
