-- dipta10
-- helper function

create or replace function checkHospital(
    hosId_ HOSPITAL.hosId%TYPE
)
    return int
    is

    cnt int;

begin
    cnt := 0;
    select count(hosId) into cnt from Hospital where hosId = hosId_;
    
    return cnt;

end checkHospital;
/
