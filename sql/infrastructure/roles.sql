begin;
-- Object owner
create role dw_owner;

-- read only
create role enterprise_dw_read_only;

-- updateable
create role enterprise_dw_can_update;

commit;
