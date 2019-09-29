set serveroutput on;

declare
inputHosName varchar2(15);
totalNumberOfRoom integer;

begin
inputHosName:='&enter_value';
totalNumberOfRoom:=TotalRoomInAHospital(inputHosName);
dbms_output.put_line('Total room in this hospital is '||totalNumberOfRoom);

end;
/