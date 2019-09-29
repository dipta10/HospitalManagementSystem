create or replace procedure patientInfo(p_id in out number)
	is

    pt_id PATIENT.PatientId%TYPE;
    p_name PATIENT.name%TYPE;
    p_gender PATIENT.gender%TYPE;
    p_address PATIENT.Address%TYPE;
    p_contactno PATIENT.ContactNo%TYPE;
    p_age PATIENT.age%TYPE;
    doc_name DOCTOR.Name%TYPE;
    hospital_name HOSPITAL.hosName%TYPE;
    ptm_id MEDICAL_RECORD.PatientId%TYPE;
    ptm1_id MEDICAL_RECORD.PatientId%TYPE:=0;
    
    begin

    select PatientId into ptm_id from MEDICAL_RECORD where PatientId=p_id;

	
                
                if ptm_id=p_id then

          select PatientId,name,gender,Address,ContactNo,age into
          pt_id,p_name,p_gender,p_address,p_contactno,p_age
          from PATIENT
          where PatientId=p_id;

          select hosName into hospital_name from HOSPITAL where HosId= 
          (select HosId from ROOM where RoomId=
          (select RoomId from MEDICAL_RECORD where PatientId = p_id));


          select Name into doc_name from DOCTOR where DocId=
          (select DocId from MEDICAL_RECORD where PatientId = p_id);

                dbms_output.put_line('Patient ID= '||pt_id);
                dbms_output.put_line('Patient Name= '||p_name);
                dbms_output.put_line('Patient Gender= '||p_gender);
                dbms_output.put_line('Patient Address= '||p_address);
                dbms_output.put_line('Patient Contact No= '||p_contactno);
                dbms_output.put_line('Patient Age= '||p_age);
                dbms_output.put_line('Hospital Name= '||hospital_name);
                dbms_output.put_line('Doctor Name= '||doc_name);
                dbms_output.put_line('Previous Medical Record= Yes');

            

              elsif ptm1_id=0 then        
                
                               
                select PatientId,name,gender,Address,ContactNo,age into
                pt_id,p_name,p_gender,p_address,p_contactno,p_age
                from PATIENT
                where PatientId=p_id;                

                dbms_output.put_line('Patient ID= '||pt_id);
                dbms_output.put_line('Patient Name= '||p_name);
                dbms_output.put_line('Patient Gender= '||p_gender);
                dbms_output.put_line('Patient Address= '||p_address);
                dbms_output.put_line('Patient Contact No= '||p_contactno);
                dbms_output.put_line('Patient Age= '||p_age);
                dbms_output.put_line('Previous Medical Record= No');
                

       end if;
  
     
	end patientInfo;
	/
