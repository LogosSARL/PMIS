--------------------------------------------------------
--  Constraints for Table OPP_STATUS
--------------------------------------------------------

  ALTER TABLE "PRJ"."OPP_STATUS" ADD CONSTRAINT "OPP_STATUS_PK" PRIMARY KEY ("OPS_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRJ"."OPP_STATUS" MODIFY ("OPS_CODE" NOT NULL ENABLE);
