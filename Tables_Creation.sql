drop table EVENTS;
drop table ARTIFACTS;
drop table FINANCE;
drop table EMPLOYEE;
drop table BUILDING;
drop table DEPARTMENT;


create table DEPARTMENT (
    dept_id number(5) NOT NULL,
    dept_name varchar2(35),
    PRIMARY KEY(dept_id)
);
create table BUILDING (
    room_id number(5) NOT NULL,
    section varchar2(50),
    used_for varchar2(50),
    PRIMARY KEY(room_id)
);
create table EMPLOYEE (
    emp_id number(5) NOT NULL,
    emp_name varchar2(40),
    designation varchar2(50),
    dept number(5) NOT NULL,
    phone number(15),
    emp_address varchar2(50),
    salary number(10),
    work_shift varchar2(10),
    PRIMARY KEY(emp_id),
    FOREIGN KEY(dept) REFERENCING DEPARTMENT(dept_id) ON DELETE CASCADE
);
create table FINANCE (
    rec_id number(5) NOT NULL,
    approver number(5) NOT NULL,
    rec_type varchar2(20),
    rec_date varchar2(10),
    income number(10),
    expense number(10),
    PRIMARY KEY(rec_id),
    FOREIGN KEY(approver) REFERENCING EMPLOYEE(emp_id) ON DELETE CASCADE
);
create table ARTIFACTS (
    ar_id number(5) NOT NULL,
    stored_in number(5) NOT NULL,
    supervisor number(5) NOT NULL,
    quantity number(3),
    ar_name varchar2(30),
    culture_of_origin varchar2(30),
    historical_period varchar2(20),
    brought_in number(5),
    ar_comment varchar2(50),
    PRIMARY KEY(ar_id),
    FOREIGN KEY(stored_in) REFERENCING BUILDING(room_id) ON DELETE CASCADE,
    FOREIGN KEY(supervisor) REFERENCING EMPLOYEE(emp_id) ON DELETE CASCADE
);
create table EVENTS (
    ev_id number(5) NOT NULL,
    ev_name varchar2(30),
    managed_by number(5) NOT NULL,
    finance_no number(5) NOT NULL,
    ev_type varchar2(15),
    ev_date varchar2(10),
    ev_time varchar2(5),
    PRIMARY KEY(ev_id),
    FOREIGN KEY(managed_by) REFERENCING EMPLOYEE(emp_id) ON DELETE CASCADE,
    FOREIGN KEY(finance_no) REFERENCING FINANCE(rec_id) ON DELETE CASCADE
);

commit;