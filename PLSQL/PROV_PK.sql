--------------------------------------------------------
--  DDL for Index PROV_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRJ"."PROV_PK" ON "PRJ"."FLOW_PROCESS_VARIABLES" ("PROV_PRCS_ID", "PROV_VAR_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
