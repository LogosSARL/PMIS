--------------------------------------------------------
--  Constraints for Table APEX$TEAM_DEV_FILES
--------------------------------------------------------

  ALTER TABLE "PRJ"."APEX$TEAM_DEV_FILES" MODIFY ("COMPONENT_ID" NOT NULL ENABLE);
  ALTER TABLE "PRJ"."APEX$TEAM_DEV_FILES" MODIFY ("COMPONENT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "PRJ"."APEX$TEAM_DEV_FILES" MODIFY ("FILENAME" NOT NULL ENABLE);
  ALTER TABLE "PRJ"."APEX$TEAM_DEV_FILES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRJ"."APEX$TEAM_DEV_FILES" ADD CONSTRAINT "WWV_VALID_ATDF_COMP_TY" CHECK (component_type in ('MILESTONE','FEATURE','BUG','FEEDBACK','TODO')) ENABLE;