-- dipta

set serveroutput on;

declare
    -- Patient Insertion Info

    patientId_ PATIENT.PatientId%TYPE := &patient_id;
    
begin

    dischargePatient(patientId_);

end;
/
