-- dipta
-- working

create or replace procedure addPatientFromInput(
    name_ in PATIENT.name%TYPE,
    gender_ in PATIENT.gender%TYPE,
    address_ in PATIENT.Address%TYPE,
    contactno_ in PATIENT.ContactNo%TYPE,
    age_ in PATIENT.age%TYPE
)
    is

    cnt PATIENT.PatientId%TYPE;
    id_ PATIENT.PatientId%TYPE;

begin
    cnt := 0;
    select max(PatientId) into cnt from PATIENT;
    id_ := cnt + 1;

    insert into PATIENT values (id_, name_, gender_, address_, contactno_, age_);

    select count(PatientId) into cnt from PATIENT where id_ = PatientId;

    if cnt = 0 then
        dbms_output.put_line('PATIENT NOT ADDED!');
    else
        dbms_output.put_line('PATIENT ADDED!');
    end if;


end addPatientFromInput;
/
