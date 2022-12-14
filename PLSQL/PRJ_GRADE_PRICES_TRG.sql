--------------------------------------------------------
--  DDL for Trigger PRJ_GRADE_PRICES_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PRJ"."PRJ_GRADE_PRICES_TRG" 
 BEFORE INSERT
 ON PRJ_GRADE_PRICES
 FOR EACH ROW
DECLARE
 v_seq number;
begin
if :new.id is null then
		select prj_GRADE_PRICES_seq.nextval into v_seq from dual;
:new.id := v_seq;
    end if;
end;
/
ALTER TRIGGER "PRJ"."PRJ_GRADE_PRICES_TRG" ENABLE;
