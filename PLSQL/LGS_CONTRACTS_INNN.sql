--------------------------------------------------------
--  DDL for Index LGS_CONTRACTS_INNN
--------------------------------------------------------

  CREATE INDEX "PRJ"."LGS_CONTRACTS_INNN" ON "PRJ"."LGS_CONTRACTS" ("COMPANY_CODE", "CONTRACT_TYPE_ID", "CONTRACT_STAGE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;