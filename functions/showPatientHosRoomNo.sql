set serveroutput on;

create or replace procedure showPatientHosRoomNo(patientId_ in PATIENT.PatientId%TYPE)
    is

    B Room.RoomNo%TYPE;
    C Hospital.hosName%TYPE;
    temp int;
    name_ PATIENT.name%TYPE;

begin

    temp := checkPatient(id);

    if temp = 0 then
        DBMS_OUTPUT.PUT_LINE('Patient not find with the id: ' || id);
        return;
    end if;

    select name into name_ from PATIENT where PatientId = patientId_;

    DBMS_OUTPUT.PUT_LINE(name_ || ' ' || B || ' ' || C);

end;
/
