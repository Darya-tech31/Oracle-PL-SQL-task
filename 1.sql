/*declare
v_var number;
v_text varchar2(100);
begin
  dbms_output.enable;
  select 'TestMessage'
     into v_text
    from dual;
  dbms_output.put_line(v_text); 
end;*/

/*declare
begin
dbms_output.put_line('Hello world');
end;*/

/*declare --"анонимный блок"
l_right_now Varchar2(9);
begin
l_right_now := sysdate;
dbms_output.put_line(l_right_now);
exception
  when value_error
    then
      dbms_output.put_line('l_right ne hvataet mesta ' || ' dlya standartnogo formata date');
end;*/

/*procedure calc_totals --"вложенный"
  is
  year_total number;
  begin
    year_total := 0;
    
    declare
    month_total number;
    begin
    month_total := year_total/12;
    end set_month_total;
    end;*/

/*package scope_demo
is
g_global number;
procedure set_global(number_in in number);
end scope_demo;

package body scope_demo
is
procedure set_global(number_in in number)
  is
  l_salary number := 10000;
  l_count pls_integer;
  begin
    <<local_block>>
    declare
    l_inner number;
    begin
      select count(*)
    into l_count
    from employees
    where department_id = l_inner and salary > l_salary;
    end local_block;
    
    g_global := number_in;
    end set_global;
    end scope_demo; */
    
   /* package body scope_demo
is
procedure set_global(number_in in number)
  is
  l_salary number := 10000;
  l_count pls_integer;
  begin
    
    <<local_block>>
    declare
    l_inner pls_integer;
    begin
      select count(*)
    into set_global.l_count
    from employees e
    where e.department_id = local_block.l_inner and e.salary > set_global.l_salary;
    end local_block;
    
    scope_demo.g_global := set_global.number_in;
    end set_global;
    end scope_demo;*/
    
 /*   declare
    first_day date;
    last_day date;
    begin
      first_day := sysdate;
      last_day := add_months(first_day, 6);
      end;*/
      
/*declare
boolean_true Boolean := True;
boolean_false Boolean := False;
boolean_null Boolean;
function boolean_to_varchar2(flag in boolean) return varchar2 is
  begin
    return
    case flag
      when true then 'True'
        when false then 'False'
          else 'NULL'
            end;
            end;
    
begin
  dbms_output.put_line(boolean_to_varchar2(boolean_true));
  dbms_output.put_line(boolean_to_varchar2(boolean_false));
  dbms_output.put_line(boolean_to_varchar2(boolean_null));
  end;*/
  
  /*declare
  salary number := 20000;
  employee_id number := 36325;
  procedure give_bonus(emp_id in number, bonus_amt in number) is
    begin
      dbms_output.put_line(emp_id);
      dbms_output.put_line(bonus_amt);
      end;
      begin
        give_bonus(employee_id,
        CASE
          when salary >= 10000 and salary <= 20000 Then 1500
            when salary > 20000 and salary <= 40000 Then 1000
              when salary > 40000 then 500
                else 0
                  end);
                  end;*/
                  
/*declare
salary number := 20000;
employee_id number := 36325;
bonus_amount number;
begin
  bonus_amount :=
  case
    when salary >=  10000 and salary <= 20000 then 1500
      when salary > 20000 and salary <= 40000 then 1000
        when salary > 40000 then 500
          else 0
            end * 10;
            dbms_output.put_line(bonus_amount);
            end;*/
            
/*declare 
salary number := 20000;
employee_id number;
 procedure give_bonus(emp_id in number, bonus_amt in number) is
begin
      dbms_output.put_line(emp_id);
      dbms_output.put_line(bonus_amt);
      end;
      begin
  if salary > 10000
    then give_bonus(employee_id, 500);
    end if;
    end;*/
    
/*declare 
salary number := 20000;
employee_id number;
 procedure give_bonus(emp_id in number, bonus_amt in number) is
begin
      dbms_output.put_line(emp_id);
      dbms_output.put_line(bonus_amt);
      end;
      begin
  if salary >= 10000
    then 
      give_bonus(employee_id, 0);
    else
     give_bonus(employee_id, 500);
    end if;
    end;*/
    
/*declare 
salary number := 20000;
employee_id number;
 procedure give_bonus(emp_id in number, bonus_amt in number) is
begin
      dbms_output.put_line(emp_id);
      dbms_output.put_line(bonus_amt);
      end;
      begin
  if NVL(salary, 0) <= 10000
    then 
      give_bonus(employee_id, 0);
    else
     give_bonus(employee_id, 500);
    end if;
    end;*/
    
/*declare 
salary number := 20000;
employee_id number;
procedure give_bonus(emp_id in number, bonus_amt in number) is
begin
      dbms_output.put_line(emp_id);
      dbms_output.put_line(bonus_amt);
      end;
      begin
  if salary Between 10000 and 20000
    then 
      give_bonus(employee_id, 1500);
    elsif salary between 20000 and 40000
      then
     give_bonus(employee_id, 1000);
     elsif salary > 40000
         then
     give_bonus(employee_id, 500);
     else
     give_bonus(employee_id, 0);
    end if;
    end; */
       
/*salary number := 40000; --case
employee_id number;
procedure give_bonus(emp_id in number, bonus_amt in number) is
begin
      dbms_output.put_line(emp_id);
      dbms_output.put_line(bonus_amt);
      end;
      begin
  case 
    when salary  >= 10000 and salary <= 20000
    then 
      give_bonus(employee_id, 1500);
       when salary > 20000 and salary <= 40000
      then
     give_bonus(employee_id, 1000); 
   when salary  > 40000
         then
     give_bonus(employee_id, 500);
     else
     give_bonus(employee_id, 0);
    end case;
    end;*/
    
/*create or replace procedure give_bonus(emp_id in number, bonus_amt in number) is
salary number := 40000;
employee_id number;
begin
      dbms_output.put_line(emp_id);
      dbms_output.put_line(bonus_amt);
  case true
    when salary  >= 10000 and salary <= 20000
    then 
      give_bonus(employee_id, 1500);
       when salary > 20000 and salary <= 40000
      then
     give_bonus(employee_id, 1000); 
   when salary  > 40000
         then
     give_bonus(employee_id, 500);
     else
     give_bonus(employee_id, 0);
    end case;
    end;*/
    

/*declare
display_total_sales PLS_INTEGER; --прстой цикл
procedure display_multiple_years(
  start_year_in IN PLS_INTEGER,
  end_year_in IN PLS_INTEGER
  )
  is
  l_current_year PLS_INTEGER := start_year_in;
  begin
    LOOP
      EXIT WHEN l_current_year > end_year_in;
      display_total_sales(l_current_year + 1);
      dbms_output.put_line(display_total_sales);
      end loop;
      end;*/
      

/*procedure display_multiple_years(  --цикл for числовой
  start_year_in IN PLS_INTEGER,
  end_year_in IN PLS_INTEGER
  )
  is
  begin
  for l_current_year in start_year_in .. end_year_in
   LOOP
      display_total_sales(l_current_year);
      end loop;
      end display_multiple_years;*/
      
/*  procedure display_multiple_years   --цикл for курсорной
  start_year_in IN PLS_INTEGER,
  end_year_in IN PLS_INTEGER
  )
  is
  begin
      for l_current_year in(
        select * from sales_data
        where year between start_year_in and end_year_in)
   LOOP
      display_total_sales(l_current_year + 1);
      end loop;
      end display_multiple_years;*/
      
/*  procedure display_multiple_years
  start_year_in IN PLS_INTEGER,
  end_year_in IN PLS_INTEGER
  )
  is
  l_current_year PLS_INTEGER := start_year_in;
  begin
  while (l_current_year <= end_year_in);
   LOOP
      display_total_sales(l_current_year);
      l_current_year := l_current_year + 1;
      end loop;
      end display_multiple_years;*/
      
      
  /*begin
  for loop_counter in 1 .. 10
   LOOP
      dbms_output.put_line(loop_counter);
      end loop;
      end;*/
      
       /* begin
  for loop_counter in reverse 1 .. 10
   LOOP
      dbms_output.put_line(loop_counter);
      end loop;
      end;*/
      
     /* begin
  for loop_counter in 1 .. 10
   LOOP
     if mod(loop_counter, 2) = 0 then
      dbms_output.put_line(loop_counter);
      end if;
      end loop;
      end; */
    
    
   /*begin
  for loop_counter in 1 .. 10
   LOOP
    dbms_output.put_line(loop_counter*2);
      end loop;
      end; */
      
/* declare
  cursor occupancy_cur is
  select user_id, user_name, created_by
  from fnd_user where user_name = trunc(sysdate);
  begin
for occupancy_rec in occupancy_cur
   LOOP
  update_bill (occupacny_rec.user_id, occupacny_rec.created_by);
  end loop;
  end;*/
  
 /* begin
    <<outer>>
    for l_index in 1..10
      loop
        dbms_output.put_line('Внешний счетчик = ' || to_char(l_index));
        
        <<inner>>
        for inner_index in 1..5
          loop
             dbms_output.put_line('Внутренний Счетчик = ' || to_char(inner_index));
             continue outer;
             end loop inner;
        end loop outer;
        end;*/
        
/*create or replace procedure proc1 IS
begin
  dbms_output.put_line('vipolnenie proc1');
  raise no_date_found;
  end;
      
create or replace procedure proc2 IS
l_str varchar(30) := 'vizov proc1';
begin
  dbms_output.put_line('l_str');
  proc1;
  end; 
  
create or replace procedure proc3 IS
begin
  dbms_output.put_line('vizov proc2');
  proc2;
  exception
    when others
      then
      dbms_output.put_line('Stek oshibki verhnego urovnya: ');
      dbms_output.put_line(dbms_utility.format_error_backtrace);   
  end; */ 
     
      

--cursor employee_cur 


/*declare
person per_all_people_f.person_id%type := '210';
last_n per_all_people_f.last_name%type;
begin
  select last_name
  into last_n
  from per_all_people_f
  where person_id = person;
  exception
    when no_data_found
      then
        dbms_output.put_line('Неизвестное имя: ' || person);
        when too_many_rows
          then
             xxpha_log('Нарушение целостности данных для: ' || person);
            raise;
            end; */
            
           
             
--select * from per_all_people_f;  
                  

/*package bookinfo_pkg
is
cursor bard_cur
is select person_id, last_name
from per_all_people_f
where upper(effective_start_date) like 'shakespeare%';
end bookinfo_pkg;

declare 
bard_rec bookinfo_pkg.bard_cur%rowtype;
begin
  if bookinfo_pkg.bard_cur%isopen
    then
      close bookinfo_pkg.bard_cur;
      end if;
      open bookinfo_pkg.bard_cur;
      loop 
        fetch bookinfo_pkg.bard_cur into bard_rec;
        exit when bookinfo_pkg.bard_cur%notfound
        or bookinfo_pkg.bard_cur%rowcount > 5;
        dbms_output.put_line(bookinfo_pkg.bard_cur%rowcount || ')'
        || bard_rec.last_name
        || ', издана в '
        || to_char(bard_rec.date_published, 'YYYY')
        );
        end loop;
        close bookinfo_pkg.bard_cur;
        end;*/
        
/*declare
begin
  tabcount number;
  if tabcount('employees') > 100
    then
      dbms_output.put_line('We are growing fast!');
      end if;
      end;*/

/*declare
type string_t is table of varchar2(200);

l_cv sys_refcursor;
l_placeholders string_t := string_t('dept_id');
l_values string_t := string_t('20');
l_names string_t;

function employee_names(
  where_in in varchar2,
  bind_variables_in in string_t,
  placeholders_in in string_t
  )
  
  return sys_refcursor
  is
  l_dyn_cursor number;
  l_cv sys_refcursor;
  l_dummy pls_integer;
  begin
    l_dyn_cursor := dbms_sql.open_cursor;
    dbms_sql.parse(l_dyn_cursor, 'select last_name from per_all_people_f where ' || where_in,
    dbms_sql.native
    );
    for indx in 1 .. placeholders_in.count
      loop dbms_sql.bind_variable(l_dyn_cursor,
        placeholders_in(indx),
        bind_variables_in(indx)
        );
        end loop;
        l_dummy := dbms_sql.execute(l_dyn_cursor);
        l_cv := dbms_sql.to_refcursor(l_dyn_cursor);
        dbms_sql.close_cursor(l_dyn_cursor);
        return l_cv;
        end employee_names;
        begin
          l_cv := employee_names('DEPARTMENT_ID := : dept_id', l_values, l_placeholders);
          fetch l_cv bulk collect into l_names;
          for indx in 1 .. l_names.count
            loop
              dbms_output.put_line(l_names(indx));
              end loop;
              close l_cv;
              end;*/
             
/*declare
function value_ok (date_in in date) return boolean is
  begin
    return date_in <= sysdate;
    end;
    
    function value_ok(number_in in number) return boolean is
      begin
        return number_in > 0;
        end;
        
        procedure value_ok(number_in in number) is
          begin
            if number_in > 0 then
              dbms_output.put_line(number_in || 'is ok!');
              else
                dbms_output.put_line(number_in || 'is not ok!');
                end if;
 end;*/
 
 /*declare
 procedure proc1 (n in pls_integer) is
   begin
     dbms_output.put_line('pls_integer version');
     end;
      procedure proc1 (n in number) is
        begin
          dbms_output.put_line('number version');
          end;
          begin
            proc1(1.1);
            proc1(1);
            end;*/
            

/*package boy employee_pkg
as
function fullname(
effective per_all_people_f.effective_start_date%type;
last_n per_all_people_f.last_name%type;
)
return fullname
is
begin
  return effective || '. ' || last_n;
  end;
  
  function fullname(employee_id_in in employee.employee_id%Type)
    return fullname_t
    is
    retval fullname_t;
    
begin
  select fullname(effective, last_n) into retval
  from per_all_people_f
  where employee_id = employee_id_in;
  
  return retval;
    exception
    when no_data_found
      then return null;
when too_many_rows then  xxpha_log;
end;
end employee.pkg;
            raise;
            end; */
 
/*trigger last_name
after insert or update
on employees
for each row
  begin
    check_date( :new.hire_date);
    check_email( :new.email);
    end*/
    
    
    
     create table delivery
    (delivery_id number,
    delivery_start date,
    delivery_end date,
    area_id number,driver_id number);  
    
    create table area
    (area_id number,
    area_desc varchar(30));
    
    create table driver
    (driver_id  
    
   
