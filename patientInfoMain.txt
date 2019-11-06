set serveroutput on;

declare
inputpid number;

begin
inputpid:=&enter_value;
patientInfo(inputpid);

end;
/
	