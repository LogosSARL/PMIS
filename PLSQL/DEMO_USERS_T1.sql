--------------------------------------------------------
--  DDL for Trigger DEMO_USERS_T1
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PRJ"."DEMO_USERS_T1" 
BEFORE
insert or update on "DEMO_USERS"
for each row
begin
:NEW.user_name := upper(:NEW.user_name);
end;
/
ALTER TRIGGER "PRJ"."DEMO_USERS_T1" ENABLE;
