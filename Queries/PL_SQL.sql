set serveroutput on
declare 
    cursor curs is select emp_id, salary from EMPLOYEE;
    personal curs%ROWTYPE;

begin
    open curs;
    loop
        fetch curs into personal;
        exit when curs%rowcount > 5;
        if personal.salary < 50000 then
            dbms_output.put_line (personal.emp_id || ' is below 50000 salary level.');
        elsif personal.salary < 75000 then
            dbms_output.put_line (personal.emp_id || ' is below 60000 salary level.');
        else
            dbms_output.put_line (personal.emp_id || ' is above 60000 salary level.');
        end if;
    end loop;
    close curs;
end;
/
show errors;

set serveroutput on
declare 
    cursor curs is select emp_id, salary from EMPLOYEE;
    personal curs%ROWTYPE;

begin
    open curs;
    while curs%rowcount <= 5
    loop
        fetch curs into personal;
        if personal.salary < 50000 then
            dbms_output.put_line (personal.emp_id || ' is below 50000 salary level.');
        elsif personal.salary < 75000 then
            dbms_output.put_line (personal.emp_id || ' is below 60000 salary level.');
        else
            dbms_output.put_line (personal.emp_id || ' is above 60000 salary level.');
        end if;
    end loop;
    close curs;
end;
/
show errors;

set serveroutput on
declare
    cursor curs is select emp_id, salary from EMPLOYEE;
    personal curs%ROWTYPE;

begin
    open curs;
    for curs%rowcount in 1..5
    loop
        fetch curs into personal;
        if personal.salary < 50000 then
            dbms_output.put_line (personal.emp_id || ' is below 50000 salary level.');
        elsif personal.salary < 75000 then
            dbms_output.put_line (personal.emp_id || ' is below 60000 salary level.');
        else
            dbms_output.put_line (personal.emp_id || ' is above 60000 salary level.');
        end if;
    end loop;
    close curs;
end;
/
show errors;

set serveroutput on
declare
    cursor curs is select emp_id, salary from EMPLOYEE;
    personal curs%ROWTYPE;

begin
    open curs;
    for curs%rowcount in 1..5
    loop
        fetch curs into personal;
        if personal.salary < 50000 then
            dbms_output.put_line (personal.emp_id || ' is below 50000 salary level.');
        elsif personal.salary < 75000 then
            dbms_output.put_line (personal.emp_id || ' is below 60000 salary level.');
        else
            dbms_output.put_line (personal.emp_id || ' is above 60000 salary level.');
        end if;
    end loop;
    close curs;
end;
/
show errors;

set serveroutput on
create or replace procedure for_loop is
declare
    cursor curs is select emp_id, salary from EMPLOYEE;
    personal curs%ROWTYPE;

begin
    open curs;
    for curs%rowcount in 1..5
    loop
        fetch curs into personal;
        if personal.salary < 50000 then
            dbms_output.put_line (personal.emp_id || ' is below 50000 salary level.');
        elsif personal.salary < 75000 then
            dbms_output.put_line (personal.emp_id || ' is below 60000 salary level.');
        else
            dbms_output.put_line (personal.emp_id || ' is above 60000 salary level.');
        end if;
    end loop;
    close curs;
end;
/
show errors;

begin
    for_loop;
end;
/

create or replace function total_salary return number is
    tot_sal EMPLOYEE.salary%type;
begin
    select sum(salary) into tot_sal from EMPLOYEE;
    return tot_sal;
end;
/

set serveroutput on
begin
    dbms_output.put_line('Total Salary: ' || total_salary);
end;
/


create or replace trigger check_salary_status before insert or update on EMPLOYEE
for each row
declare
    lowerbound constant number(10) := 1000;
    higherbound constant number(10) := 200000;
begin
    if :new.salary <= lowerbound or :new.salary >= higherbound then
        raise_application_error(-20000, 'New salary is invalid');
    end if;
end;
/

insert into EMPLOYEE values(807,'Bilal Hossein','Gardener',8,01234777567,'34/A,Kuet Road,Khulna',500,'Day');
select * from EMPLOYEE;

commit;