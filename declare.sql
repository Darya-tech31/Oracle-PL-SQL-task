DECLARE
    TYPE name_n IS RECORD(
        A NUMBER,
        B DATE,
        C VARCHAR2(100)
    );
    
    TYPE t_name_type IS TABLE OF name_n INDEX BY VARCHAR2(64); -- ��������� ���� t_name_type ���������� ��� ��������� name_n
        name_girl t_name_type; -- �������� name_girl ���� t_name_type
        
       l_row name_n;
        
BEGIN    

      name_girl('����').B := sysdate;
      name_girl('���').A := ln(10);
      name_girl('����').A := 3;
      name_girl('����').A := name_girl('���').A / name_girl('����').A;
       
      xxpha_log(TO_CHAR((name_girl('����').A), '9.9999'));
      xxpha_log('�������' || ' ' || TO_CHAR((name_girl('����').B), 'DD month YYYY'));
      
      name_girl('����') := l_row;
      xxpha_log('""'||name_girl('����').B||'""');
                     
END;
    
    
