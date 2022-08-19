--------------------------------------------------------
--  Constraints for Table OPP_CONTACTS
--------------------------------------------------------

  ALTER TABLE "PRJ"."OPP_CONTACTS" ADD CONSTRAINT "OPP_CONTACTS_PK" PRIMARY KEY ("OCN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRJ"."OPP_CONTACTS" MODIFY ("OCN_ID" NOT NULL ENABLE);
