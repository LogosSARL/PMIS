--------------------------------------------------------
--  Constraints for Table MYIMAGES_TBL
--------------------------------------------------------

  ALTER TABLE "PRJ"."MYIMAGES_TBL" ADD CONSTRAINT "MYIMAGES_TBL_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
