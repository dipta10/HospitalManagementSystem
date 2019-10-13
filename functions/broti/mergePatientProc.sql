-- dipta
-- working
-- helper method

create or replace procedure mergePatient
    is

    patientId_ PATIENT.PatientId%TYPE;
    name_ PATIENT.name%TYPE;
    gender_ PATIENT.gender%TYPE;
    address_ PATIENT.Address%TYPE;
    contactNo_ PATIENT.ContactNo%TYPE;
    age_ PATIENT.age%TYPE;

    CURSOR c1 IS
    select patientId, name, gender, address, contactNo, age
    from patient@dipta
    where patientId not in (
        select patientId from patient
    );

begin

    open c1;
        loop
            fetch  c1 into patientId_, name_, gender_, address_, contactNo_, age_;
            exit when c1%notfound;
            insert into patient values (patientId_, name_, gender_, address_, contactNo_, age_);
        end loop;
    close c1;



    commit;

end mergePatient;
/
