select e.emp_id, a.ar_id from EMPLOYEE e join ARTIFACTS a on e.emp_id = a.supervisor; 
select e.emp_id, a.ar_id from EMPLOYEE e inner join ARTIFACTS a on e.emp_id = a.supervisor; 
select e.emp_id, a.ar_id from EMPLOYEE e left outer join ARTIFACTS a on e.emp_id = a.supervisor; 
select e.emp_id, a.ar_id from EMPLOYEE e right outer join ARTIFACTS a on e.emp_id = a.supervisor;
select e.emp_id, a.ar_id from EMPLOYEE e full outer join ARTIFACTS a on e.emp_id = a.supervisor;
select emp_id, ar_id from EMPLOYEE cross join ARTIFACTS;

commit;