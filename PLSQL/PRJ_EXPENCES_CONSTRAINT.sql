--------------------------------------------------------
--  Constraints for Table PRJ_EXPENCES
--------------------------------------------------------

  ALTER TABLE "PRJ"."PRJ_EXPENCES" ADD CONSTRAINT "PRJ_EXPENCES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRJ"."PRJ_EXPENCES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "PRJ"."PRJ_EXPENCES" MODIFY ("CONTRACT_ID" NOT NULL ENABLE);
  ALTER TABLE "PRJ"."PRJ_EXPENCES" MODIFY ("EXPENCE_TYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "PRJ"."PRJ_EXPENCES" MODIFY ("DAY" NOT NULL ENABLE);
  ALTER TABLE "PRJ"."PRJ_EXPENCES" MODIFY ("AMOUNT" NOT NULL ENABLE);