DROP TABLE PATIENT CASCADE CONSTRAINTS;
CREATE TABLE PATIENT(
    PatientId int, 
    Name varchar2(30), 
    gender VARCHAR(9),
    Address varchar2(100),
    ContactNo varchar2(100),
    Age int, 
    PRIMARY KEY(PatientId),
    check(gender in ('Male', 'Female', 'Unknown'))
);


DROP TABLE HOSPITAL CASCADE CONSTRAINTS;
CREATE TABLE HOSPITAL (
    HosId int, 
    hosName varchar2(30), 
    HosCity varchar2(100),
    HosAddress varchar2(100),
    PRIMARY KEY(HosId)
);

DROP TABLE ROOM CASCADE CONSTRAINTS;
CREATE TABLE ROOM (
    RoomId int, 
    RoomNo int,
    HosId int, 
    PRIMARY KEY(RoomId),
    FOREIGN KEY(HosId) REFERENCES HOSPITAL(HosId)
);

DROP TABLE ADMITTED_IN CASCADE CONSTRAINTS;
CREATE TABLE ADMITTED_IN (
    PatientId int, 
    RoomId int, 
    HosId int, 
    PRIMARY KEY(PatientId, RoomId, HosId),
    FOREIGN KEY(RoomId) REFERENCES ROOM(RoomId),
    FOREIGN KEY(HosId) REFERENCES HOSPITAL(HosId),
    FOREIGN KEY(PatientId) REFERENCES PATIENT(PatientId)
);
