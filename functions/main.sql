set serveroutput on;

declare
    n Patient.PatientId%TYPE;
    id int;
begin

    id := 1;

    showTotalPatientUnderDoc(id);

end;
/
