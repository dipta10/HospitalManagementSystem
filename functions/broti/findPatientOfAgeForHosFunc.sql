create or replace function findPatientOfAgeForHosFunc(hid in Hospital.HosId%TYPE, age_ in Patient.Age%TYPE)
	return number
	is

    A number;

begin

    select count(distinct P.PatientId) into A from Patient                    P,Hospital H,
    Room R, medical_record M where P.PatientId=M.PatientId AND 
    R.RoomId=M.RoomId and R.HosId=H.HosId and H.HosId=hid AND P.Age>age_ ;

return A;



end findPatientOfAgeForHosFunc;
/
