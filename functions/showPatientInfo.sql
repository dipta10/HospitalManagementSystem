set serveroutput on;

create or replace procedure showPatientInfoInputProc
    is

    id_ PATIENT.PatientId%TYPE;
    name_ PATIENT.name%TYPE;
    gender_ PATIENT.gender%TYPE;
    address_ PATIENT.Address%TYPE;
    contactno_ PATIENT.ContactNo%TYPE;
    age_ PATIENT.age%TYPE;

begin

    insert into PATIENT values (100, 'Dipta Das', 'Male', 'Niketon' ,'01234567', 23);

end;
/


