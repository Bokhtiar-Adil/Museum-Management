select * from tab;


--lab 02

describe EVENTS;
select * from EVENTS;
describe ARTIFACTS;
select * from ARTIFACTS;
describe FINANCE;
select * from FINANCE;
describe EMPLOYEE;
select * from EMPLOYEE;
describe BUILDING;
select * from BUILDING;
describe DEPARTMENT;
select * from DEPARTMENT;


describe EVENTS;
alter table EVENTS add (ev_comment varchar2(50));
describe EVENTS;
alter table EVENTS modify (ev_comment varchar2(100));
describe EVENTS;
alter table EVENTS rename column ev_comment to ev_remarks;
describe EVENTS;
alter table EVENTS drop column ev_remarks;
describe EVENTS;

insert into BUILDING values (320, 'Office', 'No Use');
update BUILDING set used_for = 'New Office' where room_id = 320;
select * from BUILDING where room_id = 320;
delete from BUILDING where room_id = 320;
select * from BUILDING;

commit;