create or replace function TotalRoomInAHospital(hos_name in out varchar2)
return integer
is

totalRoom integer;

begin

select COUNT(RoomId) into totalRoom from ROOM where HosId=
(select HosId from HOSPITAL where hosName=hos_name);

return totalRoom;

end TotalRoomInAHospital;
/