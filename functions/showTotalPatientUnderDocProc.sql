-- Broti

create or replace procedure showTotalPatientUnderDoc(docId_ in Doctor.DocId%TYPE)
    is

    cnt number;
    name_ DOCTOR.Name%TYPE; 

begin

    select count(distinct patientId) 
    into cnt 
    from medical_record
    where docId = docId_;

    select name 
    into name_ 
    from doctor 
    where docId = docId_;

    dbms_output.put_line(name_ || ' : ' || cnt);

end showTotalPatientUnderDoc;
/
