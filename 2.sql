DECLARE
    TYPE t_list_name IS TABLE  OF VARCHAR2(100) INDEX BY PLS_INTEGER;
    l_name t_list_name;  
   
    procedure display_multiple_years( p_happy IN t_list_name)
    is -- = daclare (можно объявлять тип данные, данные какие будут использоваться
        i number;
    begin
         
     
/*       for i IN p_happy.FIRST .. p_happy.LAST
       LOOP
         if p_happy.exists(i) then
          xxpha_log(p_happy(i));
         end if;
       end loop;*/
       
      if p_happy is null or p_happy.first is null then 
           return;
       end if;
       
       i:=p_happy.first;
       
       LOOP
          if p_happy.exists(i) then
          xxpha_log(p_happy(i));
          end if;
          i:=p_happy.next(i);
          exit when i is null; -- условие завершения цикла
       end loop;       
    end display_multiple_years;
   
begin
     l_name (1) := 'Veva';
     l_name(2) := 'Chris';
     --l_name(3):= 'Steven';
     l_name(4):= 'Eli';
   display_multiple_years(l_name);
end;

