create or replace procedure showAvailableRoomsProc
    is

    cnt int;

begin

    select count(*)
    into cnt
    from room
    where RoomId not in (
        select roomId
        from medical_record
        where discharged = 0
    );

    dbms_output.put_line('available rooms ' || cnt);

end showAvailableRoomsProc;
/
