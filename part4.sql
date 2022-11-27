create or replace package ab as

function a2(p1 NUMBER, p2 DATE) return date;

end;
/
create or replace package body ab as

v_i12 date;



   procedure aa is
   v_i1 date;
  begin v_i1 := a2( 1, sysdate ); 
   end;

function a2(p1 NUMBER, p2 DATE) return date
is
   v_i1 NUMBER;


begin
  if p2 != sysdate then

     return sysdate;
  end if;

  aa;
   
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



begin
v_i12 := a2( 1, sysdate );
end;
/
show errors
