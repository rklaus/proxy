/* included into load_fdw.sql */
insert into fdw_configurations
VALUES
/* begin configuration section */
/* Add FDWs definitions here. */
/* fdwname , has_extension, production_handler, production_validator, ci_handler, ci_validator */
 ('jdbc_fdw',      false , null, null, null, null)
, ('multicorn',    false, null, null, null, null)
, ('postgres_fdw', true, null, null, null, null)
, ('mysql_fdw',    true, null, null, 'mysql_handler', 'mysql_validator')
, ('null_fdw',    false, null, null,    null,null )
;
/* END configuration section */

--, ('multicorn',    false, null, null, null, null)
-- , ('multicorn',    true, null, null, 'multicorn_handler', 'multicorn_validator')
