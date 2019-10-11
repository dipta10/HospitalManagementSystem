-- broti

create or replace function findDoctorForPatient(patientId_ in MEDICAL_RECORD.PatientId%TYPE)
	return MEDICAL_RECORD.docId%TYPE
	is

    docId_ MEDICAL_RECORD.docId%TYPE;
    found int;

begin

    select count(*) into found from MEDICAL_RECORD where patientId_ = patientId;
    if (found = 0) then
        return -1;
    end if;

    select docId into docId_ from MEDICAL_RECORD where patientId_ = patientId;

    return docId_;

end findDoctorForPatient;
/

