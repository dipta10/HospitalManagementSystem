DROP TABLE PATIENT
CASCADE CONSTRAINTS;
CREATE TABLE PATIENT
(
    PatientId int,
    Name varchar2(20),
    gender VARCHAR(9),
    Address varchar2(30),
    ContactNo varchar2(11),
    Age int,
    PRIMARY KEY(PatientId),
    check(gender in ('Male', 'Female', 'Unknown'))
);

/* insert into PATIENT values(id, 'name', 'gender', 'add', 'contactno', age); */
insert into PATIENT
values
    (1, 'Dipta Das', 'Male', 'Niketon' , '01234567', 23);
insert into PATIENT
values
    (2, 'Nabil Sifat', 'Male', 'Tejgaon', '01797201337', 27);
insert into PATIENT
values
    (3, 'Syed Sanzam', 'Male', 'Uttara', '01777258585', 29);
insert into PATIENT
values
    (4, 'Sabit', 'Male', 'Niketon', '0174324', 50);
select *
from PATIENT;


DROP TABLE HOSPITAL
CASCADE CONSTRAINTS;
CREATE TABLE HOSPITAL
(
    HosId int,
    hosName varchar2(20),
    HosCity varchar2(20),
    HosAddress varchar2(30),
    PRIMARY KEY(HosId)
);

/* insert into HOSPITAL values (id, 'name', 'city', 'add'); */
insert into HOSPITAL
values
    (1, 'DNMC', 'Dhaka', 'Puran Dhaka');
insert into HOSPITAL
values
    (2, 'DMC', 'Dhaka', 'Dhaka');
insert into HOSPITAL
values
    (3, 'Abdul Hamid', 'Kishoreganj', 'Kishoreganj');
select *
from HOSPITAL;

DROP TABLE ROOM
CASCADE CONSTRAINTS;
CREATE TABLE ROOM
(
    RoomId int,
    RoomNo varchar(5),
    /* 7B04 */
    HosId int,
    PRIMARY KEY(RoomId),
    FOREIGN KEY(HosId) REFERENCES HOSPITAL(HosId)
);

/* insert into ROOM values (RoomId, RoomNo, HosId); */
/* DNMC Hospital */
insert into ROOM
values
    (1, '7B01', 1);
insert into ROOM
values
    (2, '7B04', 1);
insert into ROOM
values
    (3, '7B06', 1);
/* DMC Hospital */
insert into ROOM
values
    (4, '7B01', 2);
insert into ROOM
values
    (5, '7B04', 2);
insert into ROOM
values
    (6, '7B07', 2);
/* Abdul Hamid Hospital */
insert into ROOM
values
    (7, '2B01', 3);
insert into ROOM
values
    (8, '3B04', 3);
insert into ROOM
values
    (9, '5B04', 3);

select *
from ROOM;

DROP TABLE ADMITTED_IN
CASCADE CONSTRAINTS;
CREATE TABLE ADMITTED_IN
(
    PatientId int,
    RoomId int,
    /* HosId int, */
    PRIMARY KEY(PatientId, RoomId),
    FOREIGN KEY(RoomId) REFERENCES ROOM(RoomId),
    /* FOREIGN KEY(HosId) REFERENCES HOSPITAL(HosId), */
    FOREIGN KEY(PatientId) REFERENCES PATIENT(PatientId)
);

/* 1 --> 'Dipta Das' */
/* 2 --> 'Nabil Sifat' */
/* 3 --> 'Syed Sanzam' */
/* 4 --> 'Sabit' */

/* insert into ADMITTED_IN values (PatientId, RoomId); */
insert into ADMITTED_IN
values
    (1, 2);
insert into ADMITTED_IN
values
    (2, 5);
insert into ADMITTED_IN
values
    (3, 9);

select *
from ADMITTED_IN;

