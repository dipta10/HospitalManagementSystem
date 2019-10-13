-- dipta10

        dbms_output.put_line('Calling check() function.');
        patientId_ := 99;
        temp := checkPatient(patientId_);
        dbms_output.put_line('temp: ' || temp);
        if temp = 0 then
            dbms_output.put_line('patient ' || patientId_ || ' not found!');
        else 
            dbms_output.put_line('Patient ' || patientId_ || ' found!');
        end if;
