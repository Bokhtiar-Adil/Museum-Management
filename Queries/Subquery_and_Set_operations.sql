select emp_id, emp_name from EMPLOYEE where emp_id in (select emp_id from EMPLOYEE where designation = 'Director');
select e.emp_id, e.emp_name from EMPLOYEE e where emp_id in (select o.emp_id from EMPLOYEE o where o.designation = 'Director');
select emp_id from EMPLOYEE where dept = 3 union all select supervisor from ARTIFACTS where quantity = 2;
select emp_id from EMPLOYEE where dept = 3 union select supervisor from ARTIFACTS where quantity = 2;
select emp_id from EMPLOYEE where dept = 2 intersect select supervisor from ARTIFACTS where quantity = 2;
(select emp_id from EMPLOYEE where dept = 3 union select supervisor from ARTIFACTS where quantity = 2) minus (select emp_id from EMPLOYEE where dept = 2 intersect select supervisor from ARTIFACTS where quantity = 2);

commit;