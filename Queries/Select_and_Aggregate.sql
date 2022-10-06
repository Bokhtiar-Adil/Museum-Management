select section from BUILDING;
select distinct(section) from BUILDING;

select (salary*12) as yearly_salary from EMPLOYEE where dept = 2;
select emp_name, dept from EMPLOYEE where dept = 1 or dept = 2;
select emp_name, salary from EMPLOYEE where salary>=50000 and salary<=80000;
select emp_name, salary from EMPLOYEE where salary between 50000 and 80000;
select emp_name, salary from EMPLOYEE where salary not between 50000 and 80000;
select emp_name, salary from EMPLOYEE where salary in (50000, 80000);
select emp_name, salary from EMPLOYEE where salary not in (50000, 80000);
select emp_name, emp_address from EMPLOYEE where emp_address like '%Boyra%';
select emp_name, salary from EMPLOYEE order by salary;
select emp_name, salary from EMPLOYEE order by salary desc;
select emp_name, dept, salary from EMPLOYEE order by dept, salary desc;

select max(salary) from EMPLOYEE;
select sum(salary) from EMPLOYEE;
select avg(nvl(salary,0)) from EMPLOYEE;
select count(salary), count(distinct(salary)), count(all salary) from EMPLOYEE;
select dept, count(emp_id) from EMPLOYEE group by dept;
select dept, count(emp_id) from EMPLOYEE where dept>2 group by dept;
select dept, count(emp_id) from EMPLOYEE group by dept having dept>2;
select dept, count(emp_id) from EMPLOYEE group by dept having count(emp_id)>5;

commit;