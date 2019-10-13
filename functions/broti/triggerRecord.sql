-- create table record_log (
--     RecordId int,
--     newDischarged number(1),
--     oldDischarged number(1),
--     time date
-- );

create or replace trigger record_log
after update
on medical_record
for each row

begin
	insert into record_log
	values(:old.RecordId, :old.discharged, :new.discharged, sysdate);
end;
/
