create or replace function findRoomForPatientFunc(patientId_ in MEDICAL_RECORD.PatientId%TYPE)
	return MEDICAL_RECORD.docId%TYPE
	is

    RoomId_ MEDICAL_RECORD.RoomId%TYPE;
    found int;

begin

    select count(*) into found from MEDICAL_RECORD where patientId_ = patientId;
    if (found = 0) then
        return -1;
    end if;

    select RoomId into RoomId_ from MEDICAL_RECORD where patientId_ = patientId;
    return RoomId_;

end findRoomForPatientFunc;
/
