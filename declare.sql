DECLARE
    TYPE name_n IS RECORD(
        A NUMBER,
        B DATE,
        C VARCHAR2(100)
    );
    
    TYPE t_name_type IS TABLE OF name_n INDEX BY VARCHAR2(64); -- коллекции типа t_name_type примвается тип структуры name_n
        name_girl t_name_type; -- параметр name_girl типа t_name_type
        
       l_row name_n;
        
BEGIN    

      name_girl('Таня').B := sysdate;
      name_girl('Оля').A := ln(10);
      name_girl('Маша').A := 3;
      name_girl('Таня').A := name_girl('Оля').A / name_girl('Маша').A;
       
      xxpha_log(TO_CHAR((name_girl('Таня').A), '9.9999'));
      xxpha_log('Сегодня' || ' ' || TO_CHAR((name_girl('Таня').B), 'DD month YYYY'));
      
      name_girl('Таня') := l_row;
      xxpha_log('""'||name_girl('Таня').B||'""');
                     
END;
    
    
