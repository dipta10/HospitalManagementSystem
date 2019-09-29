-- Broti

set serveroutput on;

create or replace procedure showPatientHosRoomNoProc(id in PATIENT.PatientId%TYPE)
    is

    A Patient.name%TYPE;
    B Room.RoomNo%TYPE;
    C Hospital.hosName%TYPE;
    cnt int;

    CURSOR C1 IS
    select P.Name,R.RoomNo,H.hosName from Patient P,Hospital H, Room R, medical_record M where P.PatientId=M.PatientId AND R.RoomId=M.RoomId and R.HosId=H.HosId and P.PatientId=id;


begin

    -- Dipta
    -- Checking whether there's any such patient
    cnt := checkPatient(id);
    if cnt = 0 then
        DBMS_OUTPUT.PUT_LINE('patient with that id not found');
        return;
    end if;

    -- Dipta
    -- checking wether there's any record for that patient
    select count(*) into cnt
    from medical_record
    where PatientId = id;

    if cnt = 0 then
        DBMS_OUTPUT.PUT_LINE('no record found for patient with id: ' || id);
        return;
    end if;


    OPEN C1;
        LOOP
        FETCH C1 INTO A,B,C;
        EXIT WHEN C1%notfound;
        DBMS_OUTPUT.PUT_LINE(A || ' ' || B || ' ' || C);
        END LOOP;
    CLOSE C1;

end showPatientHosRoomNoProc;
/
