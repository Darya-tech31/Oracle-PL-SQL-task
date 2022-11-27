<<dfg>>
declare

    v_i NUMBER;
    function a1 return number 
      is
       begin 
         return 1;
          end;

begin

    <<dfg1>>
    declare
        v_i NUMBER;  
        v_k DATE;      

    begin
            <<dfg2>>
            declare
                v_k1 DATE;

            begin
               
                v_k := sysdate;

            exception 
                      when no_data_found then
                        NULL;
                      when too_many_rows then
                        NULL;
                      when others then
                        NULL;
            end;

    exception 
              when no_data_found then
                NULL;
              when too_many_rows then
                NULL;
              when others then
                NULL;
    end;


    <<dfg3>>
    declare
        v_i1 NUMBER;

    begin
            <<dfg4>>
            declare
                v_i1 NUMBER;

            begin
                dfg3.v_i1 := 1;

            exception 
                      when no_data_found then
                        NULL;
                      when too_many_rows then
                        NULL;
                      when others then
                        NULL;
            end;

    exception 
              when no_data_found then
                NULL;
              when too_many_rows then
                NULL;
              when others then
                NULL;
    end;



exception 
          when no_data_found then
            v_i := -2;
           
            <<dfg5>>
            declare
                v_i1 NUMBER;

            begin
                dfg5.v_i1 := 1;

            exception 
                      when no_data_found then
                        NULL;
                      when too_many_rows then
                        NULL;
                      when others then
                        NULL;
            end;
            
          when too_many_rows then
            NULL;
          when others then
            NULL;
            raise;
end;
/
