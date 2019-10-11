set serveroutput on;

declare
    hosId_ HOSPITAL.hosId%TYPE := &hospital_Id;

begin
    showAvailableRoomsForHos(hosId_);

end;
/
