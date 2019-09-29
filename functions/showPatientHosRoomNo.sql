-- Broti

set serveroutput on;

create or replace procedure showPatientHosRoomNo(id in PATIENT.PatientId%TYPE)
    is

A Patient.name%TYPE;
B Room.RoomNo%TYPE;
C Hospital.hosName%TYPE;

begin

    select P.Name,R.RoomNo,H.hosName into A,B,C from Patient P,Hospital H,
    Room R, medical_record M where P.PatientId=M.PatientId AND 
    R.RoomId=M.RoomId and R.HosId=H.HosId and P.PatientId=id;

DBMS_OUTPUT.PUT_LINE(A || ' ' || B || ' ' || C);

end;
/