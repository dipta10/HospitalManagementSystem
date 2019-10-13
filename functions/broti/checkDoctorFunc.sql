-- dipta10
-- helper function

create or replace function checkDoctor(
    docId_ DOCTOR.DocId%TYPE
)
    return int
    is

    cnt int;

begin
    cnt := 0;
    select count(docId) into cnt from DOCTOR where docId = docId_;
    
    return cnt;

end checkDoctor;
/
