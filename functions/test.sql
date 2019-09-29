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

    -- dbms_output.put_line('1. add patient');
    -- dbms_output.put_line('2. check patient');

    if x = 1 then
        dbms_output.put_line('Adding patient.');
        @@addPatientFromInputCall.sql;
    elsif x = 2 then
        @@checkPatientCall.sql;
    elsif x = 3 then
        dbms_output.put_line('Showing total patient under doctor');
        showTotalPatientUnderDoc(1);
    else
        dbms_output.put_line('Input not correct');
    end if;
    

end; 
/

