set serveroutput on; 

SET VERIFY OFF;
ACCEPT x NUMBER PROMPT 'Enter Option: ';

declare 
    x number := &x;

    -- Patient Insertion Info
    name_ PATIENT.name%TYPE;
    gender_ PATIENT.gender%TYPE;
    address_ PATIENT.Address%TYPE;
    contactno_ PATIENT.ContactNo%TYPE;
    age_ PATIENT.age%TYPE;

begin 

    if x = 1 then
        dbms_output.put_line('CALLING FUNCTION');
        @@addPatientFromInputCall2.sql;
    else
        dbms_output.put_line('Input not correct');
    end if;


end; 
/

