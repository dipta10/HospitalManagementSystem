create or replace view mv4(P_Name,Hos_Name) as
select P.Name,H.hosName from Patient P,Hospital H, Room R, medical_record M where P.PatientId=M.PatientId AND R.RoomId=M.RoomId and R.HosId=H.HosId and P.PatientId=1;
select * from mv4;
