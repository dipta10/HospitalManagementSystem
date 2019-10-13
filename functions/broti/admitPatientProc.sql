-- dipta
-- working

create or replace procedure admitPatient(
    patientId_ MEDICAL_RECORD.PatientId%TYPE,
    docId_ MEDICAL_RECORD.DocId%TYPE,
    roomId_ MEDICAL_RECORD.RoomId%TYPE
)
    is

    cnt int;
    id_ MEDICAL_RECORD.RecordId%TYPE;

begin

    mergePatient;

    cnt := 0;
    select count(PatientId) into cnt from PATIENT where PatientId = PatientId_;
    if (cnt = 0) then
        dbms_output.put_line('No patient with ID' || patientId_ || ' found');
        return;
    end if;

    cnt := checkDoctor(docId_);
    if (cnt = 0) then
        dbms_output.put_line('No doctor with ID ' || docId_ || ' found');
        return;
    end if;

    cnt := 0;
    select count(roomId) into cnt from ROOM where RoomId = roomId_;
    if (cnt = 0) then
        dbms_output.put_line('No room with ID ' || roomId_ || ' found');
        return;
    end if;

    -- add check room

    cnt := 0;
    select max(RecordId) into cnt from MEDICAL_RECORD;
    id_ := cnt + 1;


    select max(RecordId) into cnt from MEDICAL_RECORD@dipta;
    if (cnt >= id_) then
        id_ := cnt + 1;
    end if;

    insert into MEDICAL_RECORD values (id_, patientId_, docId_, roomId_, (select sysdate from dual), 1);

    commit;

end admitPatient;
/

