### Hospital Management System

So far we've tried to demonstrate how **PLSQL** works using Hospital Management System. We tried to demonstrate how procedures, functions, cursor work. We created a file `test.sql` which is the driver program. Depending upon an input it calls various functions/procedures. These are the functions we've created so far.

- **addPatientFromInput**: This procedure takes information of a patient and inserts it into the `PATIENT` table.
- **showAvailabeRooms**: This procedures lists out all the available rooms spread across different branches of the hospital.
- **showAvailableRoomNoForHos**: This procedure lists out all the available rooms in a hospital given an hospital id.
- **showPatientHosRoomNo**: This procedure shows hospital and room information for a patient including all the previous records.
- **findPatientOfAgeForHosFunc:** This function takes one hospital ID & an age number as input and returns the total number of patients having greater age than the given age in the given hospital. 
- **showTotalPatientUnderDoc:** Task of this function is to take a doctor ID as input and returns the total number of patients that doctor has diagnosed.

`checkPatient(patientId)`, `checkDoctor(docId)` are just helper functions used in the aforementioned functions.
At times we also needed to created files like `checkPatientCall.sql` to minimize the amount of congestion inside the main file.

We chose Hospital Management because we can represent the fragments easily given all these hospitals are just different branches of one main hospital.


TODO:
- Create procedures
    - ShowPatientInfo(PatientId): prints all info along with prevous records
- Doctor to Patient Relation using Record Table
- Add add in the Record table


