-- dipta10

create or replace function checkPatient(
    PatientId_ PATIENT.PatientId%TYPE
)
    return int
    is

    cnt int;

begin
    cnt := 0;
    select count(PatientId) into cnt from PATIENT where PatientId = PatientId_;
    
    return cnt;

end checkPatient;
/
