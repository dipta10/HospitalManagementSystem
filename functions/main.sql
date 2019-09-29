set serveroutput on;

declare
    n Patient.PatientId%TYPE;
    id int;
    found MEDICAL_RECORD.docId%TYPE;
begin

    id := 1;

    found := findDoctorForPatient(id);

    -- dbms_output.put_line('1. add patient');

end;
/
