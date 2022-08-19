--------------------------------------------------------
--  Constraints for Table NEXMO_SMS_RESPONSE
--------------------------------------------------------

  ALTER TABLE "PRJ"."NEXMO_SMS_RESPONSE" MODIFY ("RESPONSE_PK" NOT NULL ENABLE);
  ALTER TABLE "PRJ"."NEXMO_SMS_RESPONSE" ADD PRIMARY KEY ("RESPONSE_PK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
