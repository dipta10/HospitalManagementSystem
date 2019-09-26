/* PATIENT TABLE */
    patientId_ PATIENT.PatientId%TYPE;
    name_ PATIENT.name%TYPE;
    gender_ PATIENT.gender%TYPE;
    address_ PATIENT.Address%TYPE;
    contactNo_ PATIENT.ContactNo%TYPE;
    age_ PATIENT.age%TYPE;


/* HOSPITAL TABLE */
    hosId_ HOSPITAL.hosId%TYPE;
    hosName_ HOSPITAL.hosName%TYPE;
    hosCity_ HOSPITAL.HosCity%TYPE; 
    hosAddress_ HOSPITAL.HosAddress%TYPE;


/* ROOM TABLE */
    roomId_ ROOM.RoomId%TYPE;
    roomNo_ ROOM.RoomNo%TYPE;
    hosId_ ROOM.HosId%TYPE;


/* DOCTOR TABLE */
    docId_ DOCTOR.DocId%TYPE;         
    name_ DOCTOR.Name%TYPE; 
    qualification_ DOCTOR.Qualification%TYPE;        
    salary_ DOCTOR.Salary%TYPE;        
    address_ DOCTOR.Address%TYPE;          
    contactNo_ DOCTOR.ContactNo%TYPE;         


/* DOCTOR TABLE */
    recordId_ DOCTOR.RecordId%TYPE;           
    patientId_ DOCTOR.PatientId%TYPE;                  
    docId_ DOCTOR.DocId%TYPE;               
    roomId_ DOCTOR.RoomId%TYPE;   
