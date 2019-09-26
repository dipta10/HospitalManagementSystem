set serveroutput on; 

declare 
    name_ PATIENT.name%TYPE;
    gender_ PATIENT.gender%TYPE;
    address_ PATIENT.Address%TYPE;
    contactno_ PATIENT.ContactNo%TYPE;
    age_ PATIENT.age%TYPE;

begin 

    name_ := &name;
    gender_ := &gender;
    address_ := &address;
    contactno_ := &contactno;
    age_ := &age;

    addPatientFromInput(
        name_,
        gender_ ,
        address_,
        contactno_ ,
        age_
    );

end; 
/

