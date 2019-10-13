-- dipta

set serveroutput on;

declare

    -- patientId_ MEDICAL_RECORD.PatientId%TYPE := 1;
    -- docId_ MEDICAL_RECORD.DocId%TYPE := 1;              
    -- roomId_ MEDICAL_RECORD.RoomId%TYPE := 99;   

    patientId_ MEDICAL_RECORD.PatientId%TYPE := &patientId;                  
    docId_ MEDICAL_RECORD.DocId%TYPE := &doctorId;               
    roomId_ MEDICAL_RECORD.RoomId%TYPE := &roomId;   
    
begin
    admitPatient(
        patientId_,
        docId_,
        roomId_
    );

end;
/
