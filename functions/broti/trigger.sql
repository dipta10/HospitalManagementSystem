SET SERVEROUTPUT ON;

create or replace trigger pt_trig
after update
of ContactNo
on patient 
for each row

begin
     insert into log_updel
	values(:old.ContactNo, :new.ContactNo, sysdate);
	
end;
/

create or replace trigger doc_trig
after insert
on doctor
for each row

begin
	
	dbms_output.put_line('Data inserted!');
end;
/

create or replace trigger hos_trig
after delete
on hospital
for each row

begin
	
	dbms_output.put_line('Data deleted!');

end;
/
