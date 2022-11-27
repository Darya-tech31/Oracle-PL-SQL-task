  BEGIN
     execute immediate 'Create table xxpha.xxpha_09_staffs_temp1 as select * from xxpha.xxpha_09_staffs_temp';
  exception when others then
    null;
  END;
