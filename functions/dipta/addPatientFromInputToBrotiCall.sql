-- dipta

set serveroutput on;

declare
    -- Patient Insertion Info

    -- patientId_ PATIENT.PatientId%TYPE;

    name_ PATIENT.name%TYPE := &name;
    gender_ PATIENT.gender%TYPE := &gender;
    address_ PATIENT.Address%TYPE := &address;
    contactno_ PATIENT.ContactNo%TYPE := &contact;
    age_ PATIENT.age%TYPE := &age;

    -- name_ PATIENT.name%TYPE := 'test1';
    -- gender_ PATIENT.gender%TYPE := 'Female';
    -- address_ PATIENT.Address%TYPE := 'nothing';
    -- contactno_ PATIENT.ContactNo%TYPE := 123;
    -- age_ PATIENT.age%TYPE := 9;
    
begin

    addPatientFromInputToBroti(
        name_,
        gender_ ,
        address_,
        contactno_ ,
        age_
    );


end;
/
