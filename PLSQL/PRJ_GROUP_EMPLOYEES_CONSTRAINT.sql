--------------------------------------------------------
--  Constraints for Table PRJ_GROUP_EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "PRJ"."PRJ_GROUP_EMPLOYEES" ADD CONSTRAINT "PRJ_GROUP_EMPLOYEES_PK" PRIMARY KEY ("PGE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRJ"."PRJ_GROUP_EMPLOYEES" MODIFY ("PGE_ID" NOT NULL ENABLE);