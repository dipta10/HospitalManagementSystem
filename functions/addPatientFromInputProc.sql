create or replace procedure addPatientFromInput(
    id_ PATIENT.PatientId%TYPE,
    name_ PATIENT.name%TYPE,
    gender_ PATIENT.gender%TYPE,
    address_ PATIENT.Address%TYPE,
    contactno_ PATIENT.ContactNo%TYPE,
    age_ PATIENT.age%TYPE
)
    is
    cnt int;

begin
    cnt := 0;
    select max(PatientId) into cnt from PATIENT where PatientId = id_;

    insert into PATIENT values (id_, name_, gender_, address_, contactno_, age_);

    dbms_output.put_line('PATIENT ADDED!');

end addPatientFromInput;
/
