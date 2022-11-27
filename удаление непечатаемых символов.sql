-- удалении непечатаемых символов -- регул€рные выражени€
/*update xxpha.xxpha_533_temp tm 
set tm.organization_code = regexp_replace( tm.organization_code, '(^[[:space:]|[:cntrl:]]+)|([[:space:]|[:cntrl:]]+$)', '' )
, tm.subinventory_code = regexp_replace( tm.subinventory_code, '(^[[:space:]|[:cntrl:]]+)|([[:space:]|[:cntrl:]]+$)', '' )
, tm.locator_name = regexp_replace( tm.locator_name, '(^[[:space:]|[:cntrl:]]+)|([[:space:]|[:cntrl:]]+$)', '' );

select *
from XXPHA.XXPHA_533_TEMP;

xxpha_to_number -- удалении непечатаемых символов (функци€) */
