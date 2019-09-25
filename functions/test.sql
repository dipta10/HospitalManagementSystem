set serveroutput on; 

declare 
    docId MEDICAL_RECORD.docId%TYPE;
    patientId MEDICAL_RECORD.patientId%TYPE;
	
begin 
    patientId := 3;
	docId := findDoctorForPatient(patientId);

	dbms_output.put_line('patientId: ' || patientId || ' docid: ' || docId);


end; 
/

