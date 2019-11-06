DROP TABLE PATIENT CASCADE CONSTRAINTS;
CREATE TABLE PATIENT(
    PatientId int, 
    Name varchar2(15), 
    gender VARCHAR(9),
    Address varchar2(20),
    ContactNo varchar2(11),
    Age int, 
    PRIMARY KEY(PatientId),
    check(gender in ('Male', 'Female', 'Unknown'))
);

/* insert into PATIENT values(id, 'name', 'gender', 'add', 'contactno', age); */
insert into PATIENT values (1, 'Dipta Das', 'Male', 'Niketon' ,'01234567', 23);
insert into PATIENT values (2, 'Nabil Sifat', 'Male', 'Tejgaon', '01797201337', 27);
insert into PATIENT values (3, 'Syed Sanzam', 'Male', 'Uttara', '01777258585', 29);
insert into PATIENT values (4, 'Sabit', 'Male', 'Niketon', '0174324', 50);
select * from PATIENT;


DROP TABLE HOSPITAL CASCADE CONSTRAINTS;
CREATE TABLE HOSPITAL (
    HosId int, 
    hosName varchar2(15), 
    HosCity varchar2(20),
    HosAddress varchar2(20),
    PRIMARY KEY(HosId)
);

/* insert into HOSPITAL values (id, 'name', 'city', 'add'); */
insert into HOSPITAL values (1, 'DNMC', 'Dhaka', 'Puran Dhaka');
insert into HOSPITAL values (2, 'DMC', 'Dhaka', 'Dhaka');
insert into HOSPITAL values (3, 'Abdul Hamid', 'Kishoreganj', 'Kishoreganj');
select * from HOSPITAL;

DROP TABLE ROOM CASCADE CONSTRAINTS;
CREATE TABLE ROOM (
    RoomId int, 
    RoomNo varchar(5), /* 7B04 */
    HosId int, 
    PRIMARY KEY(RoomId),
    FOREIGN KEY(HosId) REFERENCES HOSPITAL(HosId)
);

/* insert into ROOM values (RoomId, RoomNo, HosId); */
/* DNMC Hospital */
insert into ROOM values (1, '7B01', 1);
insert into ROOM values (2, '7B04', 1);
insert into ROOM values (3, '7B06', 1);
/* DMC Hospital */
insert into ROOM values (4, '7B01', 2);
insert into ROOM values (5, '7B04', 2);
insert into ROOM values (6, '7B07', 2);
/* Abdul Hamid Hospital */
insert into ROOM values (7, '2B01', 3);
insert into ROOM values (8, '3B04', 3);
insert into ROOM values (9, '5B04', 3);

select * from ROOM;


DROP TABLE DOCTOR CASCADE CONSTRAINTS;
CREATE TABLE DOCTOR(
    DocId int, 
    Name varchar2(15), 
    Qualification varchar2(10),
    Salary number(7),
    Address varchar2(18),
    ContactNo varchar2(11),
    PRIMARY KEY(DocId)
);
/* MBBS, FCPS, MCPS, MRCP */
/* insert into DOCTOR values (DocId, Name, Qualification, Salary, Address, ContactNo); */
insert into DOCTOR values (1, 'Suprova Shyama', 'FCPS', 150000, 'Puran Dhaka', '1234');
insert into DOCTOR values (2, 'Ikra', 'MBBS', 100000, 'Uttara', '3245');
insert into DOCTOR values (3, 'Dhruba', 'MCPS', 120000, 'Malibag', '3525');

DROP TABLE MEDICAL_RECORD
CASCADE CONSTRAINTS;
CREATE TABLE MEDICAL_RECORD (
    RecordId int,
    PatientId int,
    DocId int,
    RoomId int,
    admitDate date,
    releaseDate date,
    /* HosId int, */
    PRIMARY KEY(RecordId),
    FOREIGN KEY(RoomId) REFERENCES ROOM(RoomId),
    /* FOREIGN KEY(HosId) REFERENCES HOSPITAL(HosId), */
    FOREIGN KEY(PatientId) REFERENCES PATIENT(PatientId),
    FOREIGN KEY(DocId) REFERENCES DOCTOR(DocId)
);

/* 1 --> 'Dipta Das' */
/* 2 --> 'Nabil Sifat' */
/* 3 --> 'Syed Sanzam' */
/* 4 --> 'Sabit' */

/* insert into MEDICAL_RECORD values (RecordId, PatientId, DocId, RoomId); */

insert into MEDICAL_RECORD values (1, 1, 1, 2,'14-Jul-2019','19-Jul-2019');
insert into MEDICAL_RECORD values (2, 2, 2, 5,'15-Sep-2019','25-Sep-2019');
insert into MEDICAL_RECORD values (3, 3, 1, 9,'23-Aug-2019','26-Aug-2019');

select * from MEDICAL_RECORD;

