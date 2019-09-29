set serveroutput on;

declare
    n Patient.PatientId%TYPE;
    id int;
    found MEDICAL_RECORD.docId%TYPE;
begin
    
    showPatientHosRoomNoProc(4);

    -- dbms_output.put_line('1. add patient');

end;
/
