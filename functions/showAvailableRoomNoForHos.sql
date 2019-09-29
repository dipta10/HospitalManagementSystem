-- dipta
-- working

create or replace procedure showAvailableRoomsForHos(
    hosId_ in HOSPITAL.hosId%TYPE
)
    is

    found int := 0;

    roomId_ ROOM.RoomId%TYPE;
    roomNo_ ROOM.RoomNo%TYPE;
    hosName_ HOSPITAL.hosName%TYPE;

    CURSOR c1 IS
    select room.RoomId, room.RoomNo, hospital.hosName
    from room, hospital
    where RoomId not in (
        select roomId
        from medical_record
        where discharged = 0
    ) and room.hosId = hospital.hosId and HOSPITAL.hosId = hosId_;

begin

    open c1;
        loop
            fetch  c1 into roomId_, roomNo_, hosName_;
            exit when c1%notfound;
            dbms_output.put_line('roomId: ' || roomId_ || ' roomNo: ' || roomNo_);
            found := 1;
        end loop;
    close c1;

    if found = 0 then
        dbms_output.put_line('No room is available currently!');
    end if;

end showAvailableRoomsForHos;
/
