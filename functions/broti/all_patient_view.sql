create or replace view all_patient as
select * from (
    (select * from patient@dipta ) 
    union 
    (select * from patient)
);
