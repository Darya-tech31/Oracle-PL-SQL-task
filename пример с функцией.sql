/*функцию в пакете котора по двум параметрам 
возвращает остаток деления первого параметра 
по модулю второго и пример её использования в запросе
, в качестве задания*/

create or replace package pkg is


      FUNCTION a (b number,
                  c number)
    RETURN NUMBER;
    
    
 end pkg;
/
create or replace package body pkg is


      FUNCTION a (b in number,
                  c in number)
    RETURN NUMBER is
     s1 number;
    begin
     s1 := mod(b, c);
    return s1;
    end a;
    
    
 end pkg;
 
/

select pkg.a(35, 15)
from dual;
