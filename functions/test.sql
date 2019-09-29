set serveroutput on; 

SET VERIFY OFF;
ACCEPT x NUMBER PROMPT 'Enter Option: ';

declare 
    x number := &x;

    -- Patient Insertion Info
    patientId_ PATIENT.PatientId%TYPE;
    name_ PATIENT.name%TYPE;
    gender_ PATIENT.gender%TYPE;
    address_ PATIENT.Address%TYPE;
    contactno_ PATIENT.ContactNo%TYPE;
    age_ PATIENT.age%TYPE;

    -- other variables
    temp int;

begin 

    if x = 1 then
        dbms_output.put_line('Adding patient.');
        @@addPatientFromInputCall.sql;
    elsif x = 2 then
        @@checkPatientCall.sql;
    else
        dbms_output.put_line('Input not correct');
    end if;


end; 
/

