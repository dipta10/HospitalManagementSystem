set serveroutput on;

declare
    n Patient.PatientId%TYPE;
    id int;
    found MEDICAL_RECORD.docId%TYPE;

    temp int;
begin
    
    showTotalPatientUnderDoc(3);
    -- dbms_output.put_line('1. add patient');

end;
/
