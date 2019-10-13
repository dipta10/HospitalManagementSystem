-- dipta10
-- helper function
-- working
-- checks other sites

create or replace function checkPatient(
    PatientId_ PATIENT.PatientId%TYPE
)
    return int
    is

    cnt int;

begin
    cnt := 0;
    select count(PatientId) into cnt from PATIENT where PatientId = PatientId_;
    
    if cnt > 0 then
        return cnt;
    end if;

    select count(PatientId) into cnt from PATIENT@dipta where PatientId = PatientId_;

    return cnt;
    

end checkPatient;
/
