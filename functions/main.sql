set serveroutput on;

declare
n Patient.PatientId%TYPE;



begin

n := &enter_value;

showPatientHosRoomNo(n);

end;
/
