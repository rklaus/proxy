CREATE OR REPLACE FUNCTION create_role_if_not_exists(rolename VARCHAR)
RETURNS BOOLEAN
AS
$create_role_if_not_exists$
DECLARE
BEGIN
  IF NOT EXISTS (
      SELECT *
      FROM   pg_catalog.pg_roles
      WHERE  rolname = rolename) THEN
    EXECUTE 'CREATE ROLE ' || quote_ident(rolename) || ' ;';
    RETURN FALSE;
  ELSE
    RETURN TRUE;
  END IF;
END;
$create_role_if_not_exists$
LANGUAGE PLPGSQL;
