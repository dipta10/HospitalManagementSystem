set serveroutput on; 

declare 
    id_ PATIENT.PatientId%TYPE;
    name_ PATIENT.name%TYPE;
    gender_ PATIENT.gender%TYPE;
    address_ PATIENT.Address%TYPE;
    contactno_ PATIENT.ContactNo%TYPE;
    age_ PATIENT.age%TYPE;

begin 


    id_ := &id;
    name_ := &name;
    gender_ := &gender;
    address_ := &address;
    contactno_ := &contactno;
    age_ := &age;

    addPatientFromInput(
        id_,
        name_,
        gender_ ,
        address_,
        contactno_ ,
        age_
    );
end; 
/

