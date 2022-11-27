

create or replace function a2(p1 NUMBER, p2 DATE) return date
is
   v_i1 NUMBER;

begin
  if p2 != sysdate then

     return sysdate;
  end if;


   
   a2.v_i1 := 1;
   
   return sysdate;
exception 
          when no_data_found then
            return NULL;
          when too_many_rows then
            return NULL;
          when others then
            return NULL;
end;
/*
create or replace procedure a21 
is
   v_i1 NUMBER;

begin
   a21.v_i1 := 1;

exception 
          when no_data_found then
            NULL;
          when too_many_rows then
            NULL;
          when others then
            NULL;
end;
*/
/
